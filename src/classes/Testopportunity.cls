@istest
public class Testopportunity
{
    public static testMethod void myUnitTest()
    {
        Account acc= new Account();
        acc.Name='Indiashowrooms';
        insert acc;
        
        SmallList__c lists= new SmallList__c();
        lists.Name='Company';
        lists.Constitutional_Content__c='fdsfds,fdhgfd,gjh';
        insert lists;
        
        SmallList__c listp= new SmallList__c();
        listp.Name='Partnership';
        listp.Constitutional_Content__c='fdsfd,fd,s';
        insert listp;
        
         SmallList__c indilist= new SmallList__c();
        indilist.Name='Individual';
        indilist.Constitutional_Content__c='fdsfd,fd,s';
        insert indilist;
        
        SmallList__c HUF= new SmallList__c();
        HUF.Name='HUF';
        HUF.Constitutional_Content__c='fdsfd,fd,s';
        insert HUF;
        
        
        opportunity opp= new opportunity();
        opp.Name='test opp';
        opp.StageName='closed';
        opp.CloseDate=system.today();
        opp.AccountId=acc.id;
        opp.Landlord_Constitution__c='Company';
        opp.Tenant_Constitution__c='Company';
        opp.Generate_Master_List__c=true;
        opp.Second_Party__c='dgdf';
        //opp.Amount_to_be_Re_imbursed__c=877;
       // opp.Total_Registration_Charges__c=76;
        insert opp;
        opp.Landlord_Constitution__c='Partnership';
        upsert opp;
        
        opp.Landlord_Constitution__c='HUF';
        upsert opp;
        
        opp.Landlord_Constitution__c='Individual';
        upsert opp;
        
        opp.Tenant_Constitution__c='Partnership';
        upsert opp;
        
        opp.Tenant_Constitution__c='HUF';
        upsert opp;
        
        opp.Tenant_Constitution__c='Individual';
        upsert opp;
        
        
    }
}