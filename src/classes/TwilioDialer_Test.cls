@isTest
private class TwilioDialer_Test {

    private static testMethod void test1() {
        TwilioConfig__c TC = new TwilioConfig__c( Name = Label.Twilio_Config_CS_Name , AccountSid__c = 'AC6deb3669da9ab2814cf6c5904fa2416a', AuthToken__c = 'cd2f918f52074dac309ab797d2409b39' );
        insert TC;
        Account acc = new Account();
        acc.Name='fdgdfgdf';
        insert acc;
        Contact con=  new Contact();
        con.Email='test@test.com';
        con.LastName='test';
        con.AccountId=acc.id;
        con.MobilePhone = '919875894568';
        con.Contact_Verified_Date__c=system.today();
        insert con;
        
        Pagereference pr = Page.TwilioDialer;
        pr.getParameters().put('id',con.Id);
        Test.setCurrentPage(pr);
        TwilioDialer TD = new TwilioDialer();
        TD.CALL_FROM = '919875894568';
        TD.CALL_TO = 'CALL_TO';
        TD.CALLER_ID = 'CALLER_ID';
        TD.makeCall();
        TD.savenote();
        TD.task.Priority = 'In Progress';
        TD.task.Subject = 'Test';
        TD.task.ActivityDate = Date.today();
        TD.savetask();
        
        Property__c propertyobj= new Property__c();
        propertyobj.Name='test';
        propertyobj.R_S_History__c='update property';
        insert propertyobj;
        
        Space_Options__c space= new Space_Options__c();
        space.Property__c=propertyobj.id;
        space.Old_Signage__c='dfg';
        space.Space_Location__c='gfd';
        space.Floorwise_Area__c='g';
        space.Rent_Month__c=55;
        space.Available_For_Rent__c=true;
        space.ZSuits__c = '1,000 sft'; 
        space.DFS_Date__c=system.today();
        
        insert space;
        
        Ownership__c ow =  new Ownership__c();
        ow.Name = 'test';
        ow.Contact__c = con.Id;
        ow.Property__c = propertyobj.Id;
        
        
        insert ow;
        
        pr = Page.TwilioDialer;
        pr.getParameters().put('id',propertyobj.Id);
        Test.setCurrentPage(pr);
        TD = new TwilioDialer();
        TD.CALL_FROM = '919875894568';
        TD.CALL_TO = 'CALL_TO';
        TD.CALLER_ID = 'CALLER_ID';
        TD.makeCall();
        
        pr = Page.TwilioDialer;
        pr.getParameters().put('id',space.Id);
        Test.setCurrentPage(pr);
        TD = new TwilioDialer();
        TD.CALL_FROM = '919875894568';
        TD.CALL_TO = 'CALL_TO';
        TD.CALLER_ID = 'CALLER_ID';
        TD.makeCall();
        
        
    }

}