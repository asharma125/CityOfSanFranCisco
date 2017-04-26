public class ToodledoAuthenticationClass {
	
	public static String ToodleAuth(){
		String returnedKey = Toodledo_Config__c.getValues('Toodledo config').Last_Used_Toodledo_key__c;
		Datetime Key_lastused_DT = Toodledo_Config__c.getValues('Toodledo config').Last_Used_Toodledo_key_date_Time__c;
		String UserId = Toodledo_Config__c.getValues('Toodledo config').User_Id__c;
        String token = Toodledo_Config__c.getValues('Toodledo config').App_Token__c;
        String AppId = Toodledo_Config__c.getValues('Toodledo config').App_Id__c;
        String password = Toodledo_Config__c.getValues('Toodledo config').Password__c;
        
		if(returnedKey != null && returnedKey != '' && Key_lastused_DT > system.now().addMinutes(-15) && Key_lastused_DT != null){
			//String md5Password = EncodingUtil.convertToHex(Crypto.generateDigest('MD5', Blob.valueOf(password)));
            //key = EncodingUtil.convertToHex(Crypto.generateDigest('MD5', Blob.valueOf(md5Password+token+returnedToken)));
			return returnedKey;
		}else{
			http h = new http();
	        httprequest req = new httprequest();
	        
	        if(UserId != null && token != null && AppId != null && password != null){
		        String sig = EncodingUtil.convertToHex(Crypto.generateDigest('MD5', Blob.valueOf(UserId+token)));
		        
		        String endpoint = 'http://api.toodledo.com/2/account/token.php?userid='+UserId+';appid='+AppId+';sig='+sig;
		        req.setEndpoint(endpoint);
		        req.setMethod('GET');
		        httpresponse res = new httpresponse();
		        if(!Test.isRunningTest()){
		        	res = h.send(req);
		        	System.debug('res '+res);
		        }
		        if(res.getStatusCode()== 200){
		        	String body = res.getBody();
		            if(body.contains('token')){
		                Map<String, Object> m =  (Map<String, Object>)JSON.deserializeUntyped(body);
		                String returnedToken = (String)m.get('token');
		                System.debug('returnedToken '+returnedToken);
		                
		                String md5Password = EncodingUtil.convertToHex(Crypto.generateDigest('MD5', Blob.valueOf(password)));
		                String key = EncodingUtil.convertToHex(Crypto.generateDigest('MD5', Blob.valueOf(md5Password+token+returnedToken)));
		                System.debug('key  '+key );
		                return key;
		            }else{
		                System.debug('res.getBody '+res.getBody());
		            }
		        }else{
		            System.debug('res.getBody '+res.getBody());
		        }
			}else{
				System.debug('Toodledo Config '+Toodledo_Config__c.getValues('Toodledo config'));
			}
		}
		return null;
	}
}