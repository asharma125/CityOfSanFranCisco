trigger createSpaceOwnership on Space_Options__c ( after insert ) {
    set<Id> propertyIds = new set<Id>();
    for(Space_Options__c space : trigger.new )
    {
        if( space.Property__c != null )
        {
            propertyIds.add(space.Property__c);
        }
    }
    map<Id,Property__c> propertyMap = new map<Id,Property__c>( [Select Id,(select Id, Name, Decision_Maker__c, Contact__c from Ownerships__r) from Property__c where Id IN: propertyIds ]);
    
    list<Space_Ownership__c> insertOwnerShip = new list<Space_Ownership__c>();
    
    for(Space_Options__c space : trigger.new )
    {
        if( space.Property__c != null )
        {
            if(propertyMap.containsKey( space.Property__c ))
            {
                for( Ownership__c ow : propertyMap.get(space.Property__c).Ownerships__r )
                {
                    Space_Ownership__c SW = new Space_Ownership__c(
                        Name = ow.Name,
                        Decision_Maker__c = ow.Decision_Maker__c,
                        Space__c = space.Id,
                        Contact__c = ow.Contact__c
                    );
                    insertOwnerShip.add(SW);
                }
            }
        }
    }
    if( !insertOwnerShip.isEmpty() )
    {
        insert insertOwnerShip;
    }
}