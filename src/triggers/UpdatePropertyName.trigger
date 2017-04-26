trigger UpdatePropertyName on Space_Options__c (after insert,after update) 
{
 if(Utility.isspaceupdateable)
    {
     map<id,Space_Options__c> spaceidmap = new map<id,Space_Options__c>();
    List<Property__c> propertylist= new List<Property__c>();
    set<Id> propertyidset= new set<Id>();
    map<string,string> spacenamepropertyidmap= new map<string,string>();
     map<string,string> unavaliblespacenamepropertyidmap= new map<string,string>();
    map<string,string> spacepropertyidoldsignagemap= new map<string,string> ();
     map<string,string> spacepropertyidnewsignagemap= new map<string,string> ();
     List<Property__c> propertlst= new   List<Property__c>();
    map<string,List<Space_Options__c>> brandinfonamespacelistmap= new  map<string,List<Space_Options__c>>();
    List<Space_Options__c> spacelist= new List<Space_Options__c>();
    map<string,boolean> availableSpacemap=new  map<string,boolean>();
      /*property history updte start*/
      Map<String, Schema.SObjectType> sobjectSchemaMap = Schema.getGlobalDescribe();

        Schema.SObjectType sObjType = sobjectSchemaMap.get('Property__c') ;
        Schema.DescribeSObjectResult cfrSchema = sObjType.getDescribe() ;
        Map<String,Schema.RecordTypeInfo> RecordTypeInfo = cfrSchema.getRecordTypeInfosByName();
        Id masterrecordTypeId = RecordTypeInfo.get('PROPERTY MASTER').getRecordTypeId();
   
    for(Space_Options__c space: Trigger.new )
    {

        if(Trigger.isupdate && space.R_S_History__c!=Trigger.oldmap.get(space.id).R_S_History__c)
        {
            spaceidmap.put(space.Property__c,space);
        }
      
        if((Trigger.isinsert && space.Space_Last_Lease_Amount__c!=null) || (Trigger.isupdate && space.Space_Last_Lease_Amount__c!=Trigger.oldmap.get(space.id).Space_Last_Lease_Amount__c && space.Space_Last_Lease_Amount__c!=null))
        {
            spacelist= new List<Space_Options__c>();
            if(brandinfonamespacelistmap.containskey('Khan Market Last Deals (Sun)'))
            {
                spacelist=brandinfonamespacelistmap.get('Khan Market Last Deals (Sun)');
            }
            
            spacelist.add(space);
            brandinfonamespacelistmap.put('Khan Market Last Deals (Sun)',spacelist);
        }
         if((Trigger.isinsert && space.Current_Brand_Sales_Figure__c!=null) || (Trigger.isupdate && space.Current_Brand_Sales_Figure__c!=Trigger.oldmap.get(space.id).Current_Brand_Sales_Figure__c && space.Current_Brand_Sales_Figure__c!=null))
        {
             spacelist= new List<Space_Options__c>();
            if(brandinfonamespacelistmap.containskey('Khan Market Brand Sales Figures (Dolllar)'))
            {
                spacelist=brandinfonamespacelistmap.get('Khan Market Brand Sales Figures (Dolllar)');
            }
            
            spacelist.add(space);
            brandinfonamespacelistmap.put('Khan Market Brand Sales Figures (Dolllar)',spacelist);
        }
    }
    if(!brandinfonamespacelistmap.isempty())
    {
        UpdateBuildinginfo.updatebuildinginfo(brandinfonamespacelistmap);
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
   
    for(Space_Options__c spaceobj:Trigger.new)
    {
        propertyidset.add(spaceobj.Property__c);
        
    }
 
     List<AggregateResult> aggrlist=[select Property__c,Name name,Available_For_Rent__c Isavailrent,Available_For_Sale__c Isavailsale,Old_Signage__c oldsignage,Last_Tenant__c newsignage,count(Id) recordcount from Space_Options__c where  
            Property__c IN:propertyidset Group by Property__c,Name,Old_Signage__c,Last_Tenant__c,Available_For_Rent__c,Available_For_Sale__c ORDEr by Old_Signage__c,Name,Last_Tenant__c,Available_For_Rent__c,Available_For_Sale__c];
            
    for(AggregateResult aggr:aggrlist)
    {
      
       if(aggr.get('oldsignage')!=null)
       {
            if(spacepropertyidoldsignagemap.containskey((id)(aggr.get('Property__c'))))
            {
                string oldsignage=spacepropertyidoldsignagemap.get((id)(aggr.get('Property__c')));
                oldsignage+= ' , '+string.valueof(aggr.get('oldsignage'));
                 spacepropertyidoldsignagemap.put((id)(aggr.get('Property__c')),oldsignage);
            }
            else
            {
                spacepropertyidoldsignagemap.put((id)(aggr.get('Property__c')),string.valueof(aggr.get('oldsignage')));
            }
        }
        
        
        if(aggr.get('newsignage')!=null)
        {
        
             if(spacepropertyidnewsignagemap.containskey((id)(aggr.get('Property__c'))))
            {
                string newsignage=spacepropertyidnewsignagemap.get((id)(aggr.get('Property__c')));
                newsignage+= ' , '+string.valueof(aggr.get('newsignage'));
                 spacepropertyidnewsignagemap.put((id)(aggr.get('Property__c')),newsignage);
            }
            else
            {
                spacepropertyidnewsignagemap.put((id)(aggr.get('Property__c')),string.valueof(aggr.get('newsignage')));
            }
        }
        if(aggr.get('Isavailrent')!=null && aggr.get('Isavailsale')!=null && ((boolean)aggr.get('Isavailrent') ||(boolean)aggr.get('Isavailsale')))
        {
            if(spacenamepropertyidmap.containskey((id)(aggr.get('Property__c'))))
            {
                string spacename=spacenamepropertyidmap.get((id)(aggr.get('Property__c')));
                spacename+=','+(string)(aggr.get('name'));
                spacenamepropertyidmap.put((id)(aggr.get('Property__c')),spacename);
            }
            else
            {
                spacenamepropertyidmap.put((id)(aggr.get('Property__c')),(string)(aggr.get('name')));
            }
            
        }
          if(aggr.get('Isavailrent')!=null && aggr.get('Isavailsale')!=null && ((!(boolean)aggr.get('Isavailrent')) && (!(boolean)aggr.get('Isavailsale'))))
        {
            if(unavaliblespacenamepropertyidmap.containskey((id)(aggr.get('Property__c'))))
            {
                string spacename=unavaliblespacenamepropertyidmap.get((id)(aggr.get('Property__c')));
                spacename+=','+(string)(aggr.get('name'));
                unavaliblespacenamepropertyidmap.put((id)(aggr.get('Property__c')),spacename);
            }
            else
            {
                unavaliblespacenamepropertyidmap.put((id)(aggr.get('Property__c')),(string)(aggr.get('name')));
            }
            
        }
        if(aggr.get('Isavailsale')!=null && (boolean)aggr.get('Isavailsale'))
        {
            availableSpacemap.put((id)(aggr.get('Property__c')),True);
        
        }
    
    }
  
    for(Property__c propertyobj:[select Id,RecordtypeId,For_Sale__c,UnAvailable_Space__c,Available_Spaces__c,Property_Name__c,Name,Property_No__c,Location_new__c from Property__c where ID IN:propertyidset])
    {
        if(spacepropertyidoldsignagemap.containskey(propertyobj.id))
        {
            propertyobj.Name=spacepropertyidoldsignagemap.get(propertyobj.id);
        }
         if(spacepropertyidnewsignagemap.containskey(propertyobj.id))
        {
            propertyobj.Name+=' ('+spacepropertyidnewsignagemap.get(propertyobj.id)+')';
        }
        if(propertyobj.Property_No__c!=null)
        {
              propertyobj.Name+=' , '+propertyobj.Property_No__c;
        }
          if(propertyobj.Location_new__c!=null)
        {
              propertyobj.Name+=' , '+propertyobj.Location_new__c;
        }
        if(propertyobj.Name!=null)
        {
              propertyobj.Property_Name__c=Propertyobj.Name;
        }
        if(propertyobj.Name!=null && propertyobj.Name.length()>80 )
        {
             propertyobj.Name= propertyobj.Name.substring(0,80);
        }
        if(spacenamepropertyidmap.containskey(propertyobj.id))
        {
            propertyobj.Available_Spaces__c=spacenamepropertyidmap.get(propertyobj.id);
        }
        else
        {
            propertyobj.Available_Spaces__c=null;
        }
        if(unavaliblespacenamepropertyidmap.containskey(propertyobj.id))
        {
         propertyobj.UnAvailable_Space__c=unavaliblespacenamepropertyidmap.get(propertyobj.id);
        }
        else
        {
         propertyobj.UnAvailable_Space__c=null;
         
        }
        if(availableSpacemap.containskey(propertyobj.id))
        {
            propertyobj.For_Sale__c=true;
        }
        else
        {
             propertyobj.For_Sale__c=false;
        }
        
        
        propertlst.add(propertyobj);
    
    }
    if(!propertlst.isempty())
    {
    try
    {
         Utility.ispropertyupdateable=false;
        upsert propertlst;
    }
    catch(Exception e)
    {
    }
    }
   
}

}