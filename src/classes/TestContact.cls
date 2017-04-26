@istest
public class TestContact
{
 public static testMethod void myUnitTest()
    {
    Account acc = new Account();
    acc.Name='fdgdfgdf';
    insert acc;
    Contact con=  new Contact();
        con.Email='test@test.com';
        con.LastName='test';
        con.AccountId=acc.id;
        con.Contact_Verified_Date__c=system.today();
        insert con;
        
        con.Contact_Verified_Date__c=system.today()-1;
        upsert con;
        }
        }