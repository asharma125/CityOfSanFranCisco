trigger PopulateNewbrandDate on F_5_Report__c (before insert,before update)
 {
 
 for(F_5_Report__c f5reportobj:trigger.new)
 {
   if(Trigger.isinsert && 'New Brand'.equals(f5reportobj.Property_Status__c) )
   {
    f5reportobj.R_New_Brand_Date__c=system.today();
   }
   if(Trigger.isupdate && (f5reportobj.Property_Status__c!=trigger.oldmap.get(f5reportobj.id).Property_Status__c) && 'New Brand'.equals(f5reportobj.Property_Status__c))
   {
    f5reportobj.R_New_Brand_Date__c=system.today();
   }
   if((Trigger.isinsert && f5reportobj.Brand_Name_Formula__c!=null) || (Trigger.isupdate && f5reportobj.Brand_Name_Formula__c!=null &&(f5reportobj.Brand_Name_Formula__c!=trigger.oldmap.get(f5reportobj.id).Brand_Name_Formula__c) ))
   {
       f5reportobj.New_Brand__c=f5reportobj.Brand_Name_Formula__c;
   }
    if((Trigger.isinsert && f5reportobj.Make_New_Brand__c!=null) || (Trigger.isupdate && f5reportobj.Make_New_Brand__c!=null && (f5reportobj.Make_New_Brand__c!=trigger.oldmap.get(f5reportobj.id).Make_New_Brand__c) ))
   {
       f5reportobj.New_Brand__c=f5reportobj.Make_New_Brand__c;
   }
 
 }

}