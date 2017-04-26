trigger Updatetask_requirement on Task (before insert,before update) 
{
    set<Id> reqIds = new set<Id>();
    for(Task taskobj:trigger.new)
    {
        string relatedtoId = taskobj.WhatId;
        
        if(relatedtoId!=null && 'a0I'.equals(relatedtoId.substring(0,3)))
        {
            reqIds.add(relatedtoId);
            taskobj.Requirement_Task__c=true;
        
        }
    }
    map<Id,Requirement__c> reqMap = new map<Id,Requirement__c>([select Id, Req_Status__c from Requirement__c where Id IN: reqIds]);
    for(Task taskobj : trigger.new)
    {
        string relatedtoId = taskobj.WhatId;
        
        if(relatedtoId!=null && 'a0I'.equals(relatedtoId.substring(0,3)))
        {
            if( reqMap.containsKey( relatedtoId ) ){
                taskobj.Open_Requirement__c = false;
                if( reqMap.get( relatedtoId ).Req_Status__c == 'In Progress' ){
                    taskobj.Open_Requirement__c = true; 
                }
            }
        }
    }

}