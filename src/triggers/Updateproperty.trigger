trigger Updateproperty  on Space_Options__c (after update) 
{
    if(Utility.isspaceupdateable)
    {
    map<id,Space_Options__c> spaceidmap = new map<id,Space_Options__c>();
    List<Property__c> propertylist= new List<Property__c>();
    for(Space_Options__c space: Trigger.new )
    {

        if(Trigger.isupdate && space.R_S_History__c!=Trigger.oldmap.get(space.id).R_S_History__c)
        {
            spaceidmap.put(space.Property__c,space);
        }
    }
    for(Property__c property:[select Id,R_S_History__c from Property__c where Id IN:spaceidmap.keyset()])
    {
        if(spaceidmap.containskey(property.id))
        {
            property.R_S_History__c=spaceidmap.get(property.id).R_S_History__c;
            propertylist.add(property);
        }
    
    }
    
    if(!propertylist.isempty())
    {
     try
     {
         Utility.ispropertyupdateable=false;
         upsert propertylist;
     }
     catch(exception e)
     {
     }
    
    }
    }
}