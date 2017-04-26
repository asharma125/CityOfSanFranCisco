public class Toodledo_Schedule_Class implements Schedulable{
	
	public void execute(SchedulableContext sc){
		Toodledo_Sync_Class.Toodledo_Sync();
	}
}