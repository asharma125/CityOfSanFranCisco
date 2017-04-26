/** Trigger to Show Notes Data in Notes History fiels as a History*******/

trigger tgr_Notes_History on Property__c (before insert,before update) 
{
   list<Property__c> notehstry = new list<Property__c>();  
   set<string> locationset= new set<string>();
   map<string,Location__c> locationmap= new  map<string,Location__c>();
   String timeZone = UserInfo.getTimeZone().getID(); 
Datetime GMTDate =DateTime.now();
String formatteddate=GMTDate.format('dd-MM-yy HH:mm:ss',timeZone);//format the GMT into the Local according to his TimeZone Key
System.debug('LOCAL  TIME ....'+Datetime.valueOfGmt(formatteddate));
  Map<String, Schema.SObjectType> sobjectSchemaMap = Schema.getGlobalDescribe();

        Schema.SObjectType sObjType = sobjectSchemaMap.get('Property__c') ;
        Schema.DescribeSObjectResult cfrSchema = sObjType.getDescribe() ;
        Map<String,Schema.RecordTypeInfo> RecordTypeInfo = cfrSchema.getRecordTypeInfosByName();
        Id masterrecordTypeId = RecordTypeInfo.get('PROPERTY MASTER').getRecordTypeId();    
   for(Property__c prop :trigger.new)
    {
        if(prop.R_S_Notes__c!=null)
        {
           string str='';
           if(prop.R_S_History__c!=null)
           {
           str=prop.R_S_History__c;
           }
             string s = UserInfo.getname()+' '+formatteddate+' '+prop.R_S_Notes__c+'\n'+'\n'+str;
          // string s = UserInfo.getname()+' '+prop.lastmodifieddate+' '+prop.R_S_Notes__c+'\n'+str;  
          // string s = str+'\n'+UserInfo.getname()+' '+prop.lastmodifieddate+' '+prop.R_S_Notes__c;
           prop.R_S_History__c = s;
           notehstry.add(prop);         
           prop.R_S_Notes__c='';
        }
        if(Trigger.isinsert && prop.Property_No__c!=null && prop.Location_new__c!=null && prop.RecordTypeid!=masterrecordTypeId)
        {
            prop.Name=prop.Property_No__c+' - '+prop.Location_new__c;
        }
        if('Gurgaon'.equals(prop.Location_City_new__c))
        {
            prop.Land_Status__c='Freehold';
        }
        //master record type property name population
        if(prop.Recordtypeid==masterrecordTypeId )
        {
           
            if(prop.For_Sale__c)
            {
            prop.Name='';
                if(prop.Tenant_Sale__c!=null)
                {
                prop.Name+=prop.Tenant_Sale__c+ ', ';
                }
                 if(prop.Property_No__c!=null)
                {
                prop.Name+=prop.Property_No__c+ ', ';
                }
                  if(prop.Location_Sub_new__c!=null)
                {
                prop.Name+=prop.Location_Sub_new__c+ ', ';
                }
                  if(prop.Location_new__c!=null)
                {
                prop.Name+=prop.Location_new__c+ ', ';
                }
                  if(prop.Floor_Sale__c!=null)
                {
                prop.Name+=prop.Floor_Sale__c+ ', ';
                }
                 if(prop.Area_for_Sale__c!=null)
                {
                prop.Name+=prop.Area_for_Sale__c+ ', ';
                }
                 if(prop.Sale_Price__c!=null)
                {
                prop.Name+=' Sq. Ft. for Sale @ Rs. '+ prop.Sale_Price__c+ '. ';
                }
                
            }
            if(prop.For_Sale__c && prop.Rented__c)
            {
                prop.Name='';
                if(prop.Tenant_Sale__c!=null)
                {
                prop.Name+=prop.Tenant_Sale__c+ ', ';
                }
                 if(prop.Property_No__c!=null)
                {
                prop.Name+=prop.Property_No__c+ ', ';
                }
                  if(prop.Location_Sub_new__c!=null)
                {
                prop.Name+=prop.Location_Sub_new__c+ ', ';
                }
                  if(prop.Location_new__c!=null)
                {
                prop.Name+=prop.Location_new__c+ ', ';
                }
                  if(prop.Floor_Sale__c!=null)
                {
                prop.Name+=prop.Floor_Sale__c+ ', ';
                }
                 if(prop.Area_for_Sale__c!=null)
                {
                prop.Name+=prop.Area_for_Sale__c+ ' Sq. Ft., ';
                }
                 if(prop.Monthly_Rent__c!=null)
                {
                prop.Name+=' monthly rent Rs. '+ prop.Monthly_Rent__c;
                }
                if(prop.Sale_Price__c!=null)
                {
                prop.Name+=' for Sale @ Rs. '+ prop.Sale_Price__c;
                }
                 if(prop.ROI__c!=null)
                {
                prop.Name+=' ( '+ prop.ROI__c+ ' %.)';
                }
          }
          if(prop.Name=='')
          {
           if(prop.Property_No__c!=null && prop.Location_new__c!=null )
                {
                prop.Name=prop.Property_No__c+' - '+prop.Location_new__c;
                }
          }
          
           if(prop.Name!=null)
                {
                      prop.Property_Name__c=prop.Name;
                    }
        if(prop.Name!=null && prop.Name.length()>80)
        {
             prop.Name= prop.Name.substring(0,80);
        }
          
        
        }
        
        if((Trigger.isinsert && prop.Location_new__c!=null) || 
        (Trigger.isupdate && (Trigger.oldmap.get(prop.id).Location_new__c!=prop.Location_new__c)))
        {
            locationset.add(prop.Location_new__c);
        }
    }
    for(Location__c location:[select id,Name from Location__c where Name IN:locationset])
    {
        locationmap.put(location.Name,location);
    }
    for(Property__c prop :trigger.new)
    {
        if(locationmap.containskey(prop.Location_new__c))
        {
         prop.Property_Location__c=locationmap.get(prop.Location_new__c).id;
        }
    }
   
    
}