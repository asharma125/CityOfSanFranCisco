trigger ToodledoTask on Task (after insert, after update) {
    if(Trigger.isInsert && !CreateToodledoTask.isApexContext){
       CreateToodledoTask.CreatToodle(trigger.newmap.keyset(),'insert');
    }
    if(trigger.isUpdate && !CreateToodledoTask.isApexContext)
        CreateToodledoTask.CreatToodle(trigger.newmap.keyset(),'update');
}