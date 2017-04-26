public class ContactVF_myExtender extends SkyEditor2.Extender 
{
    Contact_VF_Rerender c;
    public ContactVF_myExtender(Contact_VF_Rerender inC){
        c=inC;
        t1=False;
        t2=False;
    }
    public boolean t1{get;set;}
    public boolean t2{get;set;}
    
    public PageReference updateRerender1(){
        t1=(c.record.Tenant__c==TRUE);
        return null;
    }
    
 public PageReference updateRerender2(){
        t2=(c.record.Tenant__c==TRUE);
        return null;  
}
}