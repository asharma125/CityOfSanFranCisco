public class generateTwiML {
    public String FromN = '';
    public String To = '';
    String pid;
    String oid;
    public generateTwiML() {
        FromN = Apexpages.currentpage().getParameters().get('from');
        To = Apexpages.currentpage().getParameters().get('to');
        pid = Apexpages.currentpage().getParameters().get('pid');
        oid = Apexpages.currentpage().getParameters().get('oid');
    }
    public String getTwiML() {
        if(FromN != null && FromN != '' && To != null && To != ''){
            TwilioTwiML.Response res = new TwilioTwiML.Response();
            TwilioTwiML.Dial d = new TwilioTwiML.Dial(To);
            d.setcallerid(FromN);
            d.setHangupOnStar(true);
            
            String actionURI = Label.Public_Site_Base_URL;
            actionURI += '/TwilioCallLogTwiML';
            actionURI += '?from='+FromN;
            actionURI += '&amp;to='+To;
            actionURI += '&amp;cid='+FromN;
            actionURI += '&amp;pid='+pid;
            actionURI += '&amp;oid='+oid;
            system.debug('actionURI='+actionURI); 
            d.setAction(actionURI);
            
            d.setRecord(true); 
            res.append(d);
            return res.toXML();
            
        }
        return '';
    }

}