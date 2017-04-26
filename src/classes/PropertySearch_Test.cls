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
private class PropertySearch_Test {

    static testMethod void testSpaceSearch() {
        Property__c p = new Property__c();
        p.Name = 'test prop';
        p.Latitude__c = 28.000;
        p.Longitude__c = 77.000;
        p.Location_new__c = 'Khan Market';
        p.Location_City_new__c = 'New Delhi';
        
        insert p;
        system.assertNotEquals(p.id, null);
        
        Space_Options__c s = new Space_Options__c();
        s.Property__c = p.Id;
        s.Available_For_Rent__c = true;
        s.Floor_Rent__c = 'UGF;LGF';
        s.ZSuits__c = '100 sft';
        s.Name = 'test space';
        s.DFS_Date__c = system.today();
        insert s;
        
        SpaceSearch_class SSC = new SpaceSearch_class();
        SSC.Prop_Temp.Location_City_new__c = 'New Delhi';
        SSC.Space_Temp.Available_For_Rent__c = true;
        
        SSC.getLocation();
        SSC.Space_Temp.Floor_Rent__c = 'UGF';
        SSC.Space_Temp.Available_For_Rent__c = true;
        SSC.Sp_location = '[Khan Market]';
        SSC.Space_Temp.ZSuits__c = '100 sft';
        SSC.Search_Space();
        SSC.Search_Space_Strict();
        SSC.Next();
        SSC.Back();
        SSC.refresh();
    }
     static testMethod void testGenerateSpacePdf() {
        Property__c p = new Property__c();
        p.Name = 'test prop';
        p.Latitude__c = 28.000;
        p.Longitude__c = 77.000;
        p.Location_new__c = 'Khan Market';
        p.Location_City_new__c = 'New Delhi';
        
        insert p;
        system.assertNotEquals(p.id, null);
        
        Space_Options__c s = new Space_Options__c();
        s.Property__c = p.Id;
        s.Available_For_Rent__c = true;
        s.Floor_Rent__c = 'UGF;LGF';
        s.ZSuits__c = '100 sft';
        s.Name = 'test space';
        s.DFS_Date__c = system.today();
        insert s;
        
        Pagereference pr = Page.generateSpacePdf;
        pr.getParameters().put('ids',s.Id);
        test.setCurrentpage(pr);
        GenerateSpacePdf GSP = new GenerateSpacePdf();
     }
        
}