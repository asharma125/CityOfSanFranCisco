/** Trigger to Show Notes Data in Notes History fiels as a History for Task*******/
trigger TGR_TaskNotesHIstory on Task (before insert,before update) {
 list<Task> notehstry = new list<Task>(); 
 String timeZone = UserInfo.getTimeZone().getID();
 
Datetime GMTDate =DateTime.now();
String formatteddate=GMTDate.format('dd-MM-yy HH:mm:ss',timeZone);//format the GMT into the Local according to his TimeZone Key
System.debug('LOCAL  TIME ....'+Datetime.valueOfGmt(formatteddate));
/*Datetime GMTDate =DateTime.now();
String strConvertedDate =
GMTDate.format('dd/mm/yyyy HH:mm:ss',
'GMT+05:30');*/
   for(Task tk :trigger.new)
    {
      
         system.debug('**Notes**'+tk.Notes__c);
        if(tk.Notes__c!=null)
        {
           string str='';
            if(tk.Description!=null)
              {
               str=tk.Description;
              }
              system.debug('**Last modified Date'+formatteddate);
          // string s = UserInfo.getname()+' '+Datetime.valueOf(tk.lastmodifieddate)+' '+tk.Notes__c+'\n'+str;  
          string s = UserInfo.getname()+' '+formatteddate+' '+tk.Notes__c+'\n'+'\n'+str;
         
           tk.Description= s;
           notehstry .add(tk);         
           tk.Notes__c='';
        }
        if(Trigger.isupdate &&  tk.Description!=trigger.oldmap.get(tk.id).Description )
        {
            tk.Is_Note_History_Change__c=true;
        }
        else
        {
            tk.Is_Note_History_Change__c=false;
        }
    }
    
}