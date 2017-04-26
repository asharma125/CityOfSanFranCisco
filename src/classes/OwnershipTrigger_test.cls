@isTest
public class OwnershipTrigger_test{
    static testMethod void testMethod1(){
        EndpointURL__c EU = new EndpointURL__c( Name ='TEst');
        insert EU;
        
        Account acc = new Account();
        acc.Name = 'Indiashowrooms';
        acc.Agent__c = true;
        acc.Investor__c = true;
        insert acc;
    
        Contact contactobj= new Contact ();
        contactobj.LastName='Ajay';
        contactobj.AccountId=acc.Id;
        contactobj.Email='test@test.com';
        insert contactobj;
        
        
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
        ow.Contact__c = contactobj.Id;
        ow.Property__c = propertyobj.Id;
        
        
        insert ow;
        
    
    }



}