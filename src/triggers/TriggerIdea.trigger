trigger TriggerIdea on Idea ( before insert, before update ) {
    if(trigger.isInsert && trigger.isBefore ){
        for( Idea idea : trigger.new ){
            idea.Status = 'Active';
        }
    }
    if(trigger.isUpdate && trigger.isBefore ){
        for( Idea idea : trigger.new ){
            if( idea.Body != trigger.oldmap.get(idea.Id).Body ) {
                idea.Status = 'Active';
            }
            if( idea.Categories != trigger.oldmap.get(idea.Id).Categories ) {
                idea.Status = 'Active';
            }
            if( idea.Title != trigger.oldmap.get(idea.Id).Title ) {
                idea.Status = 'Active';
            }
        }
    }     
        
}