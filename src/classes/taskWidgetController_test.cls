@isTest
public class taskWidgetController_test
{
    public static testmethod void test1()
    {
        taskWidgetController twc = new taskWidgetController();
        String result = taskWidgetController.saveScratchNotes('Test notes');
        system.assertEquals(result,'Success');
        
        TwilioConfig__c tc = new TwilioConfig__c(name='Twilio Config', AccountSid__c='jjj', AuthToken__c='ttt');
        insert tc;
        
        Task t = new Task(Subject='Testing', Priority = 'Low', Status = 'In Progress');
        insert t;
        
        String result1 = taskWidgetController.saveTask('com','true', String.ValueOf(t.Id));
        system.assertEquals(result1,'Success');
        String result2 = taskWidgetController.saveTask('d1h','true', String.ValueOf(t.Id));
        system.assertEquals(result2,'Success');
        String result3 = taskWidgetController.saveTask('d2h','true', String.ValueOf(t.Id));
        system.assertEquals(result3,'Success');
        String result4 = taskWidgetController.saveTask('ntb','true', String.ValueOf(t.Id));
        system.assertEquals(result4,'Success');
        String duedate = String.valueof(date.today().month())+'/'+String.valueof(date.today().day())+'/'+String.valueof(date.today().year());
        String result5 = taskWidgetController.saveTask('due', duedate, String.ValueOf(t.Id));
        system.assertEquals(result5,'Success');
        
        String result6 = taskWidgetController.saveScratchNotes('test');
        system.assertEquals(result6,'Success');
        
        String result7 = taskWidgetController.saveScratchNotes('test');
        system.assertEquals(result7,'Success');
        
        String duedate2 = String.valueof(date.today().month())+'/'+String.valueof(date.today().day())+'/'+String.valueof(date.today().year());
        String result8 = taskWidgetController.saveMassEdit(t.id, duedate, 'High', 'my task', true, true, true, true, 'Property', 'Success' );
        system.assertEquals(result8,'Success');
        
        String result9 = taskWidgetController.TwilioCall(t.id, '9718250323' );
        String result10 = taskWidgetController.TwilioCall(t.id, '' );
        String result11 = taskWidgetController.TwilioCall('', '9718250323' );
        
        Account acc = new Account(name='Test acc');
        insert acc;
        String result12 = taskWidgetController.saveNewTask1( '' , Userinfo.getUserId(),'' , 'subject', 'mytask', '24/05/2015', 'status', 'taskType', 'priority', '', 'false', 'notes', acc.Id, 'Property' , 'On Job');
        
    }
}