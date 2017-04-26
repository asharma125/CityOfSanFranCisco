public class TwilioHelperUtility {
	@future(callout=true)
	public static void sendSMS(Id RequirementId){
		Requirement__c req = [select Id, Status_Next_SMS_Number__c, Email_Status_Next_Step__c, Status__c, Next_Step__c from Requirement__c 
			where ID =: RequirementId] ;
		if( String.isNotBlank(req.Status_Next_SMS_Number__c)){
			String ACCOUNT_SID = TwilioConfig__c.getInstance('Twilio Config').AccountSid__c;
			String AUTH_TOKEN = TwilioConfig__c.getInstance('Twilio Config').AuthToken__c;
			
			//User U = [select Id, MobilePhone, Phone from USer where alias = 'AJ'];
			
			TwilioRestClient client = new TwilioRestClient(ACCOUNT_SID, AUTH_TOKEN);
			String body = 'Next Step: '+req.Next_Step__c+'\nStatus: '+req.Status__c;
			Map<String,String> properties = new Map<String,String> {
	            'To'   => req.Status_Next_SMS_Number__c,
	            'From' => '+12622222731',
	            'Body' => body
		    };
			TwilioMessage message = client.getAccount().getMessages().create(properties);
		}
	}
}