public class Spaceupdate
{

public static void updatespace(List<Property__c> propertylist)
{
    map<Id,Property__c> propertymap= new map<Id,Property__c>();
    List<Space_Options__c> spacelist= new List<Space_Options__c>();
    for(Property__c property:propertylist)
    {
        propertymap.put(property.id,property);
    }
    for(Space_Options__c space:[select Id,Property__c,R_S_History__c from Space_Options__c where Property__c IN:propertymap.keyset()])
    {
        if(propertymap.containskey(space.Property__c))
        {
            space.R_S_History__c=propertymap.get(space.Property__c).R_S_History__c;
            spacelist.add(space);
        }
    }
    if(!spacelist.isempty())
    {
        try
        {
        Utility.isspaceupdateable=false;
            upsert spacelist;
        }
        catch(Exception e)
        {
        
        }
    
    }
}
}