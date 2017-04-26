@isTest(SeeAllData=true)
    private class TestCLS_Property_Image  
        {
     public static testMethod void CLS_Property_Image (){
       test.startTest();
     
        Property__c property= new Property__c();
           property.name='Property1';
           property.Space_Notes__c='Test';
       
           insert property;

     Attachment at=new Attachment();
        
        at.name='Image';
        at.body=blob.valueOf('2g3h23g23@@@');
        at.ParentId=property.id;
        insert at;    
 test.stoptest();

 ApexPages.StandardController controller1 = new ApexPages.StandardController(property);
     CLS_Property_Image up=new CLS_Property_Image(controller1 );
     up.UpdateImage();

}

}