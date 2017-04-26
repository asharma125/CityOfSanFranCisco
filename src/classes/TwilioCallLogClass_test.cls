@isTest
public class TwilioCallLogClass_test {

    public static testmethod void test1(){
        Pagereference pr = Page.TwilioCallLogTwiML;
        pr.getParameters().put('from','919785938921');
        pr.getParameters().put('to','917777777727');
        pr.getParameters().put('DialCallStatus','completed');
        pr.getParameters().put('cid','asdfadsf');
        pr.getParameters().put('RecordingUrl','testtttt');
        pr.getParameters().put('DialCallDuration','15');
        pr.getParameters().put('pid','null');
        pr.getParameters().put('oid',userinfo.getuserId());
        Test.setCurrentPage(pr);
        
        TwilioCallLogClass tc=new TwilioCallLogClass();
        tc.getTwiML();
        tc.createTwilioCallLog();
        
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
        Space_Options__c space2= new Space_Options__c();
        space2.Property__c=propertyobj.id;
        insert space2;
        
        pr.getParameters().put('pid',propertyobj.id);
        tc=new TwilioCallLogClass();
        tc.getTwiML();
        tc.createTwilioCallLog();
        
        pr.getParameters().put('pid',space2.id);
        tc=new TwilioCallLogClass();
        tc.getTwiML();
        tc.createTwilioCallLog();
        
    }
    
}