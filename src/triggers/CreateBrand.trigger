trigger CreateBrand on F_5_Report__c (after insert,after update) 
{
    if(Trigger.isinsert || Trigger.isupdate)
    {
        set<id> spaceidset= new set<id>();
        set<string> brandnameset= new set<string>();
        Map<string,BRAND_S__c> brandnamemapobj= new Map<string,BRAND_S__c>();
        List<BRAND_S__c> brandobjlist= new List<BRAND_S__c>();
        List<Task> tasklist= new List<Task>();
        List<Space_Options__c> spaceupdate = new List<Space_Options__c>();
        List<Space_Options__c> updateSpaceOnInsert = new List<Space_Options__c>();
        map<string,BRAND_S__c> brandtaskmap = new  map<string,BRAND_S__c>();
        map<string,F_5_Report__c> fsreportmap = new  map<string,F_5_Report__c>();
        map<id,Space_Options__c> spacemap = new  map<id,Space_Options__c>();
        map<string,User> usernamemap = new  map<string,User>();
        set<string> usernameset = new  set<string>();
        usernameset.add('Saloni Narang');
        usernameset.add('Ajay Arora');
        usernameset.add('Shalini Solanki');
        set<Id> fsreportset = new set<Id>();
         
        for(F_5_Report__c freportobj : Trigger.new)
        {
            if(Trigger.isupdate && freportobj.New_Brand__c != Trigger.oldmap.get(freportobj.id).New_Brand__c)
            {
                brandnameset.add(freportobj.New_Brand__c);
            }
            else
            {
                if(freportobj.New_Brand__c != null)
                {
                    brandnameset.add(freportobj.New_Brand__c);
                }
            }
            
            if(Trigger.isinsert )
            {
                spaceidset.add(freportobj.Space_Rent_Sale__c);
            }
            if(Trigger.isupdate && (
                (freportobj.Property_Status__c !=Trigger.oldmap.get(freportobj.id).Property_Status__c) ||
                (Trigger.oldmap.get(freportobj.id).Availability_Confirmed__c!=freportobj.Availability_Confirmed__c)||
                (Trigger.oldmap.get(freportobj.id).Arun_Comments__c!=freportobj.Arun_Comments__c)||
                (Trigger.oldmap.get(freportobj.id).New_Brand__c!=freportobj.New_Brand__c) ||
                (Trigger.oldmap.get(freportobj.id).Poor_Local_Brand__c!=freportobj.Poor_Local_Brand__c)
                )
            )
            {
                spaceidset.add(freportobj.Space_Rent_Sale__c);
            }
           fsreportset.add(freportobj.id); 
        
        }
        List<ProcessInstance> approvalprocesslist = [Select Id, (Select Id, ActorId, Actor.Name, Comments, StepStatus 
                from Steps where StepStatus = 'Approved'  order by CreatedDate) from ProcessInstance where TargetObjectId in : fsreportset];
                            
        for(BRAND_S__c brandobj : [ select Id, Name from BRAND_S__c where Name IN: brandnameset])
        {
            brandnamemapobj.put(brandobj.Name, brandobj);
        }
        for(F_5_Report__c freportobj : Trigger.new)
        {
            if( 
                freportobj.New_Existing_Brand__c == null && 
                ( 
                    ( Trigger.isinsert && freportobj.New_Brand__c != null && !brandnamemapobj.containskey(freportobj.New_Brand__c) ) ||
                    ( Trigger.isupdate && freportobj.New_Brand__c != null && Trigger.oldmap.get(freportobj.id).New_Brand__c != freportobj.New_Brand__c)
                ) 
            )
            {
                BRAND_S__c brandobj= new BRAND_S__c();
                brandobj.Name = freportobj.New_Brand__c;
                brandobj.Brand_Source__c = 'F-5';
                if( !approvalprocesslist.isempty() && !(approvalprocesslist.get(0).Steps).isempty() )
                {
                    if(approvalprocesslist.get(0).Steps.get(0).Comments != null )
                    {
                        brandobj.Marketing_Notes__c = approvalprocesslist.get(0).Steps.get(0).Comments;
                    } 
                }
               
                brandtaskmap.put(freportobj.New_Brand__c, brandobj);
                fsreportmap.put(freportobj.New_Brand__c, freportobj);
                brandobjlist.add(brandobj);
            }
        }
        //if property satuts is reno then update space with 
        if(!spaceidset.isempty())
        {
            for( Space_Options__c spaceobj : [select id, Vacant__c,Lease_Expiry__c, Current_Lease_Expiry__c, Full_Building__c, New_Lease_Commencement__c, New_Signage__c, 
                R_S_History__c, DFS_Date__c, Floor_Rent__c, Property_No__c, Space_Location_1__c, Available_For_Rent__c, Name, Old_Signage__c, 
                Current_Lease_Commencement__c from Space_Options__c where id IN: spaceidset] )
            {
                spacemap.put(spaceobj.id, spaceobj);
            }
        }
        User ajayuserobj = null;
        User mansisingobj = null;
       // User arunobj = null;
        User shaliniuserobj = null;
        for(User userobj : [select Id,Name,profile.Name from USer where Name IN: usernameset])
        {
            if('Ajay Arora'.equals(userobj.Name) && 'System Administrator'.equals(userobj.profile.Name) )
            {
                ajayuserobj=userobj;
            }
            if('Saloni Narang'.equals(userobj.Name))
            {
                mansisingobj=userobj;
            }
            
            if('Shalini Solanki'.equals(userobj.Name))
            {
                shaliniuserobj=userobj;
            }
        }

        for(F_5_Report__c freportobj : Trigger.new)
        {
            if( freportobj.Space_Rent_Sale__c != null && trigger.isInsert ){
                
                Space_Options__c spaceobj = new Space_Options__c( 
                    Id = freportobj.Space_Rent_Sale__c,
                    F_5_Case_No__c = freportobj.F_5_Case_No__c
                
                );
                updateSpaceOnInsert.add( spaceobj );
            
            }
            
            
            if(spacemap.containskey(freportobj.Space_Rent_Sale__c))
            {
                Space_Options__c spaceobj = spacemap.get(freportobj.Space_Rent_Sale__c);
                if(spaceobj.Available_For_Rent__c && 'Reno 50'.equals(freportobj.Property_Status__c))
                {
                    spaceobj.Available_For_Rent__c = false;
                    spaceobj.Name = spaceobj.Old_Signage__c;
                    //freportobj.Availability_Confirmed__c = false;
                }
                if( ( Trigger.isinsert && freportobj.Availability_Confirmed__c ) || 
                    ( Trigger.isupdate && ( Trigger.oldmap.get(freportobj.id).Availability_Confirmed__c != freportobj.Availability_Confirmed__c ) && 
                    freportobj.Availability_Confirmed__c ) 
                )
                {
                    spaceobj.Available_For_Rent__c = true;
                    spaceobj.DFS_Date__c = system.today();
                }
                if(freportobj.Arun_Comments__c != null)
                {
                    string spaceR_Shistory = spaceobj.R_S_History__c;
                    spaceobj.R_S_History__c = freportobj.Arun_Comments__c;
                    spaceobj.R_S_History__c += '\n'+spaceR_Shistory;
                }
                if((Trigger.isinsert && freportobj.New_Existing_Brand__c != null) || 
                    (Trigger.isupdate && ( Trigger.oldmap.get(freportobj.id).New_Existing_Brand__c != freportobj.New_Existing_Brand__c ))
                )
                {
                    //Task for space
                    Task spacetaskobj = new Task();
                    spacetaskobj.WhatId = freportobj.Space_Rent_Sale__c;
                    spacetaskobj.Subject = freportobj.New_Brand__c+'- Report at-';
           
                    if(freportobj.Property_No__c!=null)
                    {
                        spacetaskobj.Subject=spacetaskobj.Subject+'-'+freportobj.Property_No__c;
                    }
                    if(spacemap.containskey(freportobj.Space_Rent_Sale__c) && spacemap.get(freportobj.Space_Rent_Sale__c).Floor_Rent__c!=null)
                    {
                        spacetaskobj.Subject=spacetaskobj.Subject+'-'+spacemap.get(freportobj.Space_Rent_Sale__c).Floor_Rent__c;
                    }
                    if(freportobj.Space_Location__c!=null)
                    {
                        spacetaskobj.Subject=spacetaskobj.Subject+'-'+freportobj.Space_Location__c;
                
                    }
                    spacetaskobj.ActivityDate=system.today();
                    spacetaskobj.Priority='High';
                    spacetaskobj.Task_Type__c = 'To Do';
                    spacetaskobj.Type= 'To Do';
                    spacetaskobj.Sub_Task__c = 'Property Services';
                    spacetaskobj.Sub_Task_Sub__c = 'Property Update';
                    spacetaskobj.OwnerId = ajayuserobj.id;
                    tasklist.add(spacetaskobj);
                }
                //lets update space for make new brand 
              
                if( ( Trigger.isinsert && freportobj.Make_New_Brand__c != null ) || 
                    ( Trigger.isupdate && ( Trigger.oldmap.get(freportobj.id).Make_New_Brand__c != freportobj.Make_New_Brand__c ) )
                )
                {
                    spaceobj = SpacefieldUpdate.updatespacefield(spaceobj,freportobj);
                    spaceobj.New_Signage__c = freportobj.Make_New_Brand__c;
                 
                    if( (freportobj.Reno_75_Date__c != null || freportobj.Reno_25_Date__c != null ||freportobj.Reno_50_Date__c != null ) )
                    {
                        //Escalation due
                        Task taskobj = SpacefieldUpdate.gettask(spaceobj, freportobj, freportobj.Make_New_Brand__c);
                        taskobj.OwnerId = ajayuserobj.id;
                        taskobj.Task_Type__c = 'Call';
                        taskobj.Sub_Task__c = 'Property Procurement';
                        taskobj.Sub_Task_Sub__c = 'Escalation & Tenure End';
                                    
                        tasklist.add(taskobj);
                    }
                }
                //let's populate the space for poor brand
                if( ( Trigger.isinsert && freportobj.Poor_Local_Brand__c!=null ) || 
                    (Trigger.isupdate && 
                    ( Trigger.oldmap.get(freportobj.id ).Poor_Local_Brand__c != freportobj.Poor_Local_Brand__c ) && 
                    'New Brand'.equals( freportobj.Property_Status__c ))
                )
                {
                    spaceobj = SpacefieldUpdate.updatespacefield(spaceobj,freportobj);
                    spaceobj.New_Signage__c = freportobj.Poor_Local_Brand__c;
                     
                    if( (freportobj.Reno_75_Date__c!=null || freportobj.Reno_25_Date__c!=null ||freportobj.Reno_50_Date__c!=null ))
                    {
                        //Escalation due
                        Task taskobj = SpacefieldUpdate.gettask(spaceobj,freportobj,freportobj.Poor_Local_Brand__c);
                        taskobj.OwnerId = ajayuserobj.id;
                        taskobj.Task_Type__c = 'Call';
                        taskobj.Sub_Task__c = 'Property Procurement';
                        taskobj.Sub_Task_Sub__c = 'Escalation & Tenure End';
                     
                        tasklist.add(taskobj);
                    }
                  
                    //let's create task for poor brand
                    Task spacetaskobj= new Task();
                    spacetaskobj.WhatId =   freportobj.Space_Rent_Sale__c;
                    spacetaskobj.Subject = 'New Brand -'+freportobj.Poor_Local_Brand__c+'- Reported at-';
           
                    if(freportobj.Property_No__c != null)
                    {
                        spacetaskobj.Subject = spacetaskobj.Subject+'-'+freportobj.Property_No__c;
                    }
                    if(spacemap.containskey(freportobj.Space_Rent_Sale__c) && spacemap.get(freportobj.Space_Rent_Sale__c).Floor_Rent__c!=null)
                    {
                        spacetaskobj.Subject=spacetaskobj.Subject+'-'+spacemap.get(freportobj.Space_Rent_Sale__c).Floor_Rent__c;
                    }
                    if(freportobj.Space_Location__c!=null)
                    {
                        spacetaskobj.Subject=spacetaskobj.Subject+'-'+freportobj.Space_Location__c;
                    }
                    spacetaskobj.ActivityDate = system.today();
                    spacetaskobj.Priority = 'High';
                    spacetaskobj.Task_Type__c = 'To Do';
                    spacetaskobj.Type = 'To Do';
                    spacetaskobj.Sub_Task__c = 'Property Services';
                    spacetaskobj.Sub_Task_Sub__c = 'Property Update';
                    spacetaskobj.OwnerId = ajayuserobj.id;
                    
                    tasklist.add(spacetaskobj);
                }
              
                //copy the new brand to New Signage
                if( ( Trigger.isinsert && freportobj.New_Brand__c != null ) || 
                    ( Trigger.isupdate && ( Trigger.oldmap.get(freportobj.id ).Property_Status__c != freportobj.Property_Status__c ) && 
                    'New Brand'.equals(freportobj.Property_Status__c) &&
                    ( Trigger.oldmap.get(freportobj.id).New_Brand__c != freportobj.New_Brand__c ) )
                )
                {
                    spaceobj = SpacefieldUpdate.updatespacefield(spaceobj,freportobj);
                    spaceobj.New_Signage__c = freportobj.New_Brand__c;
                }
                //if f5 is closed
                if( ('Closed'.equals(freportobj.Property_Status__c) && Trigger.isinsert )||
                    ( Trigger.isupdate && ( Trigger.oldmap.get(freportobj.id).Property_Status__c != freportobj.Property_Status__c ) &&
                    'Closed'.equals(freportobj.Property_Status__c ) ) 
                )
                {
                    Task taskobj= new Task();
                    taskobj.WhatId=spaceobj.id;
                    taskobj.Subject='Closed reported on '+spaceobj.Name;
                    if(spaceobj.Property_No__c!=null)
                    {
                        taskobj.Subject=taskobj.Subject+'-'+spaceobj.Property_No__c;
                    }
                    if(spaceobj.Floor_Rent__c!=null)
                    {
                        taskobj.Subject=taskobj.Subject+'-'+spaceobj.Floor_Rent__c;
                    }
                    if(spaceobj.Space_Location_1__c!=null)
                    {
                        taskobj.Subject=taskobj.Subject+'-'+spaceobj.Space_Location_1__c;
                    }
                    taskobj.Priority = 'High';
                    taskobj.Task_Type__c = 'Call';
                    taskobj.Type='Call';
                    taskobj.Sub_Task__c = 'F-5 Report';
                    taskobj.Sub_Task_Sub__c = 'F-5 Closed';
                    taskobj.OwnerId = shaliniuserobj.id;
                    if( freportobj.Owner__c != null )
                    {
                        taskobj.WhoId=freportobj.Owner__c;
                    }
                    taskobj.ActivityDate=system.today();
                    tasklist.add(taskobj);
                }
                //if new brand is reported create task with reno 25 or reno 50 
                if( ( freportobj.Poor_Local_Brand__c == null && freportobj.Make_New_Brand__c == null && freportobj.New_Brand__c != null ) && 
                    (
                        Trigger.isinsert &&
                        ( 'New Brand'.equals( freportobj.Property_Status__c )) && 
                        ( freportobj.Reno_75_Date__c != null || freportobj.Reno_25_Date__c != null || freportobj.Reno_50_Date__c != null )
                    ) ||
                    (
                        Trigger.isupdate && ( Trigger.oldmap.get(freportobj.id).Property_Status__c != freportobj.Property_Status__c ) && 
                        'New Brand'.equals(freportobj.Property_Status__c) && 
                        ( freportobj.Reno_75_Date__c!= null || freportobj.Reno_25_Date__c != null || freportobj.Reno_50_Date__c != null ) &&
                        ( freportobj.Poor_Local_Brand__c == null && freportobj.Make_New_Brand__c == null && freportobj.New_Brand__c != null )
                    )
                )
                {
                    Task taskobj = SpacefieldUpdate.gettask( spaceobj, freportobj, freportobj.New_Brand__c );
                    taskobj.OwnerId = ajayuserobj.id;
                    taskobj.Task_Type__c = 'To Do';
                    taskobj.Sub_Task__c = 'Property Services';
                    taskobj.Sub_Task_Sub__c = 'Property Update';
                    tasklist.add(taskobj);
                }
                spaceobj.Reno_Status__c = freportobj.Property_Status__c;
                spaceupdate.add(spaceobj);
            }
        }
        try
        {
            if(!brandobjlist.isempty())
            {
                insert brandobjlist;
            }
            if(!spaceupdate.isempty())
            {
                upsert spaceupdate;
            }
            if( !updateSpaceOnInsert.isEmpty() ){
                update updateSpaceOnInsert;
            }
        }
        catch(Exception e)
        {
            system.debug('Error: '+e.getMessage());
        }
      
        for(F_5_Report__c freportobj : fsreportmap.Values())
        {
            if( brandtaskmap.containskey(freportobj.New_Brand__c) )
            {
                Task taskobj= new Task();
                taskobj.WhatId = brandtaskmap.get(freportobj.New_Brand__c).id;
                //taskobj.WhoId=userinfo.getuserid();
                taskobj.Subject='New Brand -'+freportobj.New_Brand__c+'- Report at-';
           
                if(freportobj.Property_No__c!=null)
                {
                    taskobj.Subject=taskobj.Subject+'-'+freportobj.Property_No__c;
                }
                if(freportobj.Space_Location__c!=null)
                {
                    taskobj.Subject=taskobj.Subject+'-'+freportobj.Space_Location__c;
                }
                taskobj.ActivityDate=system.today();
                taskobj.Priority='High';
                taskobj.Task_Type__c='Call';
                taskobj.Type='To Do';
                taskobj.Sub_Task__c='BDF';
                taskobj.Sub_Task_Sub__c='Brand Initial';
                taskobj.OwnerId=mansisingobj.id;
                tasklist.add(taskobj);
                
                //Task for space
                Task spacetaskobj = new Task();
                spacetaskobj.WhatId=freportobj.Space_Rent_Sale__c;
                spacetaskobj.Subject=freportobj.New_Brand__c+'- Report at-';
           
                if(freportobj.Property_No__c!=null)
                {
                    spacetaskobj.Subject=spacetaskobj.Subject+'-'+freportobj.Property_No__c;
                }
                if(spacemap.containskey(freportobj.Space_Rent_Sale__c) && spacemap.get(freportobj.Space_Rent_Sale__c).Floor_Rent__c!=null)
                {
                    spacetaskobj.Subject=taskobj.Subject+'-'+spacemap.get(freportobj.Space_Rent_Sale__c).Floor_Rent__c;
                }
                if(freportobj.Space_Location__c!=null)
                {
                    spacetaskobj.Subject=spacetaskobj.Subject+'-'+freportobj.Space_Location__c;
                }
                spacetaskobj.ActivityDate=system.today();
                spacetaskobj.Priority='High';
                spacetaskobj.Task_Type__c='To Do';
                spacetaskobj.Type='To Do';
                spacetaskobj.Sub_Task__c='Property Services';
                spacetaskobj.Sub_Task_Sub__c='Property Update';
                spacetaskobj.OwnerId=ajayuserobj.id;
                tasklist.add(spacetaskobj);
            }
        }
        try
        {
            if(!tasklist.isempty())
            {
                insert tasklist;
            }
           
        }
        catch(Exception e)
        {
            system.debug('Error: '+e.getMessage());
        }
    }
}