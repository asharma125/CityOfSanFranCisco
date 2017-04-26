trigger UpdateRequirement on Shown_To__c (after insert,after update) 
{

    set<Id> requirementIdset= new  set<Id>();
    map<id,Requirement__c> requirementmap= new map<id,Requirement__c>();
    List<Requirement__c> requirementlist= new  List<Requirement__c>();
    
    for(Shown_To__c shownto:Trigger.new)
    {
        if(shownto.Requirement__c!=null){
        requirementIdset.add(shownto.Requirement__c);
        }
    }
    for(Requirement__c requirement:[select id,Deal_Marketing_Notes__c from Requirement__c where id IN:requirementIdset ])
    {
        requirementmap.put(requirement.id,requirement);
    }
    for(Shown_To__c shownto:Trigger.new)
    {
        if(Trigger.isinsert && requirementmap.containskey(shownto.Requirement__c))
        {
            Requirement__c requirementobj=requirementmap.get(shownto.Requirement__c);
            string dealmarketingnotes=requirementobj.Deal_Marketing_Notes__c;
            string updatedtext='';
            if(shownto.Next_Step__c!=null)
            {
                updatedtext+='\n'+shownto.Next_Step__c;
            }
            if(shownto.Intrest_Level__c!=null)
            {
                updatedtext+='\n'+shownto.Intrest_Level__c;
            }
            if(shownto.T_D_Notes__c!=null)
            {
                updatedtext+='\n'+shownto.T_D_Notes__c;
            }
            requirementobj.Deal_Marketing_Notes__c=updatedtext;
             requirementobj.Deal_Marketing_Notes__c+='\n'+dealmarketingnotes;
            
            requirementlist.add(requirementobj);
            
        }
        if(Trigger.isupdate && requirementmap.containskey(shownto.Requirement__c) &&
             ((trigger.oldmap.get(shownto.id).Next_Step__c!=shownto.Next_Step__c) || 
             (trigger.oldmap.get(shownto.id).Intrest_Level__c!=shownto.Intrest_Level__c) ||
             (trigger.oldmap.get(shownto.id).T_D_Notes__c!=shownto.T_D_Notes__c)))
        {
         Requirement__c requirementobj=requirementmap.get(shownto.Requirement__c);
         string dealmarketingnotes=requirementobj.Deal_Marketing_Notes__c;
            string updatedtext='';
            
            if((trigger.oldmap.get(shownto.id).Next_Step__c!=shownto.Next_Step__c))
            {
                updatedtext+='\n'+shownto.Next_Step__c;
            }
            if( (trigger.oldmap.get(shownto.id).Intrest_Level__c!=shownto.Intrest_Level__c))
            {
                updatedtext+='\n'+shownto.Intrest_Level__c;
            }
            if((trigger.oldmap.get(shownto.id).T_D_Notes__c!=shownto.T_D_Notes__c))
            {
                updatedtext+='\n'+shownto.T_D_Notes__c;
            }
            requirementobj.Deal_Marketing_Notes__c=updatedtext;
             requirementobj.Deal_Marketing_Notes__c+='\n'+dealmarketingnotes;
             requirementlist.add(requirementobj);
            
        
        }
    
    }
    if(!requirementlist.isempty())
    {
        upsert requirementlist;
    }

}