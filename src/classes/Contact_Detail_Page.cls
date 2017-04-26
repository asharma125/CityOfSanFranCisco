global with sharing class Contact_Detail_Page extends SkyEditor2.SkyEditorPageBaseWithSharing {
	
	public Contact record {get{return (Contact)mainRecord;}}
	public with sharing class CanvasException extends Exception {}

	public string Component549_pagename{get;set;}
	public string Component549_recordid{get;set;}
	public Boolean Component548_rendered {get{ return record.Tenant__c==true;}}
	public Boolean Component223_rendered {get{ return record.Agent__c==true;}}
	public Boolean Component310_rendered {get{ return record.Investor__c==true;}}
	
	
	public Component412 Component412 {get; private set;}
	public Component431 Component431 {get; private set;}
	public Component448 Component448 {get; private set;}
	public Component458 Component458 {get; private set;}
	public Component469 Component469 {get; private set;}
	public Component486 Component486 {get; private set;}
	{
	setApiVersion(31.0);
	}
	public Contact_Detail_Page(ApexPages.StandardController controller) {
		super(controller);


		SObjectField f;

		f = Contact.fields.LastName;
		f = Contact.fields.Contact__c;
		f = Contact.fields.FirstName;
		f = Contact.fields.Contact_Verified_Date__c;
		f = Contact.fields.Salutation;
		f = Contact.fields.REA_Teams__c;
		f = Contact.fields.True_Caller_Name__c;
		f = Contact.fields.AccountId;
		f = Contact.fields.REA_SMS_GROUP__c;
		f = Contact.fields.Secondary_Account__c;
		f = Contact.fields.REA_COURIER_GROUP__c;
		f = Contact.fields.Greeting__c;
		f = Contact.fields.Title;
		f = Contact.fields.HNI__c;
		f = Contact.fields.Department;
		f = Contact.fields.OwnerId;
		f = Contact.fields.MailingCountry;
		f = Contact.fields.ReportsToId;
		f = Contact.fields.MailingPostalCode;
		f = Contact.fields.Addl_Website__c;
		f = Contact.fields.MailingState;
		f = Contact.fields.Birthdate__c;
		f = Contact.fields.MailingCity;
		f = Contact.fields.DoNotCall;
		f = Contact.fields.MailingStreet;
		f = Contact.fields.Do_nor_Email__c;
		f = Contact.fields.MobilePhone;
		f = Contact.fields.Do_Not_SMS__c;
		f = Contact.fields.Mobile_2__c;
		f = Contact.fields.Do_not_Mail__c;
		f = Contact.fields.Land_Line_No__c;
		f = Contact.fields.Fax;
		f = Contact.fields.Email;
		f = Contact.fields.Personal_Email_Id__c;
		f = Contact.fields.Personal_Profile_Notes__c;
		f = Contact.fields.AA_Contacts_to_be_maintained__c;
		f = Contact.fields.Relation__c;
		f = Contact.fields.Driving_License_No__c;
		f = Contact.fields.Name_of_Relation__c;
		f = Contact.fields.Adhar_Card_No__c;
		f = Contact.fields.Residence_Address__c;
		f = Contact.fields.PAN_Card_No__c;
		f = Contact.fields.ELECTION_CARD__c;
		f = Contact.fields.Passport_No__c;
		f = Contact.fields.Service_Tax_No__c;
		f = Contact.fields.Create_BCR__c;
		f = Contact.fields.Brand_Handling__c;
		f = Contact.fields.Brand_Decision_Maker__c;
		f = Contact.fields.Brand_Category__c;
		f = Contact.fields.Incorrect_BCR__c;
		f = Contact.fields.Brand_Handled_Sub_Category__c;
		f = Contact.fields.Rana_Shared__c;
		f = Contact.fields.Pradeep_Shared__c;
		f = Contact.fields.Ankur_Shared__c;
		f = Contact.fields.Vivek_Shared__c;
		f = Contact.fields.Investor__c;
		f = Contact.fields.Vendor__c;
		f = Contact.fields.Tenant__c;
		f = Contact.fields.Vendor_Type__c;
		f = Contact.fields.Rented_Financiar__c;
		f = Contact.fields.Vendor_Power__c;
		f = Contact.fields.Restaurant_Consultant__c;
		f = Contact.fields.Agent__c;
		f = Contact.fields.Rented_Investor__c;
		f = Contact.fields.Rented_Dealer_Category__c;
		f = Contact.fields.Commercial_Leasing__c;
		f = Contact.fields.Dealer_Closeness__c;
		f = Contact.fields.Commercial_Effectiveness__c;
		f = Contact.fields.Rented_Effectiveness__c;
		f = Contact.fields.Farms_Effectiveness__c;
		f = Contact.fields.Dealer_Comment__c;
		f = Contact.fields.Agent_Area_s__c;
		f = Contact.fields.Dealer_Company__c;
		f = Contact.fields.Deals_in_Industrial__c;
		f = Contact.fields.Retail_Specialist_Dealer__c;
		f = Contact.fields.Industrial_Effectiveness__c;
		f = Contact.fields.Retail_Specialist__c;
		f = Contact.fields.Retail_Effectiveness__c;
		f = Contact.fields.Min_Area__c;
		f = Contact.fields.Floor_Preferred__c;
		f = Contact.fields.Max_Area_Sq_Ft__c;
		f = Contact.fields.Rquirement_Type__c;
		f = Contact.fields.Min_Budget_Rs__c;
		f = Contact.fields.Suspect__c;
		f = Contact.fields.Max_Budget__c;
		f = Contact.fields.Prospect__c;
		f = Contact.fields.Running_Restaurant_Takeover__c;
		f = Contact.fields.Desperate__c;
		f = Contact.fields.RF_Desperate_Updated_on__c;
		f = Contact.fields.CAR_Notes_Updated_On__c;
		f = Contact.fields.RF_CAR_Notes__c;
		f = Contact.fields.INV_Property_Type__c;
		f = Contact.fields.Min_Area_Req_Sq_Ft__c;
		f = Contact.fields.INV_Property_Sub_Type__c;
		f = Contact.fields.Max_Area_Req_Sq_Ft__c;
		f = Contact.fields.INV_Desperate__c;
		f = Contact.fields.INV_Min_Budget__c;
		f = Contact.fields.INV_Prospect__c;
		f = Contact.fields.INV_Max_Budget__c;
		f = Contact.fields.Plot_Area_Req_Min__c;
		f = Contact.fields.Plot_Area_Req_Max__c;
		f = Contact.fields.INV_Desperate_Updated_On__c;
		f = Contact.fields.Advance_Cheque__c;
		f = Contact.fields.INV_CAR_Notes_Updated_On__c;
		f = Contact.fields.ROI__c;
		f = Contact.fields.No_of_Bedrooms__c;
		f = Contact.fields.INV_CAR_Notes__c;
		f = Requirement__c.fields.Name;
		f = Requirement__c.fields.Requirement_Age__c;
		f = Requirement__c.fields.Deal_Marketing_Notes__c;
		f = Ownership__c.fields.Name;
		f = Ownership__c.fields.Available_Spaces__c;
		f = Ownership__c.fields.UnAvailable_Space__c;
		f = Ownership__c.fields.Notes__c;
		f = Ownership__c.fields.Decision_Maker__c;
		f = Ownership__c.fields.Send_Courier_to_Both_Addresses__c;
		f = Ownership__c.fields.Courier_Above_Only__c;
		f = Ownership__c.fields.Courier_Showroom_Only__c;
		f = Brand_Contact_Role__c.fields.Name;
		f = Brand_Contact_Role__c.fields.Designation__c;
		f = Brand_Contact_Role__c.fields.Incorrect_BCR__c;
		f = Brand_Contact_Role__c.fields.Brand_Category__c;
		f = Brand_Contact_Role__c.fields.Sub_Category__c;
		f = Brand_Contact_Role__c.fields.Notes__c;
		f = Shown_To__c.fields.Name;
		f = Shown_To__c.fields.Date__c;
		f = Shown_To__c.fields.Intrest_Level__c;
		f = Shown_To__c.fields.T_D_Notes__c;
		f = Shown_To__c.fields.Don_t_Propose__c;
		f = Shown_To__c.fields.Disclosed_Via__c;
		f = Shown_To__c.fields.T_D_Status__c;
		f = Associate__c.fields.Name;
		f = Associate__c.fields.Dealer_Market_Comment__c;
		f = Associate__c.fields.Preferred_Associate__c;
		f = Associate__c.fields.Direct_Deal__c;
		f = Associate__c.fields.Disclosure__c;
		f = Associate__c.fields.Power_Meter__c;
		f = Associate__c.fields.CreatedDate;

		List<RecordTypeInfo> recordTypes;
		try {
			mainSObjectType = Contact.SObjectType;
			setPageReferenceFactory(new PageReferenceFactory());
			
			mainQuery = new SkyEditor2.Query('Contact');
			mainQuery.addField('LastName');
			mainQuery.addField('Contact__c');
			mainQuery.addField('FirstName');
			mainQuery.addField('Contact_Verified_Date__c');
			mainQuery.addField('Salutation');
			mainQuery.addField('REA_Teams__c');
			mainQuery.addField('True_Caller_Name__c');
			mainQuery.addField('AccountId');
			mainQuery.addField('REA_SMS_GROUP__c');
			mainQuery.addField('Secondary_Account__c');
			mainQuery.addField('REA_COURIER_GROUP__c');
			mainQuery.addField('Greeting__c');
			mainQuery.addField('Title');
			mainQuery.addField('HNI__c');
			mainQuery.addField('Department');
			mainQuery.addField('OwnerId');
			mainQuery.addField('MailingCountry');
			mainQuery.addField('ReportsToId');
			mainQuery.addField('MailingPostalCode');
			mainQuery.addField('Addl_Website__c');
			mainQuery.addField('MailingState');
			mainQuery.addField('Birthdate__c');
			mainQuery.addField('MailingCity');
			mainQuery.addField('DoNotCall');
			mainQuery.addField('MailingStreet');
			mainQuery.addField('Do_nor_Email__c');
			mainQuery.addField('MobilePhone');
			mainQuery.addField('Do_Not_SMS__c');
			mainQuery.addField('Mobile_2__c');
			mainQuery.addField('Do_not_Mail__c');
			mainQuery.addField('Land_Line_No__c');
			mainQuery.addField('Fax');
			mainQuery.addField('Email');
			mainQuery.addField('Personal_Email_Id__c');
			mainQuery.addField('Personal_Profile_Notes__c');
			mainQuery.addField('AA_Contacts_to_be_maintained__c');
			mainQuery.addField('Relation__c');
			mainQuery.addField('Driving_License_No__c');
			mainQuery.addField('Name_of_Relation__c');
			mainQuery.addField('Adhar_Card_No__c');
			mainQuery.addField('Residence_Address__c');
			mainQuery.addField('PAN_Card_No__c');
			mainQuery.addField('ELECTION_CARD__c');
			mainQuery.addField('Passport_No__c');
			mainQuery.addField('Service_Tax_No__c');
			mainQuery.addField('Create_BCR__c');
			mainQuery.addField('Brand_Handling__c');
			mainQuery.addField('Brand_Decision_Maker__c');
			mainQuery.addField('Brand_Category__c');
			mainQuery.addField('Incorrect_BCR__c');
			mainQuery.addField('Brand_Handled_Sub_Category__c');
			mainQuery.addField('Rana_Shared__c');
			mainQuery.addField('Pradeep_Shared__c');
			mainQuery.addField('Ankur_Shared__c');
			mainQuery.addField('Vivek_Shared__c');
			mainQuery.addField('Investor__c');
			mainQuery.addField('Vendor__c');
			mainQuery.addField('Tenant__c');
			mainQuery.addField('Vendor_Type__c');
			mainQuery.addField('Rented_Financiar__c');
			mainQuery.addField('Vendor_Power__c');
			mainQuery.addField('Restaurant_Consultant__c');
			mainQuery.addField('Agent__c');
			mainQuery.addField('Rented_Investor__c');
			mainQuery.addField('Rented_Dealer_Category__c');
			mainQuery.addField('Commercial_Leasing__c');
			mainQuery.addField('Dealer_Closeness__c');
			mainQuery.addField('Commercial_Effectiveness__c');
			mainQuery.addField('Rented_Effectiveness__c');
			mainQuery.addField('Farms_Effectiveness__c');
			mainQuery.addField('Dealer_Comment__c');
			mainQuery.addField('Agent_Area_s__c');
			mainQuery.addField('Dealer_Company__c');
			mainQuery.addField('Deals_in_Industrial__c');
			mainQuery.addField('Retail_Specialist_Dealer__c');
			mainQuery.addField('Industrial_Effectiveness__c');
			mainQuery.addField('Retail_Specialist__c');
			mainQuery.addField('Retail_Effectiveness__c');
			mainQuery.addField('Min_Area__c');
			mainQuery.addField('Floor_Preferred__c');
			mainQuery.addField('Max_Area_Sq_Ft__c');
			mainQuery.addField('Rquirement_Type__c');
			mainQuery.addField('Min_Budget_Rs__c');
			mainQuery.addField('Suspect__c');
			mainQuery.addField('Max_Budget__c');
			mainQuery.addField('Prospect__c');
			mainQuery.addField('Running_Restaurant_Takeover__c');
			mainQuery.addField('Desperate__c');
			mainQuery.addField('RF_Desperate_Updated_on__c');
			mainQuery.addField('CAR_Notes_Updated_On__c');
			mainQuery.addField('RF_CAR_Notes__c');
			mainQuery.addField('INV_Property_Type__c');
			mainQuery.addField('Min_Area_Req_Sq_Ft__c');
			mainQuery.addField('INV_Property_Sub_Type__c');
			mainQuery.addField('Max_Area_Req_Sq_Ft__c');
			mainQuery.addField('INV_Desperate__c');
			mainQuery.addField('INV_Min_Budget__c');
			mainQuery.addField('INV_Prospect__c');
			mainQuery.addField('INV_Max_Budget__c');
			mainQuery.addField('Plot_Area_Req_Min__c');
			mainQuery.addField('Plot_Area_Req_Max__c');
			mainQuery.addField('INV_Desperate_Updated_On__c');
			mainQuery.addField('Advance_Cheque__c');
			mainQuery.addField('INV_CAR_Notes_Updated_On__c');
			mainQuery.addField('ROI__c');
			mainQuery.addField('No_of_Bedrooms__c');
			mainQuery.addField('INV_CAR_Notes__c');
			mainQuery.addFieldAsOutput('Name');
			mainQuery.addWhere('Id', mainRecord.Id, SkyEditor2.WhereOperator.Eq)
				.limitRecords(1);
			
			
			
			mode = SkyEditor2.LayoutMode.LayoutSalesforce; 
			
			queryMap = new Map<String, SkyEditor2.Query>();
			SkyEditor2.Query query;
			
			Component412 = new Component412(new List<Requirement__c>(), new List<Component412Item>(), new List<Requirement__c>(), null);
			listItemHolders.put('Component412', Component412);
			query = new SkyEditor2.Query('Requirement__c');
			query.addField('Name');
			query.addField('Deal_Marketing_Notes__c');
			query.addFieldAsOutput('Requirement_Age__c');
			query.addFieldAsOutput('RecordTypeId');
			query.addWhere('Authorised_Signatory_Lessee__c', mainRecord.Id, SkyEditor2.WhereOperator.Eq);
			relationFields.put('Component412', 'Authorised_Signatory_Lessee__c');
			Component412.queryRelatedEvent = False;
			query.limitRecords(500);
			queryMap.put('Component412', query);
			
			Component431 = new Component431(new List<Ownership__c>(), new List<Component431Item>(), new List<Ownership__c>(), null);
			listItemHolders.put('Component431', Component431);
			query = new SkyEditor2.Query('Ownership__c');
			query.addField('Name');
			query.addField('Notes__c');
			query.addField('Decision_Maker__c');
			query.addField('Send_Courier_to_Both_Addresses__c');
			query.addField('Courier_Above_Only__c');
			query.addField('Courier_Showroom_Only__c');
			query.addFieldAsOutput('Available_Spaces__c');
			query.addFieldAsOutput('UnAvailable_Space__c');
			query.addWhere('Contact__c', mainRecord.Id, SkyEditor2.WhereOperator.Eq);
			relationFields.put('Component431', 'Contact__c');
			Component431.queryRelatedEvent = False;
			query.limitRecords(500);
			queryMap.put('Component431', query);
			
			Component448 = new Component448(new List<Brand_Contact_Role__c>(), new List<Component448Item>(), new List<Brand_Contact_Role__c>(), null);
			listItemHolders.put('Component448', Component448);
			query = new SkyEditor2.Query('Brand_Contact_Role__c');
			query.addField('Name');
			query.addField('Designation__c');
			query.addField('Incorrect_BCR__c');
			query.addField('Sub_Category__c');
			query.addField('Notes__c');
			query.addFieldAsOutput('Brand_Category__c');
			query.addWhere('Contact__c', mainRecord.Id, SkyEditor2.WhereOperator.Eq);
			relationFields.put('Component448', 'Contact__c');
			Component448.queryRelatedEvent = False;
			query.limitRecords(500);
			queryMap.put('Component448', query);
			
			Component458 = new Component458(new List<Shown_To__c>(), new List<Component458Item>(), new List<Shown_To__c>(), null);
			listItemHolders.put('Component458', Component458);
			query = new SkyEditor2.Query('Shown_To__c');
			query.addField('Name');
			query.addWhere('Channel_Partner__c', mainRecord.Id, SkyEditor2.WhereOperator.Eq);
			relationFields.put('Component458', 'Channel_Partner__c');
			Component458.queryRelatedEvent = False;
			query.limitRecords(500);
			queryMap.put('Component458', query);
			
			Component469 = new Component469(new List<Shown_To__c>(), new List<Component469Item>(), new List<Shown_To__c>(), null);
			listItemHolders.put('Component469', Component469);
			query = new SkyEditor2.Query('Shown_To__c');
			query.addField('Name');
			query.addField('Date__c');
			query.addField('Intrest_Level__c');
			query.addField('T_D_Notes__c');
			query.addField('Don_t_Propose__c');
			query.addField('Disclosed_Via__c');
			query.addField('T_D_Status__c');
			query.addWhere('Channel_Partner__c', mainRecord.Id, SkyEditor2.WhereOperator.Eq);
			relationFields.put('Component469', 'Channel_Partner__c');
			Component469.queryRelatedEvent = False;
			query.limitRecords(500);
			queryMap.put('Component469', query);
			
			Component486 = new Component486(new List<Associate__c>(), new List<Component486Item>(), new List<Associate__c>(), null);
			listItemHolders.put('Component486', Component486);
			query = new SkyEditor2.Query('Associate__c');
			query.addField('Name');
			query.addField('Dealer_Market_Comment__c');
			query.addField('Preferred_Associate__c');
			query.addField('Direct_Deal__c');
			query.addField('Disclosure__c');
			query.addField('Power_Meter__c');
			query.addFieldAsOutput('CreatedDate');
			query.addWhere('Associate_Name__c', mainRecord.Id, SkyEditor2.WhereOperator.Eq);
			relationFields.put('Component486', 'Associate_Name__c');
			Component486.queryRelatedEvent = False;
			query.limitRecords(500);
			queryMap.put('Component486', query);
			
			registRelatedList('Requirements_Authorised_Signatory_Lessee__r', 'Component412');
			registRelatedList('Ownerships__r', 'Component431');
			registRelatedList('Brand_Contact_Roles__r', 'Component448');
			registRelatedList('Shown_To1__r', 'Component458');
			registRelatedList('Shown_To1__r', 'Component469');
			registRelatedList('Associates__r', 'Component486');
			
			p_showHeader = true;
			p_sidebar = false;
			init();
			
			Component412.extender = this.extender;
			Component431.extender = this.extender;
			Component448.extender = this.extender;
			Component458.extender = this.extender;
			Component469.extender = this.extender;
			Component486.extender = this.extender;
			if (record.Id == null) {
				
				saveOldValues();
				
			}

			
			
		}  catch (SkyEditor2.Errors.FieldNotFoundException e) {
			fieldNotFound(e);
		} catch (SkyEditor2.Errors.RecordNotFoundException e) {
			recordNotFound(e);
		} catch (SkyEditor2.ExtenderException e) {
			e.setMessagesToPage();
		}
	}
	

	@TestVisible
		private void sObjectNotFound(SkyEditor2.Errors.SObjectNotFoundException e) {
		SkyEditor2.Messages.addErrorMessage(e.getMessage());
		hidePageBody = true;
	}
	@TestVisible
		private void fieldNotFound(SkyEditor2.Errors.FieldNotFoundException e) {
		SkyEditor2.Messages.addErrorMessage(e.getMessage());
		hidePageBody = true;
	}
	@TestVisible
		private void recordNotFound(SkyEditor2.Errors.RecordNotFoundException e) {
		SkyEditor2.Messages.addErrorMessage(e.getMessage());
		hidePageBody = true;
	}

	global with sharing class Component412Item extends SkyEditor2.ListItem {
		public Requirement__c record{get; private set;}
		@TestVisible
		Component412Item(Component412 holder, Requirement__c record, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(holder);
			if (record.Id == null  && record.RecordTypeId == null){
				if (recordTypeSelector != null) {
					recordTypeSelector.applyDefault(record);
				}
				
			}
			this.record = record;
		}
		global override SObject getRecord() {return record;}
		public void doDeleteItem(){deleteItem();}
	}
	global with sharing  class Component412 extends SkyEditor2.ListItemHolder {
		public List<Component412Item> items{get; private set;}
		@TestVisible
			Component412(List<SObject> records, List<SkyEditor2.ListItem> items, List<SObject> deleteRecords, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(records, items, deleteRecords, recordTypeSelector);
			this.items = (List<Component412Item>)items;
		}
		global override SkyEditor2.ListItem create(SObject data) {
			return new Component412Item(this, (Requirement__c)data, recordTypeSelector);
		}
		public void doDeleteSelectedItems(){deleteSelectedItems();}
	}
	global with sharing class Component431Item extends SkyEditor2.ListItem {
		public Ownership__c record{get; private set;}
		@TestVisible
		Component431Item(Component431 holder, Ownership__c record, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(holder);
			if (record.Id == null ){
				if (recordTypeSelector != null) {
					recordTypeSelector.applyDefault(record);
				}
				
			}
			this.record = record;
		}
		global override SObject getRecord() {return record;}
		public void doDeleteItem(){deleteItem();}
	}
	global with sharing  class Component431 extends SkyEditor2.ListItemHolder {
		public List<Component431Item> items{get; private set;}
		@TestVisible
			Component431(List<SObject> records, List<SkyEditor2.ListItem> items, List<SObject> deleteRecords, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(records, items, deleteRecords, recordTypeSelector);
			this.items = (List<Component431Item>)items;
		}
		global override SkyEditor2.ListItem create(SObject data) {
			return new Component431Item(this, (Ownership__c)data, recordTypeSelector);
		}
		public void doDeleteSelectedItems(){deleteSelectedItems();}
	}
	global with sharing class Component448Item extends SkyEditor2.ListItem {
		public Brand_Contact_Role__c record{get; private set;}
		@TestVisible
		Component448Item(Component448 holder, Brand_Contact_Role__c record, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(holder);
			if (record.Id == null ){
				if (recordTypeSelector != null) {
					recordTypeSelector.applyDefault(record);
				}
				
			}
			this.record = record;
		}
		global override SObject getRecord() {return record;}
		public void doDeleteItem(){deleteItem();}
	}
	global with sharing  class Component448 extends SkyEditor2.ListItemHolder {
		public List<Component448Item> items{get; private set;}
		@TestVisible
			Component448(List<SObject> records, List<SkyEditor2.ListItem> items, List<SObject> deleteRecords, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(records, items, deleteRecords, recordTypeSelector);
			this.items = (List<Component448Item>)items;
		}
		global override SkyEditor2.ListItem create(SObject data) {
			return new Component448Item(this, (Brand_Contact_Role__c)data, recordTypeSelector);
		}
		public void doDeleteSelectedItems(){deleteSelectedItems();}
	}
	global with sharing class Component458Item extends SkyEditor2.ListItem {
		public Shown_To__c record{get; private set;}
		@TestVisible
		Component458Item(Component458 holder, Shown_To__c record, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(holder);
			if (record.Id == null ){
				if (recordTypeSelector != null) {
					recordTypeSelector.applyDefault(record);
				}
				
			}
			this.record = record;
		}
		global override SObject getRecord() {return record;}
		public void doDeleteItem(){deleteItem();}
	}
	global with sharing  class Component458 extends SkyEditor2.ListItemHolder {
		public List<Component458Item> items{get; private set;}
		@TestVisible
			Component458(List<SObject> records, List<SkyEditor2.ListItem> items, List<SObject> deleteRecords, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(records, items, deleteRecords, recordTypeSelector);
			this.items = (List<Component458Item>)items;
		}
		global override SkyEditor2.ListItem create(SObject data) {
			return new Component458Item(this, (Shown_To__c)data, recordTypeSelector);
		}
		public void doDeleteSelectedItems(){deleteSelectedItems();}
	}
	global with sharing class Component469Item extends SkyEditor2.ListItem {
		public Shown_To__c record{get; private set;}
		@TestVisible
		Component469Item(Component469 holder, Shown_To__c record, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(holder);
			if (record.Id == null ){
				if (recordTypeSelector != null) {
					recordTypeSelector.applyDefault(record);
				}
				
			}
			this.record = record;
		}
		global override SObject getRecord() {return record;}
		public void doDeleteItem(){deleteItem();}
	}
	global with sharing  class Component469 extends SkyEditor2.ListItemHolder {
		public List<Component469Item> items{get; private set;}
		@TestVisible
			Component469(List<SObject> records, List<SkyEditor2.ListItem> items, List<SObject> deleteRecords, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(records, items, deleteRecords, recordTypeSelector);
			this.items = (List<Component469Item>)items;
		}
		global override SkyEditor2.ListItem create(SObject data) {
			return new Component469Item(this, (Shown_To__c)data, recordTypeSelector);
		}
		public void doDeleteSelectedItems(){deleteSelectedItems();}
	}
	global with sharing class Component486Item extends SkyEditor2.ListItem {
		public Associate__c record{get; private set;}
		@TestVisible
		Component486Item(Component486 holder, Associate__c record, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(holder);
			if (record.Id == null ){
				if (recordTypeSelector != null) {
					recordTypeSelector.applyDefault(record);
				}
				
			}
			this.record = record;
		}
		global override SObject getRecord() {return record;}
		public void doDeleteItem(){deleteItem();}
	}
	global with sharing  class Component486 extends SkyEditor2.ListItemHolder {
		public List<Component486Item> items{get; private set;}
		@TestVisible
			Component486(List<SObject> records, List<SkyEditor2.ListItem> items, List<SObject> deleteRecords, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(records, items, deleteRecords, recordTypeSelector);
			this.items = (List<Component486Item>)items;
		}
		global override SkyEditor2.ListItem create(SObject data) {
			return new Component486Item(this, (Associate__c)data, recordTypeSelector);
		}
		public void doDeleteSelectedItems(){deleteSelectedItems();}
	}
	with sharing class PageReferenceFactory implements SkyEditor2.PageReferenceFactory.Implementation {
		public PageReference newPageReference(String url) {
			return new PageReference(url);
		}
	}
}