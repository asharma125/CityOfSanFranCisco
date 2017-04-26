@isTest(seeAllData=true)
private class Test_TGRTaskNotesHistory{ 
        
Public static testMethod void tgr_TaskNotes_History(){
test.startTest();
    Account ac = new Account();
    ac.Name='Anupama';
     insert ac; 
    
    Task tk = new Task();
    tk.Whatid=ac.id;
    tk.Ownerid =userinfo.getUserID();
    tk.Status='In Progress';
    tk.Subject='Call';
    tk.Notes__c='Test';
    insert tk;
  test.StopTest();
}
Public static testMethod void tgr_TaskNotes_History1(){
test.startTest();
    Account ac = new Account();
    ac.Name='Anupama';
     insert ac; 
    
    Task tk = new Task();
    tk.Whatid=ac.id;
    tk.Ownerid =userinfo.getUserID();
    tk.Status='In Progress';
    tk.Subject='Call';
    tk.Description='';
     insert tk;
   test.StopTest();
}
}