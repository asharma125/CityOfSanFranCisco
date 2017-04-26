trigger SendMail on Task (after insert, after update) 
{
    Map<string,User> userIdmap = new Map<string,User>();
    User userobj = null;
    map<Id,Task> tasknotifyIdsetmap= new  map<Id,Task>();
    map<Id,TaskFeed> taskfeedidmap = new  map<Id,TaskFeed>();

    for(User userobjins : [select Id, Name, Email, profile.Name from User])
    {
        userIdmap.put(userobjins.id, userobjins);
        if( userobjins.Name == 'Ajay Arora' && userobjins.profile.Name == 'System Administrator' )
        {
            userobj = userobjins;
        }
    }


    List<Messaging.SingleEmailMessage > maillist= new List<Messaging.SingleEmailMessage >();

    for(Task taskobj : Trigger.new)
    {

        if( (Trigger.isinsert && taskobj.Description != null) || 
            (Trigger.isupdate && (taskobj.Description != trigger.oldmap.get(taskobj.id).Description) ))
        {
            if(taskobj.Requirement_Task__c && taskobj.OwnerId != userobj.id )
            {
            
                string lastmodifiedby=null;
                if(userIdmap.containskey(taskobj.LastModifiedById))
                {
           
                    lastmodifiedby = userIdmap.get(taskobj.LastModifiedById).Name;
                }
                string subject= 'Notes Updated for Task '+ taskobj.Subject+ ' by ' +lastmodifiedby;
                string mailsubject='Notes Update for the task'+'<br></br>';
                mailsubject += taskobj.Subject+'<br></br>';
                mailsubject += '<b><u>'+'Note Update: '+'</u> </b>'+'<br></br>';
                mailsubject += taskobj.Description+'<br></br>';
                mailsubject += 'Update by: '+ lastmodifiedby+' on '+ taskobj.LastModifiedDate+'<br></br>';
                mailsubject += ' For details follow the link : '+'<a href="http://ap1.salesforce.com/'+taskobj.id+'">'+'Task link'+' </a>'  ;
                
                Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
                mail.setsubject(subject); 
                                        
                mail.setHtmlBody(mailsubject); 
                //Who you are sending the email to.  
                mail.settoAddresses(new String[] {userobj.Email}); 
                maillist.add(mail);
            }
        }
        if( Trigger.isupdate && (taskobj.User_Notified__c != trigger.oldmap.get(taskobj.id).User_Notified__c)
            && taskobj.User_Notified__c && taskobj.Notification_Count__c < 10 )
        {
            tasknotifyIdsetmap.put( taskobj.Id, taskobj);
        }
    }
    for(TaskFeed taskfeedobj : [select Id, ParentId, Body from TaskFeed where ParentId IN : tasknotifyIdsetmap.keyset() ORDER BY CreatedDate DESC])
    {
        taskfeedidmap.put(taskfeedobj.ParentId,taskfeedobj);
    } 

    for(Task taskemail : [select Id, Notes__c, Description, Owner.Email , CreatedBy.Email, Subject from Task where ID IN : tasknotifyIdsetmap.keyset()])
    {
        string mailsubject = 'Gentle Reminder for Task '+taskemail.Subject;
        String mailBody = ' Notes: '+taskemail.Description+'<br/><br/>';
        List<string> usermaillist= new List<string>();
        usermaillist.add( taskemail.Owner.Email );
        usermaillist.add( taskemail.CreatedBy.Email );

        if(taskfeedidmap.containskey(taskemail.id))
        {
            mailBody += taskfeedidmap.get(taskemail.id).Body;
        }
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        mail.setsubject(mailsubject); 
                                        
        mail.setHtmlBody(mailBody); 
        // Who you are sending the email to.  
        mail.settoAddresses(usermaillist); 
        maillist.add(mail);

}  
    if( !maillist.isempty() )
    {
        try
        {
            Messaging.sendEmail(maillist);
        }
        catch(Exception e)
        {
            system.debug( e.getMessage() );    
        }
    }
}