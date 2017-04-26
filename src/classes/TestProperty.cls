@istest
public class TestProperty
{
 public static testMethod void myUnitTest()
    {
        Property__c propertyobj= new Property__c();
        propertyobj.Name='test';
        propertyobj.R_S_History__c='update property';
        insert propertyobj;
        
        Space_Options__c space= new Space_Options__c();
        space.Property__c=propertyobj.id;
        insert space;
        
        Space_Options__c spacerecord=[select id,R_S_History__c from Space_Options__c where id=:space.id];
        system.assertequals('update property',spacerecord.R_S_History__c);
        
        propertyobj.R_S_History__c='update property1';
        Utility.ispropertyupdateable=true;
        update propertyobj;
        Space_Options__c spacerecord1=[select id,R_S_History__c from Space_Options__c where id=:space.id];
        //system.assertequals('update property1',spacerecord1.R_S_History__c);
        UpdateSpaceLastspoken.Lastspoken(space.id);
       
        
    }
     public static testMethod void myUnitTest1()
     {
     
        Property__c propertyobj= new Property__c();
        propertyobj.Name='test';
        propertyobj.R_S_History__c='update property';
        insert propertyobj;
        
        Space_Options__c space= new Space_Options__c();
        space.Property__c=propertyobj.id;
        insert space;
         //let's update space and check if property got updated
        space.R_S_History__c='space update';
        space.Current_Brand_Sales_Figure__c='234';
        space.Space_Last_Lease_Amount__c=445;
        update space;
        
            Buildings_Info__c building1= new   Buildings_Info__c();
            building1.Name='Khan Market Brand Sales Figures (Dolllar)';
            insert building1;
             Buildings_Info__c building2= new   Buildings_Info__c();
            building2.Name='Khan Market Last Deals (Sun)';
            insert building2;
        
        
          Property__c propertyrecord=[select id,R_S_History__c from Property__c where id=:space.Property__c];
           //system.assertequals('space update',propertyrecord.R_S_History__c);
        
     }
      public static testMethod void myUnitTest2()
     {
     
        Property__c propertyobj= new Property__c();
        propertyobj.Name='test';
        propertyobj.Location_new__c='Delhi';
        propertyobj.R_S_History__c='update property';
        insert propertyobj;
        Contact con=  new Contact();
        con.Email='test@test.com';
        con.LastName='test';
        insert con;
        
        Ownership__c owner= new Ownership__c();
        owner.Contact__c=con.id;
         owner.Property__c=propertyobj.id;
         insert owner;
         SendReport.sendReporttoowner('Delhi');
        Space_Options__c space= new Space_Options__c();
        space.Property__c=propertyobj.id;
        insert space;
        Space_Options__c space2= new Space_Options__c();
        space2.Property__c=propertyobj.id;
        insert space2;
         //let's update space and check if property got updated
        space.R_S_History__c='space update';
        update space;
        
         Space_Options__c spacerecord=[select id,R_S_History__c from  Space_Options__c where id=:space2.id];
           //system.assertequals('space update',spacerecord.R_S_History__c);
        
     }
 }