trigger UpdateSpace on Space_Options__c (before insert,before update) 
{
    Map<String, Schema.SObjectType> SchemaMap  = Schema.getGlobalDescribe() ;
    Schema.SObjectType sObjType = SchemaMap.get('Space_Options__c') ;
    Schema.DescribeSObjectResult ObjSchema = sObjType.getDescribe() ;
    Map<String,Schema.RecordTypeInfo> RTypeInfo = ObjSchema.getRecordTypeInfosByName();
    Id vacantspaceRecTypeId=RTypeInfo.get('SPACES').getRecordTypeId();
    set<string> brandnameset=new set<string>();
    map<string,BRAND_S__c> brandnamemap= new map<string,BRAND_S__c>(); 
    set<Id> setProp = new set<Id>();
    for(Space_Options__c spaceobj : Trigger.new)
    {
        
        setProp.add( spaceobj.Property__c);
        if( trigger.isUpdate){
            if( spaceobj.Ceiling_Ht_Ft__c != trigger.oldMap.get(spaceobj.Id).Ceiling_Ht_Ft__c ){
                spaceobj.Ceiling_Ht_1__c = spaceobj.Ceiling_Ht_Ft__c;
            }else if( spaceobj.Ceiling_Ht_1__c != trigger.oldMap.get(spaceobj.Id).Ceiling_Ht_1__c ){
                spaceobj.Ceiling_Ht_Ft__c = spaceobj.Ceiling_Ht_1__c;
            }
            
            if( spaceobj.Lift__c  != trigger.oldMap.get(spaceobj.Id).Lift__c){
                spaceobj.Lift_1__c = spaceobj.Lift__c;
            }else if( spaceobj.Lift_1__c != trigger.oldMap.get(spaceobj.Id).Lift_1__c ){
                spaceobj.Lift__c = spaceobj.Lift_1__c;
            }
            
        }
        if( trigger.isInsert){
            if( spaceobj.Ceiling_Ht_Ft__c != null ){
                spaceobj.Ceiling_Ht_1__c = spaceobj.Ceiling_Ht_Ft__c;
            }else if( spaceobj.Ceiling_Ht_1__c != null ){
                spaceobj.Ceiling_Ht_Ft__c = spaceobj.Ceiling_Ht_1__c;
            }
            if( spaceobj.Lift__c && !spaceobj.Lift_1__c){
                spaceobj.Lift_1__c = spaceobj.Lift__c;
            }else if( !spaceobj.Lift__c && spaceobj.Lift_1__c ){
                spaceobj.Lift__c = spaceobj.Lift_1__c;
            }
        }
        
        spaceobj.Global_Search_Assistant__c=null;
        if(spaceobj.Old_Signage__c!=null)
        {
            spaceobj.Global_Search_Assistant__c=spaceobj.Old_Signage__c;
        }
        if(spaceobj.Old_Signage__c!=null)
        {
        
            brandnameset.add(spaceobj.Old_Signage__c);
        }
        if(spaceobj.Last_Tenant__c!=null)
        {
            brandnameset.add(spaceobj.Last_Tenant__c);
        }
         if(spaceobj.Last_Tenant__c!=null)
        {
            spaceobj.Global_Search_Assistant__c+=', '+spaceobj.Last_Tenant__c;
        }
        if(spaceobj.Space_Location_1__c!=null)
        {
            spaceobj.Global_Search_Assistant__c+=', '+spaceobj.Space_Location_1__c;
        }
        if(spaceobj.Global_Search_Assistant__c!=null && spaceobj.Global_Search_Assistant__c.length()>255)
        {
             spaceobj.Global_Search_Assistant__c= spaceobj.Global_Search_Assistant__c.substring(0,255);
        }
   
        if(Trigger.isinsert && spaceobj.New_Signage__c!=null && spaceobj.RecordtypeId==vacantspaceRecTypeId)
        {
            spaceobj.Name=spaceobj.New_Signage__c;
             spaceobj.Signange_Updated__c=true;
        
        }
        if(spaceobj.Available_For_Rent__c)
        {
            string spacename='';
            if(spaceobj.Old_Signage__c!=null)
            {
                 spacename+=spaceobj.Old_Signage__c;
            }
            
            if(spaceobj.Property_No__c!=null)
            {
               spacename=spacename+'-'+spaceobj.Property_No__c;
            }
             
            if(spaceobj.Space_Location__c!=null)
            {
                spacename=spacename+'-'+spaceobj.Space_Location__c;
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
            if(spacename!=null)
            {
             spaceobj.Name=spacename;
            }
            
        
        }
        if(trigger.isupdate && Trigger.oldmap.get(spaceobj.id).New_Signage__c!=spaceobj.New_Signage__c && spaceobj.New_Signage__c!=null && (spaceobj.RecordtypeId==vacantspaceRecTypeId) )
        {
         spaceobj.Name=spaceobj.New_Signage__c;
         spaceobj.Signange_Updated__c=true;
        
        }
         if(trigger.isupdate && Trigger.oldmap.get(spaceobj.id).New_Lease_Commencement__c!=spaceobj.New_Lease_Commencement__c && spaceobj.New_Lease_Commencement__c!=null )
        {
        
         spaceobj.Update_Lease_Agreement__c=true;
        
        }
         if(trigger.isupdate && Trigger.oldmap.get(spaceobj.id).Update_Lease_Agreement__c && (!spaceobj.Update_Lease_Agreement__c) )
        {
            spaceobj.Current_Lease_Commencement__c=spaceobj.New_Lease_Commencement__c;
        
            spaceobj.Update_Lease_Agreement__c=false;
            spaceobj.New_Lease_Commencement__c=null;
        }
        if(trigger.isupdate && Trigger.oldmap.get(spaceobj.id).Signange_Updated__c && (!spaceobj.Signange_Updated__c) )
        {
            spaceobj.Last_Tenant__c=spaceobj.Old_Signage__c;
           spaceobj.Old_Signage__c=spaceobj.New_Signage__c;
           spaceobj.New_Signage__c=null;
            spaceobj.Signange_Updated__c=false;
           
        }
        if(trigger.isupdate && (Trigger.oldmap.get(spaceobj.id).Available_For_Rent__c!=spaceobj.Available_For_Rent__c) && (!spaceobj.Available_For_Rent__c) )
        {
            spaceobj.Name=spaceobj.Old_Signage__c;
        }
    }
    
    map<Id,Property__c> mapProp = new map<Id,Property__c>([Select Id, Property_Location__c from Property__c where Id IN: setProp]);
    for( Space_Options__c space : trigger.New ){
        if( mapProp.containsKey( space.Property__c )){
            space.Demo_Auto_Location1__c = mapProp.get( space.Property__c ).Property_Location__c ;
        }
    }

    if(!brandnameset.isempty())
    {
    
    for(BRAND_S__c brandobj:[select id,Bar__c,Name,Sub_Category__c from BRAND_S__c where Name IN:brandnameset])
    {
        brandnamemap.put(brandobj.Name,brandobj);
    }
    for(Space_Options__c spac:Trigger.new)
    {
        if(brandnamemap.containskey(spac.Old_Signage__c))
        {
            spac.Current_Tenant_Brand__c=brandnamemap.get(spac.Old_Signage__c).id;
            spac.Current_Tenant_Brand_Sub_Category__c=brandnamemap.get(spac.Old_Signage__c).Sub_Category__c;
            if(brandnamemap.get(spac.Old_Signage__c).Bar__c)
            {
                spac.Brand_Has_Bar__c=brandnamemap.get(spac.Old_Signage__c).Bar__c;
            }
        
        }
        if(brandnamemap.containskey(spac.Last_Tenant__c))
        {
            spac.Last_Tenant_Brand__c=brandnamemap.get(spac.Last_Tenant__c).id;
            spac.Last_Tenant_Brand_Sub_Category__c=brandnamemap.get(spac.Last_Tenant__c).Sub_Category__c;
        
        }
    
    }
    }

    if(Trigger.isinsert)
    {
    set<id> propertyidset= new set<id>();
    map<id,Property__c> propertymap= new map<id,Property__c>();
    for(Space_Options__c space:Trigger.new)
    {
        propertyidset.add(space.Property__c);
    }
    for(Property__c property:[select Id,R_S_History__c from Property__c where id IN:propertyidset])
    {
        propertymap.put(property.id,property);
    }
    for(Space_Options__c space:Trigger.new)
    {
        if(propertymap.containskey(space.Property__c))
        {
            space.R_S_History__c=propertymap.get(space.Property__c).R_S_History__c;
        }
    }
    }
    if(trigger.isupdate && Utility.isspacebeforeupdateable)
    {
   
        map<id,Space_Options__c> propertyspacemap= new  map<id,Space_Options__c>();
        set<id> spaceidset= new   set<id>();
        List<Space_Options__c> spaceupdate= new List<Space_Options__c>();
        for(Space_Options__c space:Trigger.new)
        {
    
            if(Trigger.oldmap.get(space.id).R_S_History__c!=space.R_S_History__c && space.R_S_History__c!=null)
            {
           
                propertyspacemap.put(space.Property__c,space);
                spaceidset.add(space.id);
                 
            }
        
        }
        for(Space_Options__c space:[select Id,R_S_History__c,Property__c from Space_Options__c where Property__c IN:propertyspacemap.keyset() AND ID NOT IN:spaceidset ])
        {
            if(propertyspacemap.containskey(space.Property__c))
            {
           
                space.R_S_History__c=propertyspacemap.get(space.Property__c).R_S_History__c;
                spaceupdate.add(space);
            }
        
        }
        if(!spaceupdate.isempty())
        {
            try
            {
            
                Utility.isspacebeforeupdateable=false;
                update spaceupdate;
            }
            catch(Exception e)
            {
            
            }
        }
    
    }


}