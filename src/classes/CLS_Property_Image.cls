public class CLS_Property_Image {
List<Attachment> attlst = new List<Attachment>();
//set<string> attach = new set<string>();
public property__c property;
public List<string> lstupd {get;set;}
string imageURL;
//string imagename;

    public CLS_Property_Image(ApexPages.StandardController controller) {
      property=(Property__c)controller.getRecord();
      lstupd= new List<string>();
      UpdateImage();
    }
  
  Public void UpdateImage(){
 /* for(string s: attach){ 
           
              system.debug('####'+s.contains('Image'));
              if(s.contains('image'))
              { 
               system.debug('####'+s);
                imagename=s;
              }
          }*/
  attlst = [select id,name,contenttype,parentid from attachment where parentid=:property.id];
      
    for(attachment att:attlst){
        
        /*** check whether content type of image******/
         System.debug('* **** *** ***'+att.contenttype);
        
         if((att.contenttype=='image/bmp'|| att.contenttype=='image/gif' || att.contenttype=='image/jpeg' || att.contenttype=='image/png' ||att.contenttype=='image/psd' || att.contenttype=='image/pspimage'|| att.contenttype=='image/thm' ||att.contenttype=='image/tif' || att.contenttype=='image/yuv')&& att.name.contains('Image')){
             imageURL='/servlet/servlet.FileDownload?file='+att.id; 
             lstupd.add(imageURL); 
         }
     }
     System.debug('* **** *** ***'+lstupd);
  }

}