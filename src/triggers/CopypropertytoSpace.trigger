trigger CopypropertytoSpace on Property__c (after insert,after update)
 {
if(Utility.ispropertyupdateable)
{
Spaceupdate.updatespace(trigger.new);
}

}