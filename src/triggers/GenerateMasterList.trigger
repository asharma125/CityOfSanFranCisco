trigger GenerateMasterList on Opportunity (before insert,before update) 

{
List<Opportunity> opportunitylist= new List<Opportunity>(); 
    for(Opportunity  opp:Trigger.new)
    {
        if(Trigger.isinsert && opp.Generate_Master_List__c)
        {
       
            opportunitylist.add(opp);
        }
        if(Trigger.isupdate && opp.Generate_Master_List__c)
        { 
        
            opportunitylist.add(opp);
        }
    }
    if(!opportunitylist.isempty())
    {
        populatemasterlist.updatelistfield(opportunitylist);
    }

}