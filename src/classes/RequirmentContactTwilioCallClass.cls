public class RequirmentContactTwilioCallClass {
	TwilioRestClient client;
	public String phone1{get;set;}
	public String phone2{get;set;}
	public String phone3{get;set;}
	public String phone4{get;set;}
	public String phone {get;set;} 
	public String FromN{get;set;}
	Requirement__c req1;
	public boolean showClickToCall{get;set;}
	
	public RequirmentContactTwilioCallClass(Apexpages.StandardController std){
		Requirement__c req = new Requirement__c();
		req = (Requirement__c)std.getRecord();
		req1 = new Requirement__c();
		req1 = [select id,Contact__c,Contact_4__c,Contact_2__c,Contact_3__c,Contact__r.MobilePhone,Contact_4__r.MobilePhone,
			Contact_2__r.MobilePhone,Contact_3__r.MobilePhone from Requirement__c where Id =: req.Id];
		if(req1.Contact__c != null && req1.Contact__r.MobilePhone != null && req1.Contact__r.MobilePhone != ''){
			phone1 = req1.Contact__r.MobilePhone;
			phone1 = processPhoneNumber(phone1);
		}
		if(req1.Contact_2__c != null && req1.Contact_2__r.MobilePhone != null && req1.Contact_2__r.MobilePhone != ''){
			phone2 = req1.Contact_2__r.MobilePhone;
			phone2 = processPhoneNumber(phone2);
		}
		if(req1.Contact_3__c != null && req1.Contact_3__r.MobilePhone != null && req1.Contact_3__r.MobilePhone != ''){
			phone3 = req1.Contact_3__r.MobilePhone;
			phone3 = processPhoneNumber(phone3);
		}
		if(req1.Contact_4__c != null && req1.Contact_4__r.MobilePhone != null && req1.Contact_4__r.MobilePhone != ''){
			phone4 = req1.Contact_4__r.MobilePhone;
			phone4 = processPhoneNumber(phone4);
		}
		User U  = [select Id, ProfileId, Profile.Name, MobilePhone,Phone,Fax from User where Id =: Userinfo.getUserId()];//'919810075973';
		FromN = U.Phone;
		FromN = processPhoneNumber(FromN);
		
		if(Label.Enable_Twilio_For_Profiles.contains(u.Profile.Name)){
			showClickToCall = true;
		}else{
			showClickToCall = false;
		}
	}
	public String processPhoneNumber(String phNumber){
    	if(phNumber != null && phNumber != ''){
			phNumber = phNumber.replaceAll('[+]','');
			phNumber = phNumber.replace(' ','');
			if(phNumber.startswith('0')){
				phNumber = phNumber.replaceFirst('0','');
			}
			if(phNumber.length() == 10){
				phNumber = '91'+phNumber;
			}
		}
		return phNumber;
    }
	public void MakeCall(){
		String To = phone;
		String account = TwilioConfig__c.getInstance('Twilio Config').AccountSid__c;
        String token = TwilioConfig__c.getInstance('Twilio Config').AuthToken__c;
        Map<String,String> params = new Map<String,String> {
            'To'   => FromN,
            'From' => FromN,
            'Url' =>'http://rentedproperties.force.com/apex/GenerateTwiML?to='+To+'&from='+FromN+'&pid='+req1.id+'&oid='+userinfo.getUserId()
        };
        if(!Test.isRunningTest()){
	        client = new TwilioRestClient(account, token);
	        TwilioCall Call = client.getAccount().getCalls().create(params);
        }
    }
    
}