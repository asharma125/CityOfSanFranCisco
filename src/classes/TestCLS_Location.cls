@isTest(SeeAllData=true)
    private class TestCLS_Location  
        {
     public static testMethod void CLS_Location(){
       test.startTest();
       Property__c prop = new Property__c();
       prop.Name='Test';
       prop.Prop_type__c='Retail';
       prop.Prop_Category__c='Hi-Street';
       prop.Location_Sub__c='Khan - Subway';
       prop.Location_City__c='New Delhi';
       prop.Location__c='Skt DLF Courtyard';
       
      insert prop;
   
     test.stopTest();
     ApexPages.StandardController controller1 = new ApexPages.StandardController(prop);
     CLS_Location up=new CLS_Location(controller1 );
     
     up.selectPropCat='Hi-Street';
     up.selectPropType='Retail';
     up.selectCity='New Delhi';
     up.GetCity();
     up.GetPropType();
     up.GetPropcat();
     up.GetLocation();
     up.Getlocationsub();
     up.MyEdit();
     up.MySave();
     up.MyCancel();
     
   }
  
   
 }