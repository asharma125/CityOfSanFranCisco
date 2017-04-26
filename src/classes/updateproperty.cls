global class updateproperty
{
webservice static void updatebuilding_locality(string property_Id)
{
List<Property__c> property=[select Location_Sub_new__c,Building_Sale__c,Locality_Sale__c,Location_new__c from Property__c where id=:property_Id];
    if(!property.isempty())
    {
    property.get(0).Building_Sale__c=property.get(0).Location_Sub_new__c;
     property.get(0).Locality_Sale__c=property.get(0).Location_new__c;
     upsert property.get(0); 
    
    }
}
}