trigger Createfeed on Requirement__c (after insert, after update){
	
	if(trigger.new[0].Email_Status_Next_Step__c && ( trigger.isUpdate ? trigger.oldmap.get(trigger.new[0].Id).Email_Status_Next_Step__c == false : true ))
		TwilioHelperUtility.sendSMS(trigger.new[0].Id);
	
	list<FeedItem> feeditemlist= new list<FeedItem>();
	
    for(Requirement__c req : trigger.new){
    	if( String.isNotBlank(req.Deal_Marketing_Notes__c) && (trigger.isUpdate ? trigger.oldmap.get(req.Id).Deal_Marketing_Notes__c != req.Deal_Marketing_Notes__c : true) ){
	    	FeedItem post = new FeedItem();
	      	post.ParentId = req.id;
	      	post.Body = req.Deal_Marketing_Notes__c;
	      	post.CreatedById = userinfo.getuserid();
	      	feeditemlist.add(post );
		System.debug('This is the test debug');
    	} 
    }
    
    if(!feeditemlist.isEmpty()) {
        try{
            insert feeditemlist;
        }catch(Exception e){
        	system.debug('Error: '+e.getMessage());
        }
    }
}
