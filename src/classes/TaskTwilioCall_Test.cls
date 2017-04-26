/**
 * This class contains unit tests for validating the behavior of Apex classes
 * and triggers.
 *
 * Unit tests are class methods that verify whether a particular piece
 * of code is working properly. Unit test methods take no arguments,
 * commit no data to the database, and are flagged with the testMethod
 * keyword in the method definition.
 *
 * All test methods in an organization are executed whenever Apex code is deployed
 * to a production organization to confirm correctness, ensure code
 * coverage, and prevent regressions. All Apex classes are
 * required to have at least 75% code coverage in order to be deployed
 * to a production organization. In addition, all triggers must have some code coverage.
 * 
 * The @isTest class annotation indicates this class only contains test
 * methods. Classes defined with the @isTest annotation do not count against
 * the organization size limit for all Apex scripts.
 *
 * See the Apex Language Reference for more information about Testing and Code Coverage.
 */
@isTest
private class TaskTwilioCall_Test {

    static testMethod void myUnitTest() {
        Account acc = new Account(Name = 'test Acount', Type = 'Customer');
        insert acc;
        system.assertNotEquals(acc.id, null);
        Contact con = new Contact(LastName = 'Test Conatct',MobilePhone = '1234567890',Phone='0123456789',Brand_Handling__c = 'test',AccountId = acc.Id);
        insert con;
        system.assertNotEquals(con.id, null);
        Task t = new Task(OwnerId = Userinfo.getUserId(),whoid = con.Id, whatId = acc.Id,ActivityDate = system.today(),Priority = 'Low',Status = 'In Progress',Subject = 'Send Letter');
        insert t;
        system.assertNotEquals(con.id, null);
        TwilioConfig__c TC = new TwilioConfig__c();
        TC.Name = 'Twilio Config';
        TC.AccountSid__c = 'qqqqqquiiiuiippppp';
        TC.AuthToken__c = 'asdsadsadsaasfsafaf';
        insert TC;
        
        Requirement__c req = new Requirement__c(Name='test', Contact__c = con.Id);
        insert req;
        
        Apexpages.StandardController std1 = new Apexpages.StandardController(req);
        RequirmentContactTwilioCallClass RCTC = new RequirmentContactTwilioCallClass(std1);
        RCTC.phone = RCTC.FromN;
        RCTC.MakeCall();
        
        Apexpages.StandardController std = new Apexpages.StandardController(t);
        TaskTwilioCall TTC = new TaskTwilioCall(std);
        TTC.MakeCall();
    }
}