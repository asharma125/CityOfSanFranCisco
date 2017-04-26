public class UpdateBrandList
{
    public static void populatebrandlist(List<Brand_Contact_Role__c> brandcontactrolelist)
    {
    
        if(Utility.isbrandroleupdateable)
        {
        set<Id> brandIdset= new  set<Id>();
        Map<Id,Map<Id,string>> brandaccountbrandlistmap= new   Map<Id,Map<Id,string>>();
        Map<Id,string> clientbrandlistmap= null;
        map<Id,List<Brand_Contact_Role__c>> brandbrandcontrecrlistmap= new  map<Id,List<Brand_Contact_Role__c>>();
        List<Brand_Contact_Role__c> brandcontactlist=null;
        List<BRAND_S__c> brandlist= new  List<BRAND_S__c>();
        map<Id,Brand_Contact_Role__c> brand_brandcontactrolemap= new    map<Id,Brand_Contact_Role__c>();
        
        for(Brand_Contact_Role__c brandcontactrole:brandcontactrolelist)
        {
            brandIdset.add(brandcontactrole.NEW_BRAND__c);
            brand_brandcontactrolemap.put(brandcontactrole.NEW_BRAND__c,brandcontactrole);
        }
        
        for(Brand_Contact_Role__c brandcontact:[select Id,Notes__c,Brand_Relationship__c,NEW_BRAND__c,Company__c,Company__r.Brand_List__c,NEW_BRAND__r.Name from Brand_Contact_Role__c 
        where NEW_BRAND__c IN:brandIdset])
        {
            brandcontactlist=new  List<Brand_Contact_Role__c>();
            if(brandcontact.Brand_Relationship__c!='Franchisee')
            {
                clientbrandlistmap= new Map<Id,string>();
                
                if(brandaccountbrandlistmap.containskey(brandcontact.NEW_BRAND__c))
                {
                   clientbrandlistmap= brandaccountbrandlistmap.get(brandcontact.NEW_BRAND__c);
                }
                clientbrandlistmap.put(brandcontact.Company__c,brandcontact.Company__r.Brand_List__c);
                brandaccountbrandlistmap.put(brandcontact.NEW_BRAND__c,clientbrandlistmap);
            }
            if(brandbrandcontrecrlistmap.containskey(brandcontact.NEW_BRAND__c))
            {
                brandcontactlist=brandbrandcontrecrlistmap.get(brandcontact.NEW_BRAND__c);
            }
            brandcontactlist.add(brandcontact);
            brandbrandcontrecrlistmap.put(brandcontact.NEW_BRAND__c,brandcontactlist);
            
        
        }
        for(BRAND_S__c brand:[select id,Running_Restaurant_Takeover__c,Brands_List__c,Marketing_Notes__c from BRAND_S__c where ID IN:brandIdset])
        {
            if(brandaccountbrandlistmap.containskey(brand.id))
            {
                 brand.Brands_List__c='';
                for(string brandlistinaccount:brandaccountbrandlistmap.get(brand.id).values())
                {
                  brand.Brands_List__c+=brandlistinaccount+',';
                }
              
            }
            else
            {
                 brand.Brands_List__c=null;
            }
            if(brandbrandcontrecrlistmap.containskey(brand.id))
            {
                 string tempmarknote=brand.Marketing_Notes__c;
                 brand.Marketing_Notes__c='';
                 for(Brand_Contact_Role__c brndrole:brandbrandcontrecrlistmap.get(brand.id))
                 {
                     brand.Marketing_Notes__c+=brndrole.Notes__c+'\n';
                 }
                 brand.Marketing_Notes__c+='\n'+tempmarknote;
            
            }
             if(brand_brandcontactrolemap.containskey(brand.id))
            {
               brand.Running_Restaurant_Takeover__c =  brand_brandcontactrolemap.get(brand.id).Running_Restaurant_Takeover__c;
            }
           
            brandlist.add(brand);
        
        }
        if(!brandlist.isempty() )
        {
            try
            {
                Utility.isbrandupdateable=false;
                upsert brandlist;
            }
            catch(exception e)
            {
            }
            
        }
        }
    
    }
}