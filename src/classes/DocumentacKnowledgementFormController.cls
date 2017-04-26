Global class DocumentacKnowledgementFormController {
    
    public POD__c objPOD{get;set;}
    public String recordId{get;set;}
    public String contactMobile{set;get;}
    public String ownershipName{set;get;} 
    public Boolean showHide{get;set;}
    public id objParentId{get;set;}
    public String signatureBody {get;set;}
    String ownershipId;
    public DocumentacKnowledgementFormController(){
        showHide = true;
        ownershipId = ApexPages.currentPage().getParameters().containsKey('id')?ApexPages.currentPage().getParameters().get('id'):'';
        objPOD = new POD__c();
    }
    
    public void init(){
        if(ownershipId !=''){
            Ownership__c objOwnership = [select  id,name,Contact_Mobile__c from Ownership__c where id =:ownershipId];
            contactMobile = objOwnership.Contact_Mobile__c;
            ownershipName = objOwnership.name;
            objPOD.Ownership__c = objOwnership.id;
        }
        
    }
   
   
   public void saveSignature(){
      try{
           upsert objPOD; 
           List<Attachment> lstAttach = new List<Attachment>() ;
           if(signatureBody != null || signatureBody != ''){
             Attachment attch = new Attachment();
                attch.Body = EncodingUtil.base64Decode(signatureBody.substring(22, signatureBody.length()));
                attch.Name = 'ClientSignature.png';
                attch.parentId = objPOD.Id;
                lstAttach.add(attch);
            }               
           if(lstAttach.size() > 0){
                upsert lstAttach ;
           }
            showHide = false;
 
       }
       catch(Exception ex){
            System.debug('debug : - '+ex);
            
       
       }
   } 
    
}