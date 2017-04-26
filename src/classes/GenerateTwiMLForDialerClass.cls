public class GenerateTwiMLForDialerClass{
    
    String Call_From;
    String Call_To;
    String Caller_Id;
    String ParentId;
    String OwnerId; 

    public GenerateTwiMLForDialerClass(){
        Call_From = Apexpages.currentpage().getParameters().get('from');
        Call_To = Apexpages.currentpage().getParameters().get('to');
        Caller_Id = Apexpages.currentpage().getParameters().get('cid');
        ParentId = Apexpages.currentpage().getParameters().get('pid');
        OwnerId = Apexpages.currentpage().getParameters().get('oid');
    }
    public String getTwiML(){
        if(String.isBlank(ParentId)){
            ParentId = '';
        }
        if(String.isBlank(OwnerId)){
            OwnerId = '';
        }
        TwilioTwiML.Response res = new TwilioTwiML.Response();
        if(String.isNotBlank(Caller_Id) && String.isNotBlank(Call_To)){
            TwilioTwiML.Dial d = new TwilioTwiML.Dial(Call_To);
            Call_To = Call_To.trim();
            Call_From = Call_From.trim();
            Caller_Id = Caller_Id.trim();
            String actionURI = Label.Public_Site_Base_URL;
            actionURI += '/TwilioCallLogTwiML';
            actionURI += '?from='+Call_From;
            actionURI += '&amp;to='+Call_To;
            actionURI += '&amp;cid='+Caller_Id;
            actionURI += '&amp;pid='+ParentId;
            actionURI += '&amp;oid='+OwnerId;
            system.debug('actionURI='+actionURI); 
            d.setAction(actionURI);
            d.setRecord(true);
            d.setCallerId(Caller_Id);
            d.setHangupOnStar(true);
            res.append(d);
            TwilioTwiML.Say say = new TwilioTwiML.Say(' Call Finished ');
            say.setVoice('woman');
            res.append(say);
        }else{
            TwilioTwiML.Say say = new TwilioTwiML.Say('Call From or Caller Id not provided, disconnecting call.');
            say.setVoice('woman');
            res.append(say);
        }
        return res.toXML();
    }
}