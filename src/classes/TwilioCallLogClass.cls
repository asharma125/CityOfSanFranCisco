public class TwilioCallLogClass {
    
    String Call_From;
    String Call_To;
    String Caller_Id;
    String DialCallStatus;
    String DialCallDuration;
    String RecordingUrl;
    String ParentId;
    String OwnerId;
    Boolean isSuccess;
    String saymessage;
    public TwilioCallLogClass(){ 
        Call_From = Apexpages.currentpage().getParameters().get('from');
        Call_To = Apexpages.currentpage().getParameters().get('to');
        Caller_Id = Apexpages.currentpage().getParameters().get('cid');
        DialCallStatus = Apexpages.currentpage().getParameters().get('DialCallStatus');
        RecordingUrl = Apexpages.currentpage().getParameters().get('RecordingUrl');
        DialCallDuration = Apexpages.currentpage().getParameters().get('DialCallDuration');
        ParentId = Apexpages.currentpage().getParameters().get('pid');
        OwnerId = Apexpages.currentpage().getParameters().get('oid');
        saymessage = '';
    }
    public String getTwiML(){
        TwilioTwiML.Response res = new TwilioTwiML.Response();
        saymessage = 'Call finished with status '+DialCallStatus;
        TwilioTwiML.Say say = new TwilioTwiML.Say(saymessage);
        res.append(say);
        return res.toXML();
    }
    public void createTwilioCallLog(){
        Twilio_Call_Log__c TCL = new Twilio_Call_Log__c();
        List<Space_Options__c> spaces=new List<Space_Options__c>();
        if(ParentId!=null && ParentId!='' && ParentId!='null' && String.isNotBlank(ParentId)){
            Id pid = ParentId;
            if(pid.getSobjectType() == Schema.Contact.SObjectType){
                TCL.Called_Person__c = pid;
            }
            if(pid.getSobjectType() == Schema.Requirement__c.SObjectType){
                TCL.Called_Requirement__c = pid;
            }else if(pid.getSobjectType() == Schema.Property__c.SObjectType){
                TCL.Property__c= pid;
               spaces= [select id from Space_Options__c where Property__c=:pid];
               if(spaces!=null && spaces.size()>0 && spaces[0]!=null){
                   TCL.Space__c= spaces[0].id;
               }
                
            }else if(pid.getSobjectType() == Schema.Space_Options__c.SObjectType){
                    TCL.Space__c= pid;
            }  
        }
        
        if(String.isNotBlank(OwnerId)){
            Id oid = OwnerId;
            if(oid.getSobjectType() == Schema.User.SObjectType){
                TCL.OwnerId = oid;
            }
        }
        if(String.isNotBlank(DialCallDuration)){
            if(DialCallDuration.isNumeric()){
                TCL.Call_Duration__c = Decimal.valueOf(DialCallDuration);
            }
        }
        TCL.Recording_URL__c = RecordingUrl;
        TCL.Call_Status__c = DialCallStatus;
        TCL.Caller_Id_N__c = Caller_Id;
        TCL.Call_From_N__c = Call_From;
        TCL.Call_To_N__c = Call_To;
        
        List<Twilio_Call_Log__c> lstTCL=new List<Twilio_Call_Log__c>();
        lstTCL.add(TCL);
        
        if(spaces!=null && spaces.size()>1){
            for(integer i=1; i<spaces.size();i++){
              Twilio_Call_Log__c TCL1=  TCL.clone(false, false, false, false);
              TCL1.Property__c=null;
              TCL1.Space__c=spaces[i].id;
               lstTCL.add(TCL1);
            }
        }
        
        try{
            insert lstTCL; 
        }catch(Exception ex){
            system.debug('Error: Twilio Call Log could not be inserted. '+ex.getMessage());
        }
    }
}