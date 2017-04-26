trigger updatebrandcontactrole on BRAND_S__c (after update) 
{
if(Utility.isbrandupdateable)
{
    map<Id,BRAND_S__c> brandidmapset= new map<Id,BRAND_S__c>();
    List<Brand_Contact_Role__c> brandcontactrolelist= new List<Brand_Contact_Role__c>();
//  Running_Restaurant_Takeover__c
 for( BRAND_S__c brands:Trigger.new)
 {
     brandidmapset.put(brands.id,brands);
 }
 
     for(Brand_Contact_Role__c brndrole:[select Id,Running_Restaurant_Takeover__c,NEW_BRAND__c from Brand_Contact_Role__c where NEW_BRAND__c IN:brandidmapset.keyset()])
     {
             if(brandidmapset.containskey(brndrole.NEW_BRAND__c))
             {
         
             brndrole.Running_Restaurant_Takeover__c=brandidmapset.get(brndrole.NEW_BRAND__c).Running_Restaurant_Takeover__c;
             brandcontactrolelist.add(brndrole);
             }
     }
     
     if(!brandcontactrolelist.isempty())
     {
         Utility.isbrandroleupdateable=false;
         upsert brandcontactrolelist;
     }
     }
}