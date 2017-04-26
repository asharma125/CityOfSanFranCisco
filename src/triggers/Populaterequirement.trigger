trigger Populaterequirement on Shown_To__c (before insert,before update) 
{
    for(Shown_To__c shown:Trigger.new)
    {
        if(shown.Requirement__c!=null)
        {
            shown.Requirement_2__c=shown.Requirement__c;
        }

    }

}