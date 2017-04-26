trigger Populatesubject on F_5_Report__c(before insert) 
{

    
    Set<Id>  spaceset= new set<id>();
    map<id,Space_Options__c> spacemap= new  map<id,Space_Options__c>();
    map<id,Ownership__c> ownershippropertymap= new  map<id,Ownership__c>();
    set<Id> propertyset= new set<Id>();
    
    for(F_5_Report__c f_sreportobj:Trigger.new)
    {
    
    spaceset.add(f_sreportobj.Space_Rent_Sale__c);
    }
     for(Space_Options__c space:[select Id,R_S_History__c,Space_Location_1__c,Property__c,Old_Signage__c,Property_No__c,Space_Location__c,Floorwise_Area__c,Rent_Month__c
                  from Space_Options__c where Id IN:spaceset ])
    {
        spacemap.put(space.id,space);
        propertyset.add(space.Property__c);
      
    }
    for(Ownership__c ownership:[select id,Contact__r.Id,Contact__r.DoNotCall,Contact__r.MobilePhone,Contact__r.Salutation,Contact__r.FirstName,Contact__r.LastName,Property__c,Name,Decision_Maker__c,Contact__c,Contact__r.Phone,Contact__r.Mobile_2__c,Contact__r.OtherPhone from Ownership__c where Property__c IN:propertyset AND Decision_Maker__c=:true ])
    {
        ownershippropertymap.put(ownership.Property__c,ownership);
    }
     for(F_5_Report__c f_sreportobj:Trigger.new)
    {
         if(spacemap.containskey(f_sreportobj.Space_Rent_Sale__c))
        {
            Space_Options__c spaceobj=spacemap.get(f_sreportobj.Space_Rent_Sale__c);
             string spacename='';
            if(spaceobj.Old_Signage__c!=null)
            {
                 spacename+=spaceobj.Old_Signage__c;
            }
             if(spaceobj.Property_No__c!=null)
            {
               spacename=spacename+'-'+spaceobj.Property_No__c;
            }
             
            if(spaceobj.Space_Location_1__c!=null)
            {
                spacename=spacename+'-'+spaceobj.Space_Location_1__c;
            }
             if(spaceobj.Floorwise_Area__c!=null)
            {
               spacename=spacename+'-'+spaceobj.Floorwise_Area__c;
            }
             if(spaceobj.Rent_Month__c!=null)
            {
                spacename=spacename+'-'+spaceobj.Rent_Month__c;
            }
            if(spacename!=null &&  spacename.length()>80)
            {
               spacename=spacename.substring(0,80);
            }
            if(spaceobj.R_S_History__c!=null && spaceobj.R_S_History__c.length()>2000)
            {
                f_sreportobj.Last_R_S_Comment__c=spaceobj.R_S_History__c.substring(0,2000);
            }
            else if(spaceobj.R_S_History__c!=null && spaceobj.R_S_History__c.length()<=2000)
            {
                 f_sreportobj.Last_R_S_Comment__c=spaceobj.R_S_History__c;
            }
             if(spacename!=null)
            {
             f_sreportobj.Name=spacename;
            }
            
            //owner name population
            if(ownershippropertymap.containskey(spaceobj.Property__c))
            {
                Ownership__c ownershipobj=ownershippropertymap.get(spaceobj.Property__c);
                string ownerName='';
                f_sreportobj.Owner__c=ownershipobj.Contact__r.Id;
                if(ownershipobj.Contact__r.Salutation!=null)
                {
                    ownerName=ownershipobj.Contact__r.Salutation;
                }
                if(ownershipobj.Contact__r.FirstName!=null)
                {
                     ownerName+= '.'+ownershipobj.Contact__r.FirstName;
                }
                 if(ownershipobj.Contact__r.LastName!=null)
                {
                     ownerName+=' '+ownershipobj.Contact__r.LastName;
                }
                if(ownerName!=null)
                {
                    f_sreportobj.Owner_Name__c=ownerName;
                }
                f_sreportobj.Dont_Call__c=ownershipobj.Contact__r.DoNotCall;
                if(ownershipobj.Contact__r.MobilePhone!=null)
                {
                     f_sreportobj.Owner_Contact_No__c=ownershipobj.Contact__r.MobilePhone;
                }
                else if(ownershipobj.Contact__r.Mobile_2__c!=null)
                {
                     f_sreportobj.Owner_Contact_No__c=ownershipobj.Contact__r.Mobile_2__c;
                }
                 else if(ownershipobj.Contact__r.Phone!=null)
                {
                     f_sreportobj.Owner_Contact_No__c=ownershipobj.Contact__r.Phone;
                }
            
            }
           if(spaceobj.Old_Signage__c!=null)
           {
            f_sreportobj.Old_Brand__c=spaceobj.Old_Signage__c;
           }
            
           
        
        }
      
    
   
       
    }
    
    
}