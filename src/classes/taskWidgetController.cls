global class taskWidgetController
{
    public String NOW{get;set;}
    public Task task{get;set;}
    public String newTaskReminder{get;set;}
     
    public taskWidgetController()
    { 
        NOW = string.valueof(system.now().format('yyyy-MM-dd\'T\'HH:mm:ss'));
        NOW += 'Z';
        system.debug(NOW);
        task = new Task();
    }
    
    @RemoteAction
    global static String saveScratchNotes(String notes) 
    {
        User u = new User(Id=userInfo.getUserId());
        u.ScratchPad_Notes__c = notes;
        try
        {
            update u;
            return 'Success';
        }
        catch(Exception e)
        {
            return e.getMessage();
        }
    }
    
    @RemoteAction
    global static String saveTask(String Field, String Value, String taskId) 
    {
        
        Task t = new Task(Id = Id.Valueof(taskId));
        if(Field == 'com')
        {
            if(Value == 'true')
            {
                t.Status = 'Completed';
            }
        }
        else if(Field == 'd1h')
        {
            if(Value == 'true')
            {
                t.Hide_for_1_hour__c = true;
            }
        }
        else if(Field == 'd2h')
        {
            if(Value == 'true')
            {
                t.Hide_for_2_hour__c = true;
            }
        }
        else if(Field == 'ntb')
        {
            if(Value == 'true')
            {
                t.Non_Turbo_Job__c = true;
            }
        }
        else if(Field == 'due')
        {
            list<String> DateVal= Value.split('/');
            t.ActivityDate = Date.newInstance(Integer.valueOf(DateVal[2]),Integer.valueOf(DateVal[0]),Integer.valueOf(DateVal[1]));
        }
        else if(Field == 'pri')
        {
            if( Value != '-Select-' )
            {
                t.Priority = Value ; 
            }
        }
        else if(Field == 'myT')
        {
            if( Value != '-Select-' )
            {
                t.X5_Tasks_before_12__c = Value ; 
            }
        }
        else if(Field == 'sts')
        {
            if( Value != '-Select-' )
            {
                t.Sub_Task_Sub__c = Value ; 
            }
        }
        else if(Field == 'trs')
        {
            if( Value != '-Select-' )
            {
                t.Task_Result__c = Value ; 
            }
        }
        try
        {
            update t;
            return 'Success';
        }
        catch(Exception e)
        {
            return e.getMessage();
        }
    }
    
    @RemoteAction
    global static String saveMassEdit(String taskIds, String dueDate, String priority, String myTasks, Boolean isComplete, Boolean isNonTurbo, Boolean hide1Hr, Boolean hide2Hr, String subTaskSub, String taskResult) 
    {
        if(!String.isBlank(taskIds))
        {
            List<Task> taskList = new List<Task>();
            List<String> taskIdList = new List<String>();
            taskIdList = taskIds.split(';');
            For(String taskId: taskIdList)
            {
                Task t = new Task(Id = taskId);
                if(!String.isBlank(dueDate))
                {
                    list<String> DateVal= dueDate.split('/');
                    t.ActivityDate = Date.newInstance(Integer.valueOf(DateVal[2]),Integer.valueOf(DateVal[0]),Integer.valueOf(DateVal[1]));
                }
                if(priority != '-Select-')
                {
                    t.Priority = priority;
                }
                if(subTaskSub != '-Select-')
                {
                    t.sub_task_sub__c = subTaskSub;
                }
                if(taskResult != '-Select-')
                {
                    t.task_result__c = taskResult;
                }
                if(myTasks != '-Select-')
                {
                    t.X5_Tasks_before_12__c = myTasks;
                }
                if(isComplete)
                {
                    t.Status = 'Completed';
                }
                if(isNonTurbo)
                {
                    t.Non_Turbo_Job__c = True;
                }
                if(hide1Hr)
                {
                    t.Hide_for_1_hour__c = true;
                }
                if(hide2Hr)
                {
                    t.Hide_for_2_hour__c = true;
                }
                taskList.add(t);
            }
            if(taskList.size()>0)
            {
                try
                {
                    update taskList;
                    return 'Success';
                }
                catch(Exception e)
                {
                    return e.getMessage();
                }
            }
            else
            {
                return 'Tasks not found.';
            }
        }
        else
        {
            return 'Tasks not found';
        }
    }
    @RemoteAction
    global static String TwilioCall(String pid, String To ) 
    {
        USER U = [SELECT ID, PHONE from USER WHERE ID =: USERINFO.getUSerId()];
        if( String.isNotBlank(pid) ){
            Task t = [select Id, WhoId from Task where Id =: pid ];
            if( String.isNotBlank(To) ) {
                To = formatPhoneNumber(To);
                if(To.length() == 10 ){
                    To = '91'+To;
                }
                if( To.length() > 12 ||  To.length() < 12 ){
                    return 'Please put country code prefixed 12 digit number';
                }
                if( String.isNotBlank(U.PHONE) ){
                    String FromN = formatPhoneNumber(U.PHONE);
                    
                    String account = TwilioConfig__c.getInstance('Twilio Config').AccountSid__c;
                    String token = TwilioConfig__c.getInstance('Twilio Config').AuthToken__c;
                    Map<String,String> params = new Map<String,String> {
                        'To'   => FromN,
                        'From' => FromN,
                        'Url' =>'http://rentedproperties.force.com/apex/GenerateTwiML?to='+To+'&from='+FromN+'&pid='+t.whoId+'&oid='+U.Id
                    };
                    if(!Test.isRunningTest()){
                        TwilioRestClient client = new TwilioRestClient(account, token);
                        TwilioCall Call = client.getAccount().getCalls().create(params);
                    }
                    return 'Calling ...'+To;
                }else{
                    return 'Put your verified number in user record phone field';
                }
            }else{
                return 'No number selected to call';
            }
        }else{
            return 'Task not selected Properly';
        }
    }
    public static String formatPhoneNumber(String phoneNumber)
    {
        String ph = '';
        if(String.isNotBlank(phoneNumber))
            ph = phoneNumber.replaceAll('[^\\d]', '');
        return ph;
    }
    
    @RemoteAction 
    global static String saveNewTask1( String Id , String owner, String Name, String subject, String mytask, String dueDate, String status, String taskType, String priority, String subTask, String nonturbo, String notes, String whatId, String subTaskSub, String taskResult ) {
        
        try
        {
            system.debug(dueDate); 
            system.debug('Id=='+Id);
            Task t = new Task (
                Id = String.isBlank(Id) ? null : Id,
                OwnerId = String.isBlank(owner) ? null : owner,
                WhoId = String.isBlank(Name)? null : Name,
                WhatId = String.isBlank(whatId)? null : whatId,
                Task_Result__c = String.isBlank(taskResult)? '' : taskResult,
                Sub_Task_Sub__c = String.isBlank(subTaskSub)? '' : subTaskSub,
                Subject = subject,
                X5_Tasks_before_12__c = mytask,
                Status = status,
                Task_Type__c = taskType,
                Priority = priority,
                Sub_Task__c = subTask,
                Non_Turbo_Job__c = Boolean.ValueOf(nonturbo),
                Notes__c = notes
            );
            if(!String.isBlank(dueDate))
            {
                if( dueDate.contains('-') ){
                    list<String> DateVal= dueDate.split('-');
                    t.ActivityDate = Date.newInstance(Integer.valueOf(DateVal[0]),Integer.valueOf(DateVal[1]),Integer.valueOf(DateVal[2]));
                }else if( dueDate.contains('/') ){
                    list<String> DateVal= dueDate.split('/');
                    t.ActivityDate = Date.newInstance(Integer.valueOf(DateVal[2]),Integer.valueOf(DateVal[1]),Integer.valueOf(DateVal[0]));
                }
            }
            system.debug('task=='+t);            
            upsert t;
            if( t.whatId != null ){
            	if( t.WhatId.getSObjectType() == Schema.Property__c.SObjectType){
            	    update new Property__c( Id = t.WhatId, R_S_Notes__c = t.Notes__c);
            	}
            	if( t.WhatId.getSObjectType() == Schema.Space_Options__c.SObjectType ){
            	    Space_Options__c s = [select Id, R_S_History__c from Space_Options__c where Id =: t.WhatId];
            	    s.R_S_History__c += '\n '+t.Notes__c;
            	    update s;
            	}
            }
            return 'Success';
        }
        catch(Exception e)
        {
            return e.getMessage();
        }
        
    }
    
}