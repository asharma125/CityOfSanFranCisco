trigger PopulateAccount on Brand_Contact_Role__c (before insert,before update) 
{
    set<Id> contactid= new set<Id>();
     set<Id> brandid= new set<Id>();
    Map<string,Contact> contactaccountmap = new Map<string,Contact>();
    map<string,BRAND_S__c> brandIdmap= new  map<string,BRAND_S__c>();

   
        for(Brand_Contact_Role__c brandroleobj:Trigger.new)
        {
        
            contactid.add(brandroleobj.Contact__c);
            brandid.add(brandroleobj.NEW_BRAND__c);
        }
        for(Contact contactobj:[select id,Contact_Verified_Date__c,AccountId,Title from Contact where Id IN:contactid])
        {
            contactaccountmap.put(contactobj.Id,contactobj);
        
        }
        for(BRAND_S__c brand:[select Id,Sub_Category__c from BRAND_S__c where ID IN:brandid])
        {
            brandIdmap.put(brand.id,brand);
        }
        for(Brand_Contact_Role__c brandroleobj:Trigger.new)
        {
            if(contactaccountmap.containskey(brandroleobj.Contact__c) && contactaccountmap.get(brandroleobj.Contact__c).AccountId!=null)
            {
                    brandroleobj.Company__c=contactaccountmap.get(brandroleobj.Contact__c).AccountId;
                    brandroleobj.Designation__c=contactaccountmap.get(brandroleobj.Contact__c).Title;
                    if(trigger.isinsert)
                    {
                    brandroleobj.Last_Verified_Date__c=contactaccountmap.get(brandroleobj.Contact__c).Contact_Verified_Date__c;
                    }
            }
            if(brandIdmap.containskey(brandroleobj.NEW_BRAND__c))
            {
                brandroleobj.Sub_Category__c=brandIdmap.get(brandroleobj.NEW_BRAND__c).Sub_Category__c;
            }
        
        }
    
    
   

}