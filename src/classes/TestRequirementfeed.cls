@istest
public class TestRequirementfeed
{
 public static testMethod void myUnitTest()
    {
    Requirement__c requirement= new Requirement__c();
    requirement.Deal_Marketing_Notes__c='fdgdfg dfg fd g';
    insert requirement;
    
    Shown_To__c shown= new Shown_To__c();
    shown.T_D_Notes__c=' test';
    shown.Next_Step__c='dffgf  df';
    shown.Intrest_Level__c=55;
    shown.Requirement__c=requirement.id;
    insert shown;
    
    shown.T_D_Notes__c='dfsg test';
    shown.Next_Step__c='dffgf  df dff';
    shown.Intrest_Level__c=54;
    update shown;
    
    
    
    }
    }