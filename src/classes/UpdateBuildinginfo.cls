public Class UpdateBuildinginfo
{
    
    public static void updatebuildinginfo( map<string,List<Space_Options__c>> buildingnamespacelistmap)
    {
        List<Buildings_Info__c> buildinglist= new  List<Buildings_Info__c>();
        
        for(Buildings_Info__c building:[select Id,Description__c,Name from Buildings_Info__c where Name IN:buildingnamespacelistmap.keyset()])
        {
        //Khan Market Last Deals (Sun) description population starts
            if('Khan Market Last Deals (Sun)'.equals(building.Name))
            {
             string temp= building.Description__c;
                for(Space_Options__c space:buildingnamespacelistmap.get(building.Name))
                {
                    string description='\n'+'#'+ space.Property_No__c+' '+space.Space_Location_1__c+' '+space.Old_Signage__c;
                    if(space.Last_Lease_Broker__c!=null)
                    {
                       description+= ' done by '+space.Last_Lease_Broker__c;
                    }
                    if(space.Space_Last_Lease_Amount__c!=null)
                    {
                        description+=' @ Rs.'+space.Space_Last_Lease_Amount__c;
                    }
                    if(space.Current_Lease_Commencement__c!=null)
                    {
                     description+=' Lease Date -'+space.Current_Lease_Commencement__c.format();
                    }
                    description+='.';
                   
                     building.Description__c=description;
                      building.Description__c+='\n'+temp;
                    
                  
                }
            }
            //Khan Market Brand Sales Figures (Dolllar)


           if('Khan Market Brand Sales Figures (Dolllar)'.equals(building.Name))
            {
             string temp= building.Description__c;
                for(Space_Options__c space:buildingnamespacelistmap.get(building.Name))
                {

              
                    string description='\n'+'#'+space.Old_Signage__c;
                    if(space.Current_Brand_Sales_Figure__c!=null)
                    {
                       description+= ' does a sale of Rs '+space.Current_Brand_Sales_Figure__c;
                    }
                    
                    if(space.Property_No__c!=null)
                    {
                        description+=' from '+space.Property_No__c;
                    }
                    if(space.Space_Location_1__c!=null)
                    {
                     description+=', '+space.Space_Location_1__c;
                    }
                     if(space.Floorwise_Area__c!=null)
                    {
                     description+=', '+space.Floorwise_Area__c;
                    }
                    description+=' - '+system.today().format()+'.';
                  
                     building.Description__c=description;
                      building.Description__c+='\n'+temp;
                    
                  
                }
            }
            buildinglist.add(building);
        
        }
        
        if(!buildinglist.isempty())
        {
            try
            {
            upsert buildinglist;
            }
            catch(Exception e)
            {
            
            }
        }
    
    }
}