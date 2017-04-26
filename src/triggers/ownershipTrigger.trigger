trigger ownershipTrigger on Ownership__c (before insert, before update,after insert) {
    set<Id> propertyIds = new set<Id>();
    set<Id> spaceIds = new set<Id>();
    for( Ownership__c ow : trigger.new )
    {
        if( ow.Property__c != null )
        {
            propertyIds.add( ow.Property__c );
        }
    }
    if( trigger.isbefore )
    {
        map<Id,Property__c> propertyMap = new map<Id,Property__c>([select Id,Property_Location__c from Property__c where Id IN: propertyIds ]);
        for( Ownership__c ow : trigger.new ){
            if( propertyMap.containskey(ow.Property__c ) ){
                ow.Demo_Location_Auto__c = propertyMap.get( ow.Property__c ).Property_Location__c ;
            }
        }
    }
    if( trigger.isAfter && trigger.isInsert )
    {
        map<Id,Property__c> propertyMap = new map<Id,Property__c>([select Id,Property_Location__c, (select Id from Sale_Options__r) from Property__c where Id IN: propertyIds ]);
        list<Space_Ownership__c> insertSpaceOwnerships = new list<Space_Ownership__c>();
        for( Ownership__c ow : trigger.new ){
            if( propertyMap.containskey(ow.Property__c ) ){
                for( Space_Options__c space : propertyMap.get( ow.Property__c ).Sale_Options__r )
                {
                    insertSpaceOwnerships.add( new Space_Ownership__c( Contact__c = ow.Contact__c , Name = ow.Name , Space__c = space.Id) );
                }
            }
        }
        insert insertSpaceOwnerships;
    }
}