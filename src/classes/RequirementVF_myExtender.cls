public class RequirementVF_myExtender extends SkyEditor2.Extender 
{
    Requirement_VF_Rerender c;
    public RequirementVF_myExtender(Requirement_VF_Rerender inC){
        c=inC;
        t1=False;
        t2=False;
 }
    public boolean t1{get;set;}
    public boolean t2{get;set;}
    
    public PageReference updateRerender1(){
        t1= (c.record.Stage__c =='Negotiation' && c.record.Req_Status__c=='In Progress');
        return null;
   }      
   	public PageReference updateRerender2(){
        t2= (c.record.Stage__c =='Negotiation/Expected Closure' && c.record.Req_Status__c=='In Progress');
        return null;
 
   
}
}