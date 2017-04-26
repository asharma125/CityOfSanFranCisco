public class updateCompany
{

    public static void updatecompanylist(set<id> companyIdset)
    {
     map<id,set<string>> companybrandcontactrolemap= new map<id,set<string>>();
      map<id,List<Brand_Contact_Role__c>> brandcontactrolemap= new map<id,List<Brand_Contact_Role__c>>();
    set<string> brandnameset=null;
    List<Brand_Contact_Role__c> brandlst=null;
    List<Account> acclist= new List<Account> ();
    
    for(Brand_Contact_Role__c brandcontact:[select Id,Brand_Category__c,NEW_BRAND__c,Company__c,NEW_BRAND__r.Name from Brand_Contact_Role__c where Company__c IN:companyIdset])
    {
        brandnameset= new  set<string>();
        brandlst= new  List<Brand_Contact_Role__c>();
        if(companybrandcontactrolemap.containskey(brandcontact.Company__c))
        {
            brandnameset=companybrandcontactrolemap.get(brandcontact.Company__c);
        }
        brandnameset.add(brandcontact.NEW_BRAND__r.Name);
        companybrandcontactrolemap.put(brandcontact.Company__c,brandnameset);
        
        if(brandcontactrolemap.containskey(brandcontact.Company__c))
        {
            brandlst= brandcontactrolemap.get(brandcontact.Company__c);
        }
        brandlst.add(brandcontact);
        brandcontactrolemap.put(brandcontact.Company__c,brandlst);
    
    }
    for(Account acc:[select Id,Business_Types__c,Brand_List__c from Account where ID IN:companyIdset])
    {
     string brandcategory=null;
        if(companybrandcontactrolemap.containskey(acc.id))
        {
            string brandname=null;
            for(string bname:companybrandcontactrolemap.get(acc.id))
            {
            
                if(brandname==null)
                {
                    brandname=bname;
                }
                else
                {
                brandname+=', '+bname;
                }
             }
             if(brandname!=null)
             {
              acc.Brand_List__c=brandname;
             }
        
        }
        else
        {
            acc.Brand_List__c=null;
        }
       
        if(brandcontactrolemap.containskey(acc.id))
        {
            map<string,string> dupemap= new  map<string,string>();
            for(Brand_Contact_Role__c brndcntctrole:brandcontactrolemap.get(acc.id))
            {
                if(!dupemap.containskey(brndcntctrole.Brand_Category__c))
                {
                    if(brandcategory==null)
                    {
                        brandcategory=brndcntctrole.Brand_Category__c;
                    }
                    else
                    {
                        brandcategory+=', '+brndcntctrole.Brand_Category__c;
                    }
                   dupemap.put(brndcntctrole.Brand_Category__c,brndcntctrole.Brand_Category__c);
                }
            }
            if(brandcategory!=null)
            {
                acc.Business_Types__c=brandcategory;
            }
        
        }
        else
        {
            acc.Business_Types__c=null;
        }
        acclist.add(acc);
    }
    try
    {
        upsert acclist; 
    }
    catch( Exception e)
    {
   
    }
    
    }
}