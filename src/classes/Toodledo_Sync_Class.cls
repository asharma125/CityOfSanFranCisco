public class Toodledo_Sync_Class {
	
	@future(callout=true)
	public static void Toodledo_Sync(){
		String key = ToodledoAuthenticationClass.ToodleAuth();
		long lastSyncRuntimeStamp = system.now().addMinutes(-10).getTime()/1000;
		long nowTimeStamp = system.now().getTime()/1000;
		 
		String Endpoint = 'http://api.toodledo.com/2/tasks/get.php?';
		String Body = 'key='+key+'&modafter='+lastSyncRuntimeStamp+'&fields=star,folder,tag,note,duedate,status,priority,duedatemod';
		String Responce = ToodledoCalloutClass.ToodledoCallout(Endpoint, Body);
		if(Responce == null)
			Responce = '[{"num":"1","total":"1"}]';
		list<ToodledoResponseClass> TRClist = (list<ToodledoResponseClass>)JSON.deserialize(Responce, list<ToodledoResponseClass>.class);
		list<Task> Tasklist = new list<Task>();
		for(ToodledoResponseClass TRC : TRClist){
			if(TRC.id != null && TRC.tag != null){
				if(TRC.tag.startsWith('00T') && TRC.tag.length() >= 18){
					system.debug(TRC.tag);
					Task t = new Task();
					String taskId = TRC.tag.subString(0,18);
					t.Id = taskId;
					if(TRC.duedate != null)
						t.ActivityDate = datetime.newInstance(TRC.duedate*1000).date();
					t.subject = TRC.title;
					
					if(TRC.note != null)
						t.Description = TRC.note; 
					if(TRC.priority == '0')
						t.Priority = 'Low';
					if(TRC.Priority == 'Normal')
						t.priority = 'Normal';           
					if(TRC.Priority == '2')
						t.priority = 'High';
					if(TRC.Priority == '3')
						t.priority = 'Top';
					if(TRC.completed != 0){
						t.status = 'Completed'; 
					}
					TaskList.add(t);
				}
			}
		}
		if(!Tasklist.isEmpty()){
			CreateToodledoTask.isApexContext = true;
			update Tasklist;
			system.debug(Tasklist);
		}
	}
}