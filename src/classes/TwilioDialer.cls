public class TwilioDialer {

    String ACCOUNT_SID;
    String AUTH_TOKEN;
    public String CALL_FROM {get;set;}
    public String CALLER_ID{get;set;}
    public String CALL_TO{get;set;}
    public String callNote{get;set;}
    public Id ParentId{get;set;}
    public Task task{get;set;}
    public String message{get;set;}
    public String NoteSaveMessage{get;set;}
    public String TaskCreateMessage{get;set;}
    public Boolean showNoteMessage{get;set;}
    public Boolean showTaskMessage{get;set;}
    public String msgColor{get;set;}
    public list<SelectOption> CallerIdOptions{get;set;}
    public list<SelectOption> CallToOptions{get;set;}
    public list<SelectOption> CallFromOptions{get;set;}
    public Boolean disablebutton{get;set;}
    public Boolean showAddNote{get;set;}
    public String show{get;set;}
    Contact con;
    User U;
    String ID1;
    public TwilioDialer(){
        TwilioConfig__c TC =  TwilioConfig__c.getValues(Label.Twilio_Config_CS_Name);
        ACCOUNT_SID = TC.AccountSid__c;
        AUTH_TOKEN = TC.AuthToken__c;
        callNote = '';
        NoteSaveMessage = '';
        TaskCreateMessage = '';
        showNoteMessage = false;
        showTaskMessage = false;
        disablebutton = false;
        system.debug(TC);
        task = new Task();
        task.Priority = 'High';
        showAddNote = false;
        CallerIdOptions = new list<SelectOption>();
        CallFromOptions = new list<SelectOption>();
        CallToOptions = new list<SelectOption>();
        ID1 = Apexpages.currentPage().getParameters().get('id');
        show = Apexpages.currentPage().getParameters().get('show');
        if( String.isBlank( show ) ){
            show = 'block';
        }
        U = [Select Id, Name, Phone, MobilePhone from user where id =: userinfo.getUserId()];
        if(String.isNotBlank(U.Phone)){
            CallFromOptions.add(new SelectOption(U.Phone,U.Phone));
        }
        TwilioRestClient client = new TwilioRestClient(ACCOUNT_SID, AUTH_TOKEN);
        if(!Test.isRunningTest()){
            TwilioAccount TA = client.getAccount();
            TwilioOutgoingCallerIdList callerIdlist = TA.getOutgoingCallerIds();
            List<TwilioOutgoingCallerId> cIds = callerIdlist.getPageData();
            for(TwilioOutgoingCallerId cid : cIds){
                system.debug('cid::'+cid.getPhoneNumber());
                if(cid.getPhoneNumber().contains(processPhoneNumber(U.Phone))){
                    CallerIdOptions.add(new SelectOption(cid.getPhoneNumber(),cid.getFriendlyName()));
                }
            }
        }
        system.debug('ID1 ::'+ID1);
        if( ID1 !=null && ID1 !='' && String.isNotBlank( ID1 ) )
            ParentId = ID1;
        if( ParentId != null && String.isNotBlank( ParentId ) )
            loadvalues();
    }
    public void loadvalues(){
        if(String.isNotBlank(ParentId)){
            if( ID1.startsWith( '003' ) ){
                con = [Select Id, Name, Phone, MobilePhone, Twilio_Call_Note__c from Contact where Id =: ParentId];
                CALL_TO = con.MobilePhone;
                showAddNote = true;
            }else if(ID1.startsWith( 'a0P' )){
            
                 List<Space_Ownership__c> lstSpaceOwnerShips=  [select id, Mobile__c, contact__r.name from Space_Ownership__c where Space__c=:ParentId];
                 Map<String, string > contactNumberMobileMap=new Map<String, string >(); 
                 Set<string> mobileNumbers=new Set<string>();
                 for(Space_Ownership__c ow: lstSpaceOwnerShips){
                     if(ow.Mobile__c!=null){
                          mobileNumbers.add(ow.Mobile__c);
                          if(ow.contact__r.name!=null)
                          contactNumberMobileMap.put(ow.Mobile__c, ow.contact__r.name);
                      }
                 }
                 if(mobileNumbers.size()>0){
                     List<String> mobileList =new List<String>(mobileNumbers);
                      CallToOptions.add(new SelectOption('','--Please select--'));
                     for(String ow: mobileList ){
                          CallToOptions.add(new SelectOption(ow,contactNumberMobileMap.get(ow)!=null ? contactNumberMobileMap.get(ow): '' ));
                     }
                     //CALL_TO = mobileList[0];
                 }    
             }else if(ID1.startsWith( 'a0O' )){
                 List<Ownership__c> lstOwnerShips=  [select id, Contact_Mobile__c, contact__r.name from Ownership__c where Property__c=:ParentId];
                  Map<String, string > contactNumberMobileMap=new Map<String, string >(); 
                 Set<string> mobileNumbers=new Set<string>();
                 for(Ownership__c ow: lstOwnerShips){
                     if(ow.Contact_Mobile__c!=null){
                          mobileNumbers.add(ow.Contact_Mobile__c);
                          if(ow.contact__r.name!=null)
                          contactNumberMobileMap.put(ow.Contact_Mobile__c, ow.contact__r.name);
                      }
                 }
                 if(mobileNumbers.size()>0){
                     List<String> mobileList =new List<String>(mobileNumbers);
                       CallToOptions.add(new SelectOption('','--Please select--'));
                     for(String ow: mobileList ){
                          CallToOptions.add(new SelectOption(ow,contactNumberMobileMap.get(ow)!=null ? contactNumberMobileMap.get(ow): '' ));
                      }
                     //CALL_TO = mobileList[0];
                 }
             
            }
            
        }
    }
    public void makeCall(){
        if(String.isNotBlank(CALL_FROM) && String.isNotBlank(CALL_TO) && String.isNotBlank(CALLER_ID)){
            TwilioRestClient client = new TwilioRestClient(ACCOUNT_SID, AUTH_TOKEN);
            CALL_FROM = CALL_FROM.remove(' ').trim();
            CALL_TO = CALL_TO.remove(' ').trim();
            CALLER_ID = CALLER_ID.remove(' ').trim();
            
            Map<String,String> params = new Map<String,String>();
            params.put('To',CALL_FROM);
            params.put('From',CALLER_ID);
            String URI = Label.Public_Site_Base_URL;
            URI += '/generatetwimlfordialer';
            URI += '?from='+CALL_FROM;
            URI += '&to='+CALL_TO;
            URI += '&cid='+CALLER_ID;
            URI += '&pid='+ParentId;
            URI += '&oid='+UserInfo.getUserId();
            params.put('Url',URI);
            if(!Test.isRunningTest()){
            system.debug('params::'+params);
                TwilioCall call = client.getAccount().getCalls().create(params);
            system.debug('call duration ::'+call.getDuration());
            system.debug('call sid::'+call.getSid());
                
            }
            disablebutton = false;
        }
        else{
            system.debug('call='+'in else');
        }
    }
    public void savenote(){
        try{
            if(ParentId.getsObjectType() == Schema.Contact.sobjecttype){
                if(String.isBlank(con.Twilio_Call_Note__c)){
                    con.Twilio_Call_Note__c = '';
                }
                con.Twilio_Call_Note__c += callNote+'\n';
                update con;
                NoteSaveMessage = '<font color="green"> Note Saved </font>';
                
            }
        }catch(Exception ex){
            NoteSaveMessage = '<font color="red">Error try again.'+ ex.getMessage()+'</font>';
        }
        showNoteMessage = true;
    }
    public void savetask(){
        try{
            task.OwnerId = Userinfo.getUserId();
            if( String.isNotBlank(ParentId)){
                if( ParentId.getsObjectType() == Schema.Contact.sobjecttype || ParentId.getsObjectType() == Schema.Lead.sobjecttype){
                    task.WhoId = ParentId;
                }else{
                    task.WhatId = ParentId;
                }
            }
            insert task;
            TaskCreateMessage = '<font color="green"> Task Created </font>';
        }catch(Exception ex){
            TaskCreateMessage = '<font color="red">Error try again.'+ ex.getMessage()+'</font>';
        }
        showTaskMessage = true;
    }
    public String processPhoneNumber(String phone){
        return phone.replaceAll('[^\\d]', ''); 
    }
}