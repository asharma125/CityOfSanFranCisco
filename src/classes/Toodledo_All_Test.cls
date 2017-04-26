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
private class Toodledo_All_Test {
	static testMethod void TaskInsertUpdate_Test() {
        Test.startTest();
        Toodledo_Config__c TC = new Toodledo_Config__c(Name = 'Toodledo config',Last_Used_Toodledo_key__c = 'qweqweqweer',
        	Last_Used_Toodledo_key_date_Time__c = datetime.now(),User_Id__c = 'hfdsfhdfh',App_Token__c='fdsdfdsf',App_Id__c='wewewewe',
        	Password__c= 'password');
        insert TC;
        
        Task t = new Task();
        t.ActivityDate = date.today();
        t.OwnerId = [Select Id from User where alias = 'AJ'].Id;
        System.AssertNotEquals(t.ownerId,null);
        t.Status = 'In-Progress';
        t.Priority = 'Top';
        t.Description = 'Note';
        
        insert t;
        system.assertNotEquals(t.Id, null);
        set<Id> tIds = new set<Id>();
        tIds.add(t.Id);
        ToodledoAuthenticationClass.ToodleAuth();
        String EndPoint = 'endpoint';
        String Body = 'body';
        ToodledoCalloutClass.ToodledoCallout(Endpoint, Body);
        ToodledoResponseClass TRC = new ToodledoResponseClass();
        //CreateToodledoTask.CreatToodle(tIds,'insert');
        Test.stopTest();
        
    }
    static testMethod void toodledo_Auth_Test() {
        Test.startTest();
        Toodledo_Config__c TC = new Toodledo_Config__c(Name = 'Toodledo config',User_Id__c = 'hfdsfhdfh',App_Token__c='fdsdfdsf',App_Id__c='wewewewe',
        	Password__c= 'password');
        insert TC;
        ToodledoAuthenticationClass.ToodleAuth();
        Test.stopTest();
        
    }
    static testMethod void toodledo_sync() {
        Test.startTest();
        Toodledo_Config__c TC = new Toodledo_Config__c(Name = 'Toodledo config',User_Id__c = 'hfdsfhdfh',App_Token__c='fdsdfdsf',App_Id__c='wewewewe',
        	Password__c= 'password');
        insert TC;
        Toodledo_Sync_Class.Toodledo_Sync();
        Toodledo_Schedule_Class TSC = new Toodledo_Schedule_Class();
        String jobID1 = system.schedule('Update Task from Toodledo test', '0 10 * * * ?', TSC);
        CronTrigger ct = [SELECT Id, CronExpression, TimesTriggered, NextFireTime FROM CronTrigger WHERE id = :jobID1];
        System.assertEquals('0 10 * * * ?', ct.CronExpression);
        Test.stopTest();
        
    }
    
}