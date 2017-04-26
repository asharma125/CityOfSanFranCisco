@istest
public class TestF5trigger
{
    public static testMethod void myUnitTest()
    {
        F_5_Report__c fsobj= new F_5_Report__c();
        fsobj.New_Brand__c = 'Addidas';
        fsobj.Owner_Name__c = 'Ajay';
        fsobj.Visiting_Card_Recieved__c = true;
        fsobj.Location__c = 'dfg';
        insert fsobj;
     
        BRAND_S__c brandobjnew1 = new BRAND_S__c();
        brandobjnew1.Name = 'Addidas';
        //insert brandobjnew1;
     
        BRAND_S__c brandobj = [select Id,Name from BRAND_S__c where Name=:fsobj.New_Brand__c limit 1];
        system.assertequals( brandobj.Name , 'Addidas' );
    
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
    
        acc.Agent__c = true;
        acc.Investor__c = true;
        acc.Tenant__c = true;
        acc.Vendor__c = true;
        upsert acc;
    
        BRAND_S__c brandobjnew = new BRAND_S__c();
        brandobjnew.Name='newbrand';
        insert brandobjnew;
    
        Brand_Contact_Role__c brandcontact= new Brand_Contact_Role__c();
        brandcontact.NEW_BRAND__c=brandobjnew.id;
        brandcontact.Contact__c=contactobj.id;
        insert brandcontact;
    
        Brand_Contact_Role__c brandrolefetch=[ select Id,Company__c from Brand_Contact_Role__c where Id =: brandcontact.id];
        system.assertequals(brandrolefetch.Company__c , acc.id);
        try
        {
        sendmailtoBCR.sendmail(brandrolefetch.id);
        }
        catch(Exception e)
        {
        
        }
    }
    
    /*public static testmethod void myunittest1()
    {
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
        
        F_5_Report__c fsobj= new F_5_Report__c();
        fsobj.New_Brand__c = 'Addidas';
        fsobj.Owner_Name__c='Ajay';
        fsobj.Location__c='dfg';
        fsobj.Space_Rent_Sale__c=space.id;
        insert fsobj;
        
        fsobj.Property_Status__c='Reno 50';
        update fsobj;
     
        Space_Options__c updatespace=[select Available_For_Rent__c from Space_Options__c where id=:space.id];
        //system.assertequals(updatespace.Available_For_Rent__c,false);
        fsobj.Property_Status__c='New Brand';
        fsobj.Reno_25_Date__c=system.today();
        fsobj.Last_R_S_Comment__c='fvsdf sdf sdf s';
        update fsobj;
        
        fsobj.Property_Status__c='Closed';
        update fsobj;
    }
    public static testmethod void myunittest2()
    {
        Property__c propertyobj= new Property__c();
        propertyobj.Name='test';
        propertyobj.R_S_History__c='update property';
        propertyobj.Location_Sub_new__c='test';
        propertyobj.Location_new__c='gdfgdfgd';
        insert propertyobj;
        
        Space_Options__c space= new Space_Options__c();
        space.Property__c=propertyobj.id;
        space.Old_Signage__c='dfg';
        space.Space_Location__c='gfd';
        space.Floorwise_Area__c='g';
        space.Rent_Month__c=55;
        space.Available_For_Rent__c = true;
        space.ZSuits__c = '1,000 sft';
        space.DFS_Date__c=system.today();
        insert space;
        
        updateproperty.updatebuilding_locality(propertyobj.id);
    }*/
}