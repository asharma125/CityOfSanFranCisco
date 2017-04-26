@isTest(SeeAllData=true)
    private class Testtgr_Notes_History 
        {
     public static testMethod void tgr_Notes_History(){
       test.startTest();
       
       Property__c pr = new Property__c();
       pr.name='Property1';
       pr.Space_Notes__c='Test';
       
       insert pr;
     test.stopTest();
     }  
     public static testMethod void tgr_Notes_History1(){
     
      test.startTest();
       Property__c pr = new Property__c();
       pr.name='Property1';
       pr.R_S_History__c='';
              
       insert pr;
     test.stopTest();
     
     }
     }