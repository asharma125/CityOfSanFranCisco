public class TaskTwilioCall {
	TwilioRestClient client;
    public String To { get; set; }
    public String FromN  {get;set;}
	
	public String phone{get;set;}
	public Task t2 {get;set;}
	public boolean showClickToCall{get;set;}
	
	public TaskTwilioCall(Apexpages.StandardController std){
		Task t = (task)std.getRecord();
		t2 = [select id, whoId, who.Phone from Task where Id =: t.id];
		string Id = t2.whoId;
		if(t2.whoId != null){
			if(Id.startswith('003')){
				phone = [select phone from Contact where Id =: t2.WhoId].phone;
			}else{
				phone = [select phone from Lead where Id =: t2.WhoId].phone;
			}
			
			if(phone != null && phone != ''){
				phone = phone.replaceAll('[+]','');
				phone = phone.replaceAll('[ ]','');
				system.debug(phone.startswith('0')+'phone.startswith');
				if(phone.startswith('0')){
					phone = phone.replaceFirst('0','');
				}
				if(phone.length() == 10){
					phone = '91'+phone;
				}
			}
			User U  = [select Profile.Name,MobilePhone,Phone,Fax from User where Id =: Userinfo.getUserId()];//'919810075973';
			FromN = U.Phone;
			if(FromN != null && FromN != ''){
				FromN = FromN.replaceAll('[+]','');
				FromN = FromN.replaceAll('[ ]','');
				system.debug(FromN.startsWith('0')+'FromN.startsWith');
				if(FromN.startsWith('0')){
					FromN = FromN.replaceFirst('0','');
				}
				if(FromN.length() == 10){
					FromN = '91'+FromN;
				}
			}
			To = phone;//'919810075973';
			if(Label.Enable_Twilio_For_Profiles.contains(U.Profile.Name)){
				showClickToCall = true;
			}else{
				showClickToCall = false;
			}
		}
	}
	public void MakeCall(){
		String account = TwilioConfig__c.getInstance('Twilio Config').AccountSid__c;
        String token = TwilioConfig__c.getInstance('Twilio Config').AuthToken__c;
        Map<String,String> params = new Map<String,String> {
            'To'   => FromN,
            'From' => FromN,
            'Url' =>'http://rentedproperties.force.com/apex/GenerateTwiML?to='+To+'&from='+FromN+'&pid='+t2.whoId+'&oid='+userinfo.getUserId()
        };
        if(!Test.isRunningTest()){
	        client = new TwilioRestClient(account, token);
	        TwilioCall Call = client.getAccount().getCalls().create(params);
        }
    }
}