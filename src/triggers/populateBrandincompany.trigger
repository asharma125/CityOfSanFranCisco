trigger populateBrandincompany on Brand_Contact_Role__c (after insert, after update, after delete) 
{
    set<Id> companyIdset = new set<Id>();
    set<Id> changedcompanyidset = new  set<Id>();
    set<Id> brandcontactroleset = new  set<Id>();
    map<Id,Account> accountmap = new  map<Id,Account>();
    list<Contact> contactlist = new  list<Contact>();
    map<Id,Brand_Contact_Role__c> contactbrandcontactrolemap = new  map<Id,Brand_Contact_Role__c>();
	set<Id> ContactIds = new set<Id>();
    set<id> brandIdset= new set<id>();
    map<Id,BRAND_S__c> brandmap = new map<Id,BRAND_S__c>();
    User userobj=null;
    List<Task> tasklist= new List<Task>();
	
    if(Trigger.isinsert || trigger.isupdate)
    {
        for(Brand_Contact_Role__c brandcontacctrole : Trigger.new)
        {
        
            if(Trigger.isinsert && brandcontacctrole.Company__c != null)
            {
                companyIdset.add(brandcontacctrole.Company__c);
            }
            if(trigger.isupdate && brandcontacctrole.Company__c != null)
            {
                companyIdset.add(brandcontacctrole.Company__c);
            }
			if(trigger.isupdate && (Trigger.oldmap.get(brandcontacctrole.id).Company__c != brandcontacctrole.Company__c))
            {
                changedcompanyidset.add(Trigger.oldmap.get(brandcontacctrole.id).Company__c);
            }
            if(trigger.isupdate && (Trigger.oldmap.get(brandcontacctrole.id).NEW_BRAND__c != brandcontacctrole.NEW_BRAND__c))
            {
                brandIdset.add(Trigger.oldmap.get(brandcontacctrole.id).NEW_BRAND__c);
                //brandIdset.add(brandcontacctrole.NEW_BRAND__c);
            }
            if(trigger.isInsert && brandcontacctrole.NEW_BRAND__c != null){
                brandIdset.add(brandcontacctrole.NEW_BRAND__c);
            }
            contactbrandcontactrolemap.put(brandcontacctrole.Contact__c,brandcontacctrole);
			ContactIds.add(brandcontacctrole.Contact__c);
			if(trigger.isUpdate)
				ContactIds.add(trigger.oldmap.get(brandcontacctrole.Id).Contact__c);
        }
       
        if(!brandIdset.isempty())
        {
            for(BRAND_S__c brandobj : [select Id,Name from BRAND_S__c where ID IN:brandIdset])
            {
                brandmap.put(brandobj.id,brandobj);
            }
           for(Account acc : [select Id,Name from Account where Id IN:changedcompanyidset])
            {
               accountmap.put(acc.id,acc);
            }
            userobj = [select Id,Name from user where Name='Saloni Narang'];
        }
         for(Brand_Contact_Role__c brandcontacctrole : Trigger.new)
         {
             if(trigger.isupdate && (Trigger.oldmap.get(brandcontacctrole.id).NEW_BRAND__c != brandcontacctrole.NEW_BRAND__c))
            {
                if(brandmap.containskey(Trigger.oldmap.get(brandcontacctrole.id).NEW_BRAND__c))
                {
                    Task taskobj = new Task();
                    taskobj.Type='Call';
                    taskobj.ActivityDate=system.today();
                    taskobj.Priority='High';
                    taskobj.Task_Type__c='Call';
                    taskobj.Sub_Task__c='BDF';
                    taskobj.Subject='';
                    if(brandmap.containskey(brandcontacctrole.NEW_BRAND__c))
                    {
                        taskobj.Subject = brandmap.get(brandcontacctrole.NEW_BRAND__c).Name+ ' belonging to';
                    }
                    if(accountmap.containskey(brandcontacctrole.Company__c))
                    {
                         taskobj.Subject= taskobj.Subject+accountmap.get(brandcontacctrole.Company__c).Name +' has no BCR ("contact" has left ).';
                    }
                    taskobj.OwnerId=userobj.id;
                    tasklist.add(taskobj);
                }
            }
            if(trigger.isupdate && (Trigger.oldmap.get(brandcontacctrole.id).Desperate__c != brandcontacctrole.Desperate__c))
            {
                brandcontactroleset.add(brandcontacctrole.id);
            }
        
        }
        //task generation if desperate changed in BCR
        if(!brandcontactroleset.isempty() && utility.isbrandcontactroleupdateable)
        {
            User userappuobj =[select Id,Name from user where Name='Shalini Solanki'];
        
            for(Brand_Contact_Role__c brandontact:[select id,Desperate__c,Contact__c, Contact__r.FirstName,
				Contact__r.LastName,NEW_BRAND__c,NEW_BRAND__r.Name from Brand_Contact_Role__c where ID IN: brandcontactroleset])
            {
				Task taskobj= new Task();
				taskobj.Type='Call';
				taskobj.WhoId=brandontact.Contact__c;
				taskobj.ActivityDate=system.today();
				taskobj.Priority='High';
				taskobj.Task_Type__c='Call';
				taskobj.Sub_Task__c='BDF';
				taskobj.Subject='';
				taskobj.Subject+=' New Requirement for Brand '+brandontact.NEW_BRAND__r.Name;
				taskobj.Subject+=', thru ';
                   
				if(brandontact.Contact__r.FirstName!=null)
				{
					taskobj.Subject+=brandontact.Contact__r.FirstName+' ';
				}
				if(brandontact.Contact__r.LastName!=null)
				{
					taskobj.Subject+=brandontact.Contact__r.LastName+' ';
				}
				taskobj.Subject+='in '+brandontact.Desperate__c;
				taskobj.OwnerId=userappuobj.id;
				taskobj.WhatId=brandontact.id;
				tasklist.add(taskobj);
            }
        }
        for(Contact contactobj : [select Id,Incorrect_BCR__c,Min_Area__c,Contact_Verified_Date__c,Min_Budget_Rs__c,
			Max_Area_Sq_Ft__c,Max_Budget__c,Min_Area_Req_Sq_Ft__c, Desperate__c,RF_CAR_Notes__c, 
			Suspect__c, Floor_Preferred__c,Prospect__c, Brand_Category__c,Brand_Handling__c,
			Brand_Handled_Sub_Category__c,
			( 
				select Id, Contact__c, Min_Budget_Rs__c, Last_Verified_Date__c, Max_Area_Sq_Ft__c, Max_Budget__c,
				Floor_Preferred__c, Prospect__c, Suspect__c, Desperate__c, RF_CAR_Notes__c, Incorrect_BCR__c, Min_Area_Sq_Ft__c,
				Decision_Maker__c, NEW_BRAND__c, NEW_BRAND__r.Name, NEW_BRAND__r.Category__c, 
				NEW_BRAND__r.Sub_Category__c from Brand_Contact_Roles__r
			) 
			from Contact where Id IN : ContactIds])
        {
			String Brand_Handling = '';
			String Category = '';
			String Sub_Category = '';
            for( Brand_Contact_Role__c brndrole : contactobj.Brand_Contact_Roles__r)
            {
                if( trigger.newmap.containsKey( brndrole.Id ) ){
					contactobj.Min_Budget_Rs__c = brndrole.Min_Budget_Rs__c;
					contactobj.Contact_Verified_Date__c = brndrole.Last_Verified_Date__c;
					contactobj.Max_Area_Sq_Ft__c = brndrole.Max_Area_Sq_Ft__c;
					contactobj.Max_Budget__c = brndrole.Max_Budget__c;
					contactobj.Min_Area__c = brndrole.Min_Area_Sq_Ft__c;
					contactobj.Floor_Preferred__c = brndrole.Floor_Preferred__c;
					contactobj.Prospect__c = brndrole.Prospect__c;
					contactobj.Suspect__c = brndrole.Suspect__c;
					contactobj.Desperate__c = brndrole.Desperate__c;
					contactobj.RF_CAR_Notes__c = brndrole.RF_CAR_Notes__c;
					contactobj.Incorrect_BCR__c = brndrole.Incorrect_BCR__c;
					
					if(brndrole.Decision_Maker__c){
						contactobj.Brand_Decision_Maker__c = true;
					}
				}
				if( String.isNotBlank( brndrole.NEW_BRAND__r.Name ) ){
					if( !Brand_Handling.contains( brndrole.NEW_BRAND__r.Name ) )
						Brand_Handling += brndrole.NEW_BRAND__r.Name + '; ';
				}	
				if( String.isNotBlank( brndrole.NEW_BRAND__r.Category__c ) ){
					if( !Category.contains( brndrole.NEW_BRAND__r.Category__c ) )
						Category += brndrole.NEW_BRAND__r.Category__c + '; ';
				}
				if( String.isNotBlank( brndrole.NEW_BRAND__r.Sub_Category__c ) ){
					if( String.isNotBlank( brndrole.NEW_BRAND__r.Sub_Category__c ) ){
						for( String sub_cat : brndrole.NEW_BRAND__r.Sub_Category__c.split( ';' ) ){
							sub_cat = sub_cat.trim();
							if( !Sub_Category.contains( sub_cat ) ){ 
								Sub_Category += sub_cat + '; ';
							}
						}
					}
				}
			}
			if( String.isNotBlank( Brand_Handling ) ){
				contactobj.Brand_Handling__c = Brand_Handling;
			}else{
				contactobj.Brand_Handling__c = 'No Brand Handled Found';
			} 
			contactobj.Brand_Category__c = Category;
			contactobj.Brand_Handled_Sub_Category__c = Sub_Category ;
			contactlist.add(contactobj);
        }
        if(utility.isbrandcontactroleupdateable)
        {
			utility.isContactupdateable = false;
            if(!contactlist.isempty())
            {
                upsert contactlist;
            }
            if(!tasklist.isempty())
			{
                insert tasklist;
            }
			if(!companyIdset.isempty())
			{
				updateCompany.updatecompanylist(companyIdset);
			}
			UpdateBrandList.populatebrandlist(Trigger.new);
        }
    }
    if(trigger.isdelete)
    {
		map<Id,Brand_Contact_Role__c> brandcontactrolemap = new map<Id,Brand_Contact_Role__c>();
        
        for( Brand_Contact_Role__c brandcontacctrole : Trigger.old)
        {
			companyIdset.add( brandcontacctrole.Company__c );
        }
        if(!companyIdset.isempty())
        {
            updateCompany.updatecompanylist(companyIdset);
        }
         UpdateBrandList.populatebrandlist(Trigger.old);
    
    }
   
}