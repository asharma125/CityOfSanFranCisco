public class ToodledoCalloutClass {
	
	public static String ToodledoCallout(String Endpoint, String Body){
		 
		Http h = new Http();
        HttpRequest req = new HttpRequest();
        req.setEndpoint(Endpoint);
        req.setMethod('POST');
        System.debug('body '+body);
        req.setBody(Body);
        HttpResponse res = new HttpResponse();
        if(!Test.isRunningTest()){
        	res = h.send(req);
        }
        if(res.getStatusCode() == 200){
        	system.debug('res1 '+res.getBody());
        	return res.getBody();
        }
		return null;
	}
}