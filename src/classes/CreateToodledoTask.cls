public class CreateToodledoTask {
	public static boolean isApexContext = false;
	@future(callout=true)
	public static void CreatToodle(set<Id> TaskIds, String Action){
		list<Task> tasklist = new list<task>();
		if(Action == 'update'){
			tasklist = [Select t.X5_Tasks_before_12__c, t.WhoId, t.WhoCount, t.WhatId, t.WhatCount, t.Type, t.Task_Type__c, t.Task_Result__c, 
				t.Task_Age__c, t.Subject, t.Sub_Task__c, t.Status, t.REA_Id__c, t.Priority, t.OwnerId, t.Notes__c, t.Mobile_Phone__c, t.Mansi_Actions__c,
				t.Job_Responsibility__c, t.IsClosed, t.Id, t.Description, t.DB_Activity_Type__c, t.ActivityDate, t.Toodledo_Id__c 
				From Task t where Id IN: TaskIds and Owner.alias = 'AJ' and Toodledo_Id__c != null and Toodledo_Id__c != ''];
		}else{
			tasklist = [Select t.X5_Tasks_before_12__c, t.WhoId, t.WhoCount, t.WhatId, t.WhatCount, t.Type, t.Task_Type__c, t.Task_Result__c, 
				t.Task_Age__c, t.Subject, t.Sub_Task__c, t.Status, t.REA_Id__c, t.Priority, t.OwnerId, t.Notes__c, t.Mobile_Phone__c, t.Mansi_Actions__c,
				t.Job_Responsibility__c, t.IsClosed, t.Id, t.Description, t.DB_Activity_Type__c, t.ActivityDate, t.Toodledo_Id__c 
				From Task t where Id IN: TaskIds and Owner.alias = 'AJ'];
		}
		
		System.debug('tasklist '+tasklist);
		if(!tasklist.isEmpty()){
			String tasks_Json_Obj = '';	
			for(Task t : Tasklist){
				String JSON_obj = '';
				ToodledoResponseClass TRC = new ToodledoResponseClass();
				
				TRC.duedatemod = '0';
				if(t.ActivityDate != null)
					TRC.duedate = datetime.newInstance(t.ActivityDate,Time.newInstance(18, 0, 0, 0)).getTime()/1000;
				else
					TRC.duedate = 0;
				TRC.folder = '0';
				TRC.star = '0';
				TRC.tag = t.id;
				TRC.title = t.subject;
				if(t.description != null)
					TRC.note = t.Description;
				TRC.modified = 0;
				if(t.Priority == 'Low')
					TRC.priority = '0';
				if(t.Priority == 'Normal')
					TRC.priority = '1';           
				if(t.Priority == 'High')
					TRC.priority = '2';
				if(t.Priority == 'Top')
					TRC.priority = '3';
				if(Action == 'update' && t.Toodledo_Id__c != null && t.Toodledo_Id__c != '')
					TRC.id = t.Toodledo_Id__c;
				else
					TRC.id = '';
				if(!t.IsClosed){
					TRC.status = '2';
					TRC.completed = 0;
				}else{
					TRC.completed = datetime.now().getTime()/1000;
				}
				JSON_obj = JSON.serialize(TRC);
				System.debug('JSON_obj '+JSON_obj);
				tasks_Json_Obj += JSON_obj+'%2C';
			}
			tasks_Json_Obj = tasks_Json_Obj.substring(0,tasks_Json_Obj.length()-3);
			System.debug('tasks_Json_Obj '+tasks_Json_Obj);
			tasks_Json_Obj = EncodingUtil.urlEncode(tasks_Json_Obj, 'UTF-8');
			System.debug('tasks_Json_Obj '+tasks_Json_Obj);
			String key = '';
			if(!Test.isRunningTest())
				key = ToodledoAuthenticationClass.ToodleAuth();
			System.debug('key '+key);
			
			String Body = 'key='+key+'&tasks=['+tasks_Json_Obj+']&fields=star,folder,tag,note,duedate,status,priority,duedatemod';
			System.debug('body '+body);
			String Endpoint = '';
			if(Action == 'insert'){
				Endpoint = 'http://api.toodledo.com/2/tasks/add.php?';
			}if(Action == 'update'){
				Endpoint = 'http://api.toodledo.com/2/tasks/edit.php?';
			}
			
			String res = ToodledoCalloutClass.ToodledoCallout(Endpoint,Body);
			if(res == null || res == '')
				res = '[{"test":"test"}]';     
			System.debug('res '+res);
			list<ToodledoResponseClass> TRClist = (list<ToodledoResponseClass>)JSON.deserialize(res, list<ToodledoResponseClass>.class);
			system.debug('TRC'+TRClist);
			list<task> uptlist = new list<task>();
			if(Action == 'insert'){
				for(ToodledoResponseClass TR : TRClist){
					if(TR.tag != null && TR.tag != ''){
						Task t = new Task(Id = TR.tag, Toodledo_Id__c = TR.id);
						uptlist.add(t);
					}
				}
				if(!uptlist.isEmpty()){
					isApexContext = true;
					update uptlist;
				}
			}
			if(!Test.isRunningTest()){
				Toodledo_Config__c TC = Toodledo_Config__c.getInstance('Toodledo config');
				if(TC.Last_Used_Toodledo_Key__c != key)
		        	TC.Last_Used_Toodledo_Key__c = key;
		        TC.Last_Used_Toodledo_key_date_Time__c = system.now();
		        update TC;
			}
		}
	}
}