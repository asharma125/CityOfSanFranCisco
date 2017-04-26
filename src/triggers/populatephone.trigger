trigger populatephone on Task (before insert,before update) 
{

set<Id> contactid= new set<Id>();
map<Id,Contact> contactmap= new map<Id,Contact>();
    for(Task taskobj:Trigger.new)
    {

        if(taskobj.Whoid!=null && string.valueof(taskobj.whoid).substring(0,3)=='003')
        {
            contactid.add(taskobj.Whoid);
        }
    }

    for(Contact con:[select Id,Mobile_2__c,MobilePhone from Contact where ID IN:contactid])
    {
        contactmap.put(con.id,con);
    }
    
    for(Task taskobj:Trigger.new)
    {
        if(contactmap.containskey(taskobj.Whoid))
        {
            taskobj.Mobile_Phone__c=contactmap.get(taskobj.Whoid).Mobile_2__c;
        }
        else
        {
        taskobj.Mobile_Phone__c=null;
        }
    
    }

}