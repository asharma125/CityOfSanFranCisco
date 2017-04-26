global with sharing class Account_Detail_Fill_Page extends SkyEditor2.SkyEditorPageBaseWithSharing {
	
	public Account record {get{return (Account)mainRecord;}}
	public with sharing class CanvasException extends Exception {}

	public String recordTypeRecordsJSON_Contact {get; private set;}
	public String defaultRecordTypeId_Contact {get; private set;}
	public String metadataJSON_Contact {get; private set;}
	public String recordTypeRecordsJSON_Brand_Contact_Role_c {get; private set;}
	public String defaultRecordTypeId_Brand_Contact_Role_c {get; private set;}
	public String metadataJSON_Brand_Contact_Role_c {get; private set;}
	public String picklistValuesJSON_Contact_Salutation {get; private set;}
	public String picklistValuesJSON_Brand_Contact_Role_c_Req_Type_c {get; private set;}
	public String Component386_hidden { get; set; }
	
	
	public Component249 Component249 {get; private set;}
	public Component209 Component209 {get; private set;}
	public Component183 Component183 {get; private set;}
	public Component198 Component198 {get; private set;}
	public Component226 Component226 {get; private set;}
	public Component216 Component216 {get; private set;}
	public Component236 Component236 {get; private set;}
	public Component263 Component263 {get; private set;}
	public Component382 Component382 {get; private set;}
	{
	setApiVersion(31.0);
	}
	public Account_Detail_Fill_Page(ApexPages.StandardController controller) {
		super(controller);


		SObjectField f;

		f = Account.fields.Name;
		f = Account.fields.ParentId;
		f = Account.fields.Investor__c;
		f = Account.fields.OwnerId;
		f = Account.fields.Website;
		f = Account.fields.Phone;
		f = Account.fields.Tenant__c;
		f = Account.fields.REA_TEAMS__c;
		f = Account.fields.Addl_website__c;
		f = Account.fields.Addl_Phone_1__c;
		f = Account.fields.Agent__c;
		f = Account.fields.REA_Co_ID__c;
		f = Account.fields.Addl_Website_1__c;
		f = Account.fields.Addl_Phone_2__c;
		f = Account.fields.Vendor__c;
		f = Account.fields.Addl_Website_2__c;
		f = Account.fields.Email__c;
		f = Account.fields.Builder_Developer__c;
		f = Account.fields.Tweet__c;
		f = Account.fields.NumberOfEmployees;
		f = Account.fields.Latitude__c;
		f = Account.fields.ShippingStreet;
		f = Account.fields.BillingStreet;
		f = Account.fields.Longitude__c;
		f = Account.fields.ShippingState;
		f = Account.fields.BillingCity;
		f = Account.fields.geopointe__Geocode__c;
		f = Account.fields.ShippingCity;
		f = Account.fields.BillingState;
		f = Account.fields.ShippingCountry;
		f = Account.fields.BillingCountry;
		f = Account.fields.ShippingPostalCode;
		f = Account.fields.BillingPostalCode;
		f = Account.fields.Description;
		f = Account.fields.Company_Quality__c;
		f = Account.fields.Relation_with_Company__c;
		f = Account.fields.Brand_List__c;
		f = Account.fields.Business_Types__c;
		f = Account.fields.Info_Quality_by_BDF_Person__c;
		f = Account.fields.Dealer_Info__c;
		f = Account.fields.Local_Dealer__c;
		f = Account.fields.Deal_in_Farms__c;
		f = Account.fields.Pan_Card__c;
		f = Account.fields.Service_Tax_No__c;
		f = Contact.fields.MobilePhone;
		f = Contact.fields.Mobile_2__c;
		f = Contact.fields.Phone;
		f = Contact.fields.Email;
		f = Contact.fields.MailingStreet;
		f = Contact.fields.MailingCity;
		f = Contact.fields.MailingPostalCode;
		f = Contact.fields.MailingCountry;
		f = Brand_Contact_Role__c.fields.Name;
		f = Brand_Contact_Role__c.fields.Brand_Relationship__c;
		f = Brand_Contact_Role__c.fields.Decision_Maker__c;
		f = Opportunity.fields.Name;
		f = Opportunity.fields.StageName;
		f = Opportunity.fields.Amount;
		f = Opportunity.fields.CloseDate;
		f = Case.fields.CaseNumber;
		f = Case.fields.Subject;
		f = Case.fields.Priority;
		f = Case.fields.CreatedDate;
		f = Case.fields.Status;
		f = Requirement__c.fields.Name;
		f = Requirement__c.fields.CreatedDate;
		f = Requirement__c.fields.Deal_Marketing_Notes__c;
		f = Requirement__c.fields.Next_Contact_Date__c;
		f = Requirement__c.fields.Percentage__c;
		f = Requirement__c.fields.Req_Status__c;
		f = Location__c.fields.Name;
		f = Associate__c.fields.Name;
		f = Indus_Asset__c.fields.Name;
		f = Contact.fields.FirstName;
		f = Contact.fields.Salutation;
		f = Contact.fields.LastName;
		f = Brand_Contact_Role__c.fields.Contact__c;
		f = Brand_Contact_Role__c.fields.Req_Type__c;
		f = Brand_Contact_Role__c.fields.Prospect__c;
		f = Brand_Contact_Role__c.fields.Suspect__c;
		f = Brand_Contact_Role__c.fields.Desperate__c;
		f = Brand_Contact_Role__c.fields.RF_CAR_Notes__c;

		List<RecordTypeInfo> recordTypes;
		FilterMetadataResult filterResult;
		List<RecordType> recordTypeRecords_Contact = [SELECT Id, DeveloperName, NamespacePrefix FROM RecordType WHERE SobjectType = 'Contact'];
		Map<Id, RecordType> recordTypeMap_Contact = new Map<Id, RecordType>(recordTypeRecords_Contact);
		List<RecordType> availableRecordTypes_Contact = new List<RecordType>();
		recordTypes = SObjectType.Contact.getRecordTypeInfos();

		for (RecordTypeInfo t: recordTypes) {
			if (t.isDefaultRecordTypeMapping()) {
				defaultRecordTypeId_Contact = t.getRecordTypeId();
			}
			if (t.isAvailable()) {
				RecordType rtype = recordTypeMap_Contact.get(t.getRecordTypeId());
				if (rtype != null) {
					availableRecordTypes_Contact.add(rtype);
				}
			}
		}
		recordTypeRecordsJSON_Contact = System.JSON.serialize(availableRecordTypes_Contact);
		filterResult = filterMetadataJSON(
			System.JSON.deserializeUntyped('{"CustomObject":{"recordTypes":[]}}'),
			recordTypeFullNames(availableRecordTypes_Contact),
			Contact.SObjectType
		);
		metadataJSON_Contact = System.JSON.serialize(filterResult.data);
		picklistValuesJSON_Contact_Salutation = System.JSON.serialize(filterPricklistEntries(Contact.SObjectType.Salutation.getDescribe(), filterResult));
		List<RecordType> recordTypeRecords_Brand_Contact_Role_c = [SELECT Id, DeveloperName, NamespacePrefix FROM RecordType WHERE SobjectType = 'Brand_Contact_Role__c'];
		Map<Id, RecordType> recordTypeMap_Brand_Contact_Role_c = new Map<Id, RecordType>(recordTypeRecords_Brand_Contact_Role_c);
		List<RecordType> availableRecordTypes_Brand_Contact_Role_c = new List<RecordType>();
		recordTypes = SObjectType.Brand_Contact_Role__c.getRecordTypeInfos();

		for (RecordTypeInfo t: recordTypes) {
			if (t.isDefaultRecordTypeMapping()) {
				defaultRecordTypeId_Brand_Contact_Role_c = t.getRecordTypeId();
			}
			if (t.isAvailable()) {
				RecordType rtype = recordTypeMap_Brand_Contact_Role_c.get(t.getRecordTypeId());
				if (rtype != null) {
					availableRecordTypes_Brand_Contact_Role_c.add(rtype);
				}
			}
		}
		recordTypeRecordsJSON_Brand_Contact_Role_c = System.JSON.serialize(availableRecordTypes_Brand_Contact_Role_c);
		filterResult = filterMetadataJSON(
			System.JSON.deserializeUntyped('{"CustomObject":{"recordTypes":[]}}'),
			recordTypeFullNames(availableRecordTypes_Brand_Contact_Role_c),
			Brand_Contact_Role__c.SObjectType
		);
		metadataJSON_Brand_Contact_Role_c = System.JSON.serialize(filterResult.data);
		picklistValuesJSON_Brand_Contact_Role_c_Req_Type_c = System.JSON.serialize(filterPricklistEntries(Brand_Contact_Role__c.SObjectType.Req_Type__c.getDescribe(), filterResult));
		try {
			mainSObjectType = Account.SObjectType;
			setPageReferenceFactory(new PageReferenceFactory());
			
			mainQuery = new SkyEditor2.Query('Account');
			mainQuery.addField('Name');
			mainQuery.addField('ParentId');
			mainQuery.addField('Investor__c');
			mainQuery.addField('OwnerId');
			mainQuery.addField('Website');
			mainQuery.addField('Phone');
			mainQuery.addField('Tenant__c');
			mainQuery.addField('REA_TEAMS__c');
			mainQuery.addField('Addl_website__c');
			mainQuery.addField('Addl_Phone_1__c');
			mainQuery.addField('Agent__c');
			mainQuery.addField('REA_Co_ID__c');
			mainQuery.addField('Addl_Website_1__c');
			mainQuery.addField('Addl_Phone_2__c');
			mainQuery.addField('Vendor__c');
			mainQuery.addField('Addl_Website_2__c');
			mainQuery.addField('Email__c');
			mainQuery.addField('Builder_Developer__c');
			mainQuery.addField('Tweet__c');
			mainQuery.addField('NumberOfEmployees');
			mainQuery.addField('Latitude__c');
			mainQuery.addField('ShippingStreet');
			mainQuery.addField('BillingStreet');
			mainQuery.addField('Longitude__c');
			mainQuery.addField('ShippingState');
			mainQuery.addField('BillingCity');
			mainQuery.addField('geopointe__Geocode__c');
			mainQuery.addField('ShippingCity');
			mainQuery.addField('BillingState');
			mainQuery.addField('ShippingCountry');
			mainQuery.addField('BillingCountry');
			mainQuery.addField('ShippingPostalCode');
			mainQuery.addField('BillingPostalCode');
			mainQuery.addField('Description');
			mainQuery.addField('Company_Quality__c');
			mainQuery.addField('Relation_with_Company__c');
			mainQuery.addField('Brand_List__c');
			mainQuery.addField('Business_Types__c');
			mainQuery.addField('Info_Quality_by_BDF_Person__c');
			mainQuery.addField('Dealer_Info__c');
			mainQuery.addField('Local_Dealer__c');
			mainQuery.addField('Deal_in_Farms__c');
			mainQuery.addField('Pan_Card__c');
			mainQuery.addField('Service_Tax_No__c');
			mainQuery.addWhere('Id', mainRecord.Id, SkyEditor2.WhereOperator.Eq)
				.limitRecords(1);
			
			
			
			mode = SkyEditor2.LayoutMode.LayoutSalesforce; 
			
			queryMap = new Map<String, SkyEditor2.Query>();
			SkyEditor2.Query query;
			
			Component249 = new Component249(new List<Contact>(), new List<Component249Item>(), new List<Contact>(), null);
			listItemHolders.put('Component249', Component249);
			query = new SkyEditor2.Query('Contact');
			query.addField('LastName');
			query.addField('MobilePhone');
			query.addField('Mobile_2__c');
			query.addField('Phone');
			query.addField('Email');
			query.addField('MailingStreet');
			query.addField('MailingCity');
			query.addField('MailingPostalCode');
			query.addField('MailingCountry');
			query.addField('FirstName');
			query.addField('Salutation');
			query.addWhere('AccountId', mainRecord.Id, SkyEditor2.WhereOperator.Eq);
			relationFields.put('Component249', 'AccountId');
			Component249.queryRelatedEvent = False;
			query.limitRecords(500 + 1);
			queryMap.put('Component249', query);
			
			Component209 = new Component209(new List<Brand_Contact_Role__c>(), new List<Component209Item>(), new List<Brand_Contact_Role__c>(), null);
			listItemHolders.put('Component209', Component209);
			query = new SkyEditor2.Query('Brand_Contact_Role__c');
			query.addField('Name');
			query.addField('Brand_Relationship__c');
			query.addField('Decision_Maker__c');
			query.addField('Contact__c');
			query.addWhere('Company__c', mainRecord.Id, SkyEditor2.WhereOperator.Eq);
			relationFields.put('Component209', 'Company__c');
			Component209.queryRelatedEvent = False;
			query.limitRecords(500);
			queryMap.put('Component209', query);
			
			Component183 = new Component183(new List<Opportunity>(), new List<Component183Item>(), new List<Opportunity>(), null);
			listItemHolders.put('Component183', Component183);
			query = new SkyEditor2.Query('Opportunity');
			query.addField('Name');
			query.addField('StageName');
			query.addField('Amount');
			query.addField('CloseDate');
			query.addWhere('AccountId', mainRecord.Id, SkyEditor2.WhereOperator.Eq);
			relationFields.put('Component183', 'AccountId');
			Component183.queryRelatedEvent = False;
			query.limitRecords(500);
			queryMap.put('Component183', query);
			
			Component198 = new Component198(new List<Case>(), new List<Component198Item>(), new List<Case>(), null);
			listItemHolders.put('Component198', Component198);
			query = new SkyEditor2.Query('Case');
			query.addField('Subject');
			query.addField('Priority');
			query.addField('Status');
			query.addFieldAsOutput('CaseNumber');
			query.addFieldAsOutput('CreatedDate');
			query.addWhere('AccountId', mainRecord.Id, SkyEditor2.WhereOperator.Eq);
			relationFields.put('Component198', 'AccountId');
			Component198.queryRelatedEvent = False;
			query.limitRecords(500);
			queryMap.put('Component198', query);
			
			Component226 = new Component226(new List<Requirement__c>(), new List<Component226Item>(), new List<Requirement__c>(), null);
			listItemHolders.put('Component226', Component226);
			query = new SkyEditor2.Query('Requirement__c');
			query.addField('Name');
			query.addField('Deal_Marketing_Notes__c');
			query.addField('Next_Contact_Date__c');
			query.addField('Percentage__c');
			query.addField('Req_Status__c');
			query.addFieldAsOutput('CreatedDate');
			query.addFieldAsOutput('RecordTypeId');
			query.addWhere('Company__c', mainRecord.Id, SkyEditor2.WhereOperator.Eq);
			relationFields.put('Component226', 'Company__c');
			Component226.queryRelatedEvent = False;
			query.limitRecords(500);
			queryMap.put('Component226', query);
			
			Component216 = new Component216(new List<Location__c>(), new List<Component216Item>(), new List<Location__c>(), null);
			listItemHolders.put('Component216', Component216);
			query = new SkyEditor2.Query('Location__c');
			query.addField('Name');
			query.addWhere('Builder_Link__c', mainRecord.Id, SkyEditor2.WhereOperator.Eq);
			relationFields.put('Component216', 'Builder_Link__c');
			Component216.queryRelatedEvent = False;
			query.limitRecords(500);
			queryMap.put('Component216', query);
			
			Component236 = new Component236(new List<Associate__c>(), new List<Component236Item>(), new List<Associate__c>(), null);
			listItemHolders.put('Component236', Component236);
			query = new SkyEditor2.Query('Associate__c');
			query.addField('Name');
			query.addWhere('Associate_Company__c', mainRecord.Id, SkyEditor2.WhereOperator.Eq);
			relationFields.put('Component236', 'Associate_Company__c');
			Component236.queryRelatedEvent = False;
			query.limitRecords(500);
			queryMap.put('Component236', query);
			
			Component263 = new Component263(new List<Indus_Asset__c>(), new List<Component263Item>(), new List<Indus_Asset__c>(), null);
			listItemHolders.put('Component263', Component263);
			query = new SkyEditor2.Query('Indus_Asset__c');
			query.addField('Name');
			query.addWhere('Vendor_Account__c', mainRecord.Id, SkyEditor2.WhereOperator.Eq);
			relationFields.put('Component263', 'Vendor_Account__c');
			Component263.queryRelatedEvent = False;
			query.limitRecords(500);
			queryMap.put('Component263', query);
			
			Component382 = new Component382(new List<Brand_Contact_Role__c>(), new List<Component382Item>(), new List<Brand_Contact_Role__c>(), null);
			listItemHolders.put('Component382', Component382);
			query = new SkyEditor2.Query('Brand_Contact_Role__c');
			query.addField('Req_Type__c');
			query.addField('Prospect__c');
			query.addField('Suspect__c');
			query.addField('Desperate__c');
			query.addField('RF_CAR_Notes__c');
			query.addWhere('Company__c', mainRecord.Id, SkyEditor2.WhereOperator.Eq);
			relationFields.put('Component382', 'Company__c');
			Component382.queryRelatedEvent = False;
			query.limitRecords(500);
			queryMap.put('Component382', query);
			
			registRelatedList('Contacts', 'Component249');
			registRelatedList('Brand_Contact_Roles1__r', 'Component209');
			registRelatedList('Opportunities', 'Component183');
			registRelatedList('Cases', 'Component198');
			registRelatedList('Requirements__r', 'Component226');
			registRelatedList('Locations__r', 'Component216');
			registRelatedList('Associates__r', 'Component236');
			registRelatedList('Indus_Assets__r', 'Component263');
			registRelatedList('Brand_Contact_Roles1__r', 'Component382');
			
			p_showHeader = true;
			p_sidebar = true;
			init();
			
			Component249.extender = this.extender;
			Component209.extender = this.extender;
			Component183.extender = this.extender;
			Component198.extender = this.extender;
			Component226.extender = this.extender;
			Component216.extender = this.extender;
			Component236.extender = this.extender;
			Component263.extender = this.extender;
			Component382.extender = this.extender;
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

	global with sharing class Component249Item extends SkyEditor2.ListItem {
		public Contact record{get; private set;}
		@TestVisible
		Component249Item(Component249 holder, Contact record, SkyEditor2.RecordTypeSelector recordTypeSelector) {
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
	global with sharing  class Component249 extends SkyEditor2.ListItemHolder {
		public List<Component249Item> items{get; private set;}
		@TestVisible
			Component249(List<SObject> records, List<SkyEditor2.ListItem> items, List<SObject> deleteRecords, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(records, items, deleteRecords, recordTypeSelector);
			this.items = (List<Component249Item>)items;
		}
		global override SkyEditor2.ListItem create(SObject data) {
			return new Component249Item(this, (Contact)data, recordTypeSelector);
		}
		public void doDeleteSelectedItems(){deleteSelectedItems();}
	}
	global with sharing class Component209Item extends SkyEditor2.ListItem {
		public Brand_Contact_Role__c record{get; private set;}
		@TestVisible
		Component209Item(Component209 holder, Brand_Contact_Role__c record, SkyEditor2.RecordTypeSelector recordTypeSelector) {
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
	global with sharing  class Component209 extends SkyEditor2.ListItemHolder {
		public List<Component209Item> items{get; private set;}
		@TestVisible
			Component209(List<SObject> records, List<SkyEditor2.ListItem> items, List<SObject> deleteRecords, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(records, items, deleteRecords, recordTypeSelector);
			this.items = (List<Component209Item>)items;
		}
		global override SkyEditor2.ListItem create(SObject data) {
			return new Component209Item(this, (Brand_Contact_Role__c)data, recordTypeSelector);
		}
		public void doDeleteSelectedItems(){deleteSelectedItems();}
	}
	global with sharing class Component183Item extends SkyEditor2.ListItem {
		public Opportunity record{get; private set;}
		@TestVisible
		Component183Item(Component183 holder, Opportunity record, SkyEditor2.RecordTypeSelector recordTypeSelector) {
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
	global with sharing  class Component183 extends SkyEditor2.ListItemHolder {
		public List<Component183Item> items{get; private set;}
		@TestVisible
			Component183(List<SObject> records, List<SkyEditor2.ListItem> items, List<SObject> deleteRecords, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(records, items, deleteRecords, recordTypeSelector);
			this.items = (List<Component183Item>)items;
		}
		global override SkyEditor2.ListItem create(SObject data) {
			return new Component183Item(this, (Opportunity)data, recordTypeSelector);
		}
		public void doDeleteSelectedItems(){deleteSelectedItems();}
	}
	global with sharing class Component198Item extends SkyEditor2.ListItem {
		public Case record{get; private set;}
		@TestVisible
		Component198Item(Component198 holder, Case record, SkyEditor2.RecordTypeSelector recordTypeSelector) {
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
	global with sharing  class Component198 extends SkyEditor2.ListItemHolder {
		public List<Component198Item> items{get; private set;}
		@TestVisible
			Component198(List<SObject> records, List<SkyEditor2.ListItem> items, List<SObject> deleteRecords, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(records, items, deleteRecords, recordTypeSelector);
			this.items = (List<Component198Item>)items;
		}
		global override SkyEditor2.ListItem create(SObject data) {
			return new Component198Item(this, (Case)data, recordTypeSelector);
		}
		public void doDeleteSelectedItems(){deleteSelectedItems();}
	}
	global with sharing class Component226Item extends SkyEditor2.ListItem {
		public Requirement__c record{get; private set;}
		@TestVisible
		Component226Item(Component226 holder, Requirement__c record, SkyEditor2.RecordTypeSelector recordTypeSelector) {
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
	global with sharing  class Component226 extends SkyEditor2.ListItemHolder {
		public List<Component226Item> items{get; private set;}
		@TestVisible
			Component226(List<SObject> records, List<SkyEditor2.ListItem> items, List<SObject> deleteRecords, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(records, items, deleteRecords, recordTypeSelector);
			this.items = (List<Component226Item>)items;
		}
		global override SkyEditor2.ListItem create(SObject data) {
			return new Component226Item(this, (Requirement__c)data, recordTypeSelector);
		}
		public void doDeleteSelectedItems(){deleteSelectedItems();}
	}
	global with sharing class Component216Item extends SkyEditor2.ListItem {
		public Location__c record{get; private set;}
		@TestVisible
		Component216Item(Component216 holder, Location__c record, SkyEditor2.RecordTypeSelector recordTypeSelector) {
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
	global with sharing  class Component216 extends SkyEditor2.ListItemHolder {
		public List<Component216Item> items{get; private set;}
		@TestVisible
			Component216(List<SObject> records, List<SkyEditor2.ListItem> items, List<SObject> deleteRecords, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(records, items, deleteRecords, recordTypeSelector);
			this.items = (List<Component216Item>)items;
		}
		global override SkyEditor2.ListItem create(SObject data) {
			return new Component216Item(this, (Location__c)data, recordTypeSelector);
		}
		public void doDeleteSelectedItems(){deleteSelectedItems();}
	}
	global with sharing class Component236Item extends SkyEditor2.ListItem {
		public Associate__c record{get; private set;}
		@TestVisible
		Component236Item(Component236 holder, Associate__c record, SkyEditor2.RecordTypeSelector recordTypeSelector) {
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
	global with sharing  class Component236 extends SkyEditor2.ListItemHolder {
		public List<Component236Item> items{get; private set;}
		@TestVisible
			Component236(List<SObject> records, List<SkyEditor2.ListItem> items, List<SObject> deleteRecords, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(records, items, deleteRecords, recordTypeSelector);
			this.items = (List<Component236Item>)items;
		}
		global override SkyEditor2.ListItem create(SObject data) {
			return new Component236Item(this, (Associate__c)data, recordTypeSelector);
		}
		public void doDeleteSelectedItems(){deleteSelectedItems();}
	}
	global with sharing class Component263Item extends SkyEditor2.ListItem {
		public Indus_Asset__c record{get; private set;}
		@TestVisible
		Component263Item(Component263 holder, Indus_Asset__c record, SkyEditor2.RecordTypeSelector recordTypeSelector) {
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
	global with sharing  class Component263 extends SkyEditor2.ListItemHolder {
		public List<Component263Item> items{get; private set;}
		@TestVisible
			Component263(List<SObject> records, List<SkyEditor2.ListItem> items, List<SObject> deleteRecords, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(records, items, deleteRecords, recordTypeSelector);
			this.items = (List<Component263Item>)items;
		}
		global override SkyEditor2.ListItem create(SObject data) {
			return new Component263Item(this, (Indus_Asset__c)data, recordTypeSelector);
		}
		public void doDeleteSelectedItems(){deleteSelectedItems();}
	}
	global with sharing class Component382Item extends SkyEditor2.ListItem {
		public Brand_Contact_Role__c record{get; private set;}
		@TestVisible
		Component382Item(Component382 holder, Brand_Contact_Role__c record, SkyEditor2.RecordTypeSelector recordTypeSelector) {
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
	global with sharing  class Component382 extends SkyEditor2.ListItemHolder {
		public List<Component382Item> items{get; private set;}
		@TestVisible
			Component382(List<SObject> records, List<SkyEditor2.ListItem> items, List<SObject> deleteRecords, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(records, items, deleteRecords, recordTypeSelector);
			this.items = (List<Component382Item>)items;
		}
		global override SkyEditor2.ListItem create(SObject data) {
			return new Component382Item(this, (Brand_Contact_Role__c)data, recordTypeSelector);
		}
		public void doDeleteSelectedItems(){deleteSelectedItems();}
	}
	public String getComponent322OptionsJS() {
		return SkyEditor2.JSON.stringify(SkyEditor2.PicklistValueSelector.getEntries(
		Contact.getSObjectType(),
		SObjectType.Contact.fields.Salutation.getSObjectField()
		));
		}
	public String getComponent386OptionsJS() {
		return SkyEditor2.JSON.stringify(SkyEditor2.PicklistValueSelector.getEntries(
		Brand_Contact_Role__c.getSObjectType(),
		SObjectType.Brand_Contact_Role__c.fields.Req_Type__c.getSObjectField()
		));
		}
	@TestVisible		static Set<String> recordTypeFullNames(RecordType[] records) {
		Set<String> result = new Set<String>();
		for (RecordType r : records) {
			result.add(r.DeveloperName);
			if (r.NamespacePrefix != null) {
				result.add(r.NamespacePrefix + '__' + r.DeveloperName);
			}
		}
		return result;
	}
	
	@TestVisible		static FilterMetadataResult filterMetadataJSON(Object metadata, Set<String> recordTypeFullNames, SObjectType soType) {
		Map<String, Object> metadataMap = (Map<String, Object>) metadata;
		Map<String, Object> customObject = (Map<String, Object>) metadataMap.get('CustomObject');
		List<Object> recordTypes = (List<Object>) customObject.get('recordTypes');
		Map<String, Set<String>> availableEntries = new Map<String, Set<String>>();
		for (Integer i = recordTypes.size() - 1; i >= 0; i--) {
			Map<String, Object> recordType = (Map<String, Object>)recordTypes[i];
			String fullName = (String)recordType.get('fullName');
			if (! recordTypeFullNames.contains(fullName)) {
				recordTypes.remove(i);
			} else {
				addAll(availableEntries, getOutEntries(recordType, soType));
			}
		}	
		return new FilterMetadataResult(metadataMap, availableEntries, recordTypes.size() == 0);
	}
	public class FilterMetadataResult {
		public Map<String, Object> data {get; private set;}
		public Map<String, Set<String>> availableEntries {get; private set;}
		public Boolean master {get; private set;}
		public FilterMetadataResult(Map<String, Object> data, Map<String, Set<String>> availableEntries, Boolean master) {
			this.data = data;
			this.availableEntries = availableEntries;
			this.master = master;
		}
	}
	
	static void addAll(Map<String, Set<String>> toMap, Map<String, Set<String>> fromMap) {
		for (String key : fromMap.keySet()) {
			Set<String> fromSet = fromMap.get(key);
			Set<String> toSet = toMap.get(key);
			if (toSet == null) {
				toSet = new Set<String>();
				toMap.put(key, toSet);
			}
			toSet.addAll(fromSet);
		}
	}

	static Map<String, Set<String>> getOutEntries(Map<String, Object> recordType, SObjectType soType) {
		Map<String, Set<String>> result = new Map<String, Set<String>>();
		List<Object> entries = (List<Object>)recordType.get('picklistValues');
		Map<String, SObjectField> fields = soType.getDescribe().fields.getMap();
		for (Object e : entries) {
			Map<String, Object> entry = (Map<String, Object>) e;
			String picklist = (String) entry.get('picklist');
			SObjectField f = fields.get(picklist);
			List<Object> values = (List<Object>)(entry.get('values'));
			if (f != null && f.getDescribe().isAccessible()) {
				Set<String> entrySet = new Set<String>();
				for (Object v : values) {
					Map<String, Object> value = (Map<String, Object>) v;
					entrySet.add(EncodingUtil.urlDecode((String)value.get('fullName'), 'utf-8'));
				}
				result.put(picklist, entrySet);
			} else { 
				values.clear(); 
			}
		}
		return result;
	}
	
	static List<PicklistEntry> filterPricklistEntries(DescribeFieldResult f, FilterMetadataResult parseResult) {
		List<PicklistEntry> all = f.getPicklistValues();
		if (parseResult.master) {
			return all;
		}
		Set<String> availables = parseResult.availableEntries.get(f.getName());
		List<PicklistEntry> result = new List<PicklistEntry>();
		if(availables == null) return result;
		for (PicklistEntry e : all) {
			if (e.isActive() && availables.contains(e.getValue())) {
				result.add(e);
			}
		}
		return result;
	}
	
	with sharing class PageReferenceFactory implements SkyEditor2.PageReferenceFactory.Implementation {
		public PageReference newPageReference(String url) {
			return new PageReference(url);
		}
	}
}