global with sharing class Account_Wizard_Page extends SkyEditor2.SkyEditorPageBaseWithSharing {
	
	public Account record {get{return (Account)mainRecord;}}
	public with sharing class CanvasException extends Exception {}

	public String recordTypeRecordsJSON_Contact {get; private set;}
	public String defaultRecordTypeId_Contact {get; private set;}
	public String metadataJSON_Contact {get; private set;}
	public String picklistValuesJSON_Contact_REA_Teams_c {get; private set;}
	public String picklistValuesJSON_Contact_Rquirement_Type_c {get; private set;}
	public String picklistValuesJSON_Contact_Floor_Preferred_c {get; private set;}
	public String picklistValuesJSON_Contact_Vendor_Type_c {get; private set;}
	public String Component217_hidden { get; set; }
	public String Component218_hidden { get; set; }
	public Boolean Component543_rendered {get{ return record.Agent__c==true;}}
	
	
	public Contact_AccountId Contact_AccountId {get; private set;}
	public Associate_c_Associate_Company_c Associate_c_Associate_Company_c {get; private set;}
	public Brand_Contact_Role_c_Company_c Brand_Contact_Role_c_Company_c {get; private set;}
	{
	setApiVersion(31.0);
	}
	public Account_Wizard_Page(ApexPages.StandardController controller) {
		super(controller);

		lastPageNumber = 6;
		pagesMap.put(1,'Account_Wizard_Page_1');
		pagesMap.put(2,'Agent_Contact_Info');
		pagesMap.put(3,'Tenant_Contact_Info');
		pagesMap.put(4,'Investor_Contact_Info');
		pagesMap.put(5,'Vendor_Contact_Info');
		pagesMap.put(6,'Account_Wizard_Summary');

		SObjectField f;

		f = Account.fields.Name;
		f = Account.fields.Phone;
		f = Account.fields.Website;
		f = Account.fields.Investor__c;
		f = Account.fields.REA_TEAMS__c;
		f = Account.fields.BillingStreet;
		f = Account.fields.Addl_Phone_1__c;
		f = Account.fields.Addl_website__c;
		f = Account.fields.Tenant__c;
		f = Account.fields.OwnerId;
		f = Account.fields.BillingCity;
		f = Account.fields.Addl_Phone_2__c;
		f = Account.fields.Addl_Website_1__c;
		f = Account.fields.Agent__c;
		f = Account.fields.BillingState;
		f = Account.fields.Addl_Website_2__c;
		f = Account.fields.Vendor__c;
		f = Account.fields.BillingPostalCode;
		f = Account.fields.BillingCountry;
		f = Account.fields.Local_Dealer__c;
		f = Account.fields.Dealer_Info__c;
		f = Account.fields.Company_Quality__c;
		f = Account.fields.Relation_with_Company__c;
		f = Contact.fields.Salutation;
		f = Contact.fields.FirstName;
		f = Contact.fields.LastName;
		f = Contact.fields.MobilePhone;
		f = Contact.fields.Mobile_2__c;
		f = Contact.fields.Land_Line_No__c;
		f = Contact.fields.Email;
		f = Contact.fields.Personal_Email_Id__c;
		f = Contact.fields.REA_Teams__c;
		f = Contact.fields.Contact_Verified_Date__c;
		f = Contact.fields.Agent__c;
		f = Contact.fields.Retail_Specialist_Dealer__c;
		f = Contact.fields.Commercial_Leasing__c;
		f = Contact.fields.Dealer_Closeness__c;
		f = Contact.fields.Retail_Specialist__c;
		f = Contact.fields.Commercial_Effectiveness__c;
		f = Contact.fields.Dealer_Company__c;
		f = Contact.fields.Retail_Effectiveness__c;
		f = Contact.fields.Deals_in_Industrial__c;
		f = Contact.fields.Dealer_Comment__c;
		f = Contact.fields.Industrial_Effectiveness__c;
		f = Contact.fields.Agent_Area_s__c;
		f = Associate__c.fields.Associate_Name__c;
		f = Associate__c.fields.Preferred_Associate__c;
		f = Associate__c.fields.Direct_Deal__c;
		f = Associate__c.fields.Disclosure__c;
		f = Associate__c.fields.Power_Meter__c;
		f = Associate__c.fields.Associate_Location__c;
		f = Associate__c.fields.Property__c;
		f = Associate__c.fields.Requirement__c;
		f = Associate__c.fields.Shown_To__c;
		f = Associate__c.fields.Dealer_Market_Comment__c;
		f = Contact.fields.Suspect__c;
		f = Contact.fields.Min_Area__c;
		f = Contact.fields.Rquirement_Type__c;
		f = Contact.fields.RF_CAR_Notes__c;
		f = Contact.fields.Prospect__c;
		f = Contact.fields.Max_Area_Sq_Ft__c;
		f = Contact.fields.Floor_Preferred__c;
		f = Contact.fields.Desperate__c;
		f = Contact.fields.Min_Budget_Rs__c;
		f = Contact.fields.Running_Restaurant_Takeover__c;
		f = Contact.fields.Max_Budget__c;
		f = Brand_Contact_Role__c.fields.Name;
		f = Brand_Contact_Role__c.fields.Decision_Maker__c;
		f = Brand_Contact_Role__c.fields.Brand_Relationship__c;
		f = Brand_Contact_Role__c.fields.Contact__c;
		f = Brand_Contact_Role__c.fields.NEW_BRAND__c;
		f = Brand_Contact_Role__c.fields.Notes__c;
		f = Contact.fields.Investor__c;
		f = Contact.fields.INV_Prospect__c;
		f = Contact.fields.Min_Area_Req_Sq_Ft__c;
		f = Contact.fields.INV_Property_Type__c;
		f = Contact.fields.Plot_Area_Req_Min__c;
		f = Contact.fields.Rented_Investor__c;
		f = Contact.fields.INV_Desperate__c;
		f = Contact.fields.Max_Area_Req_Sq_Ft__c;
		f = Contact.fields.INV_Property_Sub_Type__c;
		f = Contact.fields.Plot_Area_Req_Max__c;
		f = Contact.fields.ROI__c;
		f = Contact.fields.INV_Min_Budget__c;
		f = Contact.fields.INV_CAR_Notes__c;
		f = Contact.fields.No_of_Bedrooms__c;
		f = Contact.fields.Advance_Cheque__c;
		f = Contact.fields.INV_Max_Budget__c;
		f = Contact.fields.Vendor__c;
		f = Contact.fields.Vendor_Type__c;
		f = Associate__c.fields.Name;

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
		picklistValuesJSON_Contact_REA_Teams_c = System.JSON.serialize(filterPricklistEntries(Contact.SObjectType.REA_Teams__c.getDescribe(), filterResult));
		picklistValuesJSON_Contact_Rquirement_Type_c = System.JSON.serialize(filterPricklistEntries(Contact.SObjectType.Rquirement_Type__c.getDescribe(), filterResult));
		picklistValuesJSON_Contact_Floor_Preferred_c = System.JSON.serialize(filterPricklistEntries(Contact.SObjectType.Floor_Preferred__c.getDescribe(), filterResult));
		picklistValuesJSON_Contact_Vendor_Type_c = System.JSON.serialize(filterPricklistEntries(Contact.SObjectType.Vendor_Type__c.getDescribe(), filterResult));
		try {
			mainSObjectType = Account.SObjectType;
			setPageReferenceFactory(new PageReferenceFactory());
			
			recordTypeIdMap = SkyEditor2.Util.SetRecordTypesMap('Account');
			mainQuery = new SkyEditor2.Query('Account');
			mainQuery.addField('Name');
			mainQuery.addField('Phone');
			mainQuery.addField('Website');
			mainQuery.addField('Investor__c');
			mainQuery.addField('REA_TEAMS__c');
			mainQuery.addField('BillingStreet');
			mainQuery.addField('Addl_Phone_1__c');
			mainQuery.addField('Addl_website__c');
			mainQuery.addField('Tenant__c');
			mainQuery.addField('OwnerId');
			mainQuery.addField('BillingCity');
			mainQuery.addField('Addl_Phone_2__c');
			mainQuery.addField('Addl_Website_1__c');
			mainQuery.addField('Agent__c');
			mainQuery.addField('BillingState');
			mainQuery.addField('Addl_Website_2__c');
			mainQuery.addField('Vendor__c');
			mainQuery.addField('BillingPostalCode');
			mainQuery.addField('BillingCountry');
			mainQuery.addField('Local_Dealer__c');
			mainQuery.addField('Dealer_Info__c');
			mainQuery.addField('Company_Quality__c');
			mainQuery.addField('Relation_with_Company__c');
			mainQuery.addFieldAsOutput('Name');
			mainQuery.addFieldAsOutput('Phone');
			mainQuery.addFieldAsOutput('Website');
			mainQuery.addFieldAsOutput('Investor__c');
			mainQuery.addFieldAsOutput('REA_TEAMS__c');
			mainQuery.addFieldAsOutput('BillingStreet');
			mainQuery.addFieldAsOutput('Addl_Phone_1__c');
			mainQuery.addFieldAsOutput('Addl_website__c');
			mainQuery.addFieldAsOutput('Tenant__c');
			mainQuery.addFieldAsOutput('OwnerId');
			mainQuery.addFieldAsOutput('BillingCity');
			mainQuery.addFieldAsOutput('Addl_Phone_2__c');
			mainQuery.addFieldAsOutput('Addl_Website_1__c');
			mainQuery.addFieldAsOutput('Agent__c');
			mainQuery.addFieldAsOutput('BillingState');
			mainQuery.addFieldAsOutput('Addl_Website_2__c');
			mainQuery.addFieldAsOutput('Vendor__c');
			mainQuery.addFieldAsOutput('BillingPostalCode');
			mainQuery.addFieldAsOutput('BillingCountry');
			mainQuery.addWhere('Id', mainRecord.Id, SkyEditor2.WhereOperator.Eq)
				.limitRecords(1);
			
			
			queryMap = new Map<String, SkyEditor2.Query>();
			SkyEditor2.Query query;
			
			Contact_AccountId = new Contact_AccountId(new List<Contact>(), new List<Contact_AccountIdItem>(), new List<Contact>(), null);
			listItemHolders.put('Contact_AccountId', Contact_AccountId);
			query = new SkyEditor2.Query('Contact');
			query.addField('Salutation');
			query.addField('FirstName');
			query.addField('LastName');
			query.addField('MobilePhone');
			query.addField('Mobile_2__c');
			query.addField('Land_Line_No__c');
			query.addField('Email');
			query.addField('Personal_Email_Id__c');
			query.addField('REA_Teams__c');
			query.addField('Contact_Verified_Date__c');
			query.addField('Agent__c');
			query.addField('Retail_Specialist_Dealer__c');
			query.addField('Commercial_Leasing__c');
			query.addField('Dealer_Closeness__c');
			query.addField('Retail_Specialist__c');
			query.addField('Commercial_Effectiveness__c');
			query.addField('Dealer_Company__c');
			query.addField('Retail_Effectiveness__c');
			query.addField('Deals_in_Industrial__c');
			query.addField('Dealer_Comment__c');
			query.addField('Industrial_Effectiveness__c');
			query.addField('Agent_Area_s__c');
			query.addField('Investor__c');
			query.addField('INV_Prospect__c');
			query.addField('Min_Area_Req_Sq_Ft__c');
			query.addField('INV_Property_Type__c');
			query.addField('Plot_Area_Req_Min__c');
			query.addField('Rented_Investor__c');
			query.addField('INV_Desperate__c');
			query.addField('Max_Area_Req_Sq_Ft__c');
			query.addField('INV_Property_Sub_Type__c');
			query.addField('Plot_Area_Req_Max__c');
			query.addField('ROI__c');
			query.addField('INV_Min_Budget__c');
			query.addField('INV_CAR_Notes__c');
			query.addField('No_of_Bedrooms__c');
			query.addField('Advance_Cheque__c');
			query.addField('INV_Max_Budget__c');
			query.addField('Vendor__c');
			query.addField('Vendor_Type__c');
			query.addFieldAsOutput('REA_Teams__c');
			query.addFieldAsOutput('Contact_Verified_Date__c');
			query.addFieldAsOutput('Suspect__c');
			query.addFieldAsOutput('Min_Area__c');
			query.addFieldAsOutput('Rquirement_Type__c');
			query.addFieldAsOutput('RF_CAR_Notes__c');
			query.addFieldAsOutput('Prospect__c');
			query.addFieldAsOutput('Max_Area_Sq_Ft__c');
			query.addFieldAsOutput('Floor_Preferred__c');
			query.addFieldAsOutput('Desperate__c');
			query.addFieldAsOutput('Min_Budget_Rs__c');
			query.addFieldAsOutput('Running_Restaurant_Takeover__c');
			query.addFieldAsOutput('Max_Budget__c');
			query.addFieldAsOutput('Salutation');
			query.addFieldAsOutput('FirstName');
			query.addFieldAsOutput('LastName');
			query.addFieldAsOutput('MobilePhone');
			query.addFieldAsOutput('Mobile_2__c');
			query.addFieldAsOutput('Land_Line_No__c');
			query.addFieldAsOutput('Email');
			query.addFieldAsOutput('Personal_Email_Id__c');
			query.addFieldAsOutput('Agent__c');
			query.addFieldAsOutput('Retail_Specialist_Dealer__c');
			query.addFieldAsOutput('Commercial_Leasing__c');
			query.addFieldAsOutput('Dealer_Closeness__c');
			query.addFieldAsOutput('Retail_Specialist__c');
			query.addFieldAsOutput('Commercial_Effectiveness__c');
			query.addFieldAsOutput('Dealer_Company__c');
			query.addFieldAsOutput('Retail_Effectiveness__c');
			query.addFieldAsOutput('Deals_in_Industrial__c');
			query.addFieldAsOutput('Dealer_Comment__c');
			query.addFieldAsOutput('Industrial_Effectiveness__c');
			query.addWhere('AccountId', mainRecord.Id, SkyEditor2.WhereOperator.Eq);
			relationFields.put('Contact_AccountId', 'AccountId');
			query.limitRecords(500);
			queryMap.put('Contact_AccountId', query);
			
			registRelatedList('Contacts', 'Contact_AccountId');
			
			
			Associate_c_Associate_Company_c = new Associate_c_Associate_Company_c(new List<Associate__c>(), new List<Associate_c_Associate_Company_cItem>(), new List<Associate__c>(), null);
			listItemHolders.put('Associate_c_Associate_Company_c', Associate_c_Associate_Company_c);
			query = new SkyEditor2.Query('Associate__c');
			query.addField('Associate_Name__c');
			query.addFieldAsOutput('Preferred_Associate__c');
			query.addFieldAsOutput('Direct_Deal__c');
			query.addFieldAsOutput('Disclosure__c');
			query.addFieldAsOutput('Power_Meter__c');
			query.addFieldAsOutput('Associate_Location__c');
			query.addFieldAsOutput('Property__c');
			query.addFieldAsOutput('Requirement__c');
			query.addFieldAsOutput('Shown_To__c');
			query.addFieldAsOutput('Dealer_Market_Comment__c');
			query.addFieldAsOutput('Name');
			query.addWhere('Associate_Company__c', mainRecord.Id, SkyEditor2.WhereOperator.Eq);
			relationFields.put('Associate_c_Associate_Company_c', 'Associate_Company__c');
			query.limitRecords(500);
			queryMap.put('Associate_c_Associate_Company_c', query);
			
			registRelatedList('Associates__r', 'Associate_c_Associate_Company_c');
			
			
			Brand_Contact_Role_c_Company_c = new Brand_Contact_Role_c_Company_c(new List<Brand_Contact_Role__c>(), new List<Brand_Contact_Role_c_Company_cItem>(), new List<Brand_Contact_Role__c>(), null);
			listItemHolders.put('Brand_Contact_Role_c_Company_c', Brand_Contact_Role_c_Company_c);
			query = new SkyEditor2.Query('Brand_Contact_Role__c');
			query.addField('Name');
			query.addField('Decision_Maker__c');
			query.addField('Brand_Relationship__c');
			query.addField('Contact__c');
			query.addField('NEW_BRAND__c');
			query.addField('Notes__c');
			query.addFieldAsOutput('Name');
			query.addFieldAsOutput('Decision_Maker__c');
			query.addFieldAsOutput('Notes__c');
			query.addFieldAsOutput('Brand_Relationship__c');
			query.addWhere('Company__c', mainRecord.Id, SkyEditor2.WhereOperator.Eq);
			relationFields.put('Brand_Contact_Role_c_Company_c', 'Company__c');
			query.limitRecords(500);
			queryMap.put('Brand_Contact_Role_c_Company_c', query);
			
			registRelatedList('Brand_Contact_Roles1__r', 'Brand_Contact_Role_c_Company_c');
			
			
			p_showHeader = true;
			p_sidebar = true;
			init();
			
			Contact_AccountId.extender = this.extender;
			Associate_c_Associate_Company_c.extender = this.extender;
			Brand_Contact_Role_c_Company_c.extender = this.extender;
			if (record.Id == null) {
				
				saveOldValues();
				 if((ApexPages.currentPage().getParameters().get('clone') == null || Decimal.valueOf(ApexPages.currentPage().getParameters().get('clone')) != 1) && Contact.fields.AccountId.getDescribe().createable){
					 for (Integer i = 0; i < 1; i++) {
						 Contact_AccountId.add();
					 }
				 }
				
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

	global with sharing  class Contact_AccountIdItem extends SkyEditor2.ListItem {
		public Contact record{get; private set;}
		Contact_AccountIdItem(Contact_AccountId holder, Contact record, SkyEditor2.RecordTypeSelector recordTypeSelector) {
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
	global with sharing  class Contact_AccountId extends SkyEditor2.ListItemHolder {
		public List<Contact_AccountIdItem> items{get; private set;}
		@TestVisible
			Contact_AccountId(List<SObject> records, List<SkyEditor2.ListItem> items, List<SObject> deleteRecords, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(records, items, deleteRecords, recordTypeSelector);
			this.items = (List<Contact_AccountIdItem>)items;
		}
		global override SkyEditor2.ListItem create(SObject data) {
			return new Contact_AccountIdItem(this, (Contact)data, recordTypeSelector);
		}
		global override void importByJSON() {
			List<Object> data = (List<Object>) System.JSON.deserializeUntyped(hiddenValue);
			super.importByJSON(data);
			for (Integer n = items.size() - data.size(); n < items.size(); n++) {
				Contact_AccountIdItem i = items[n];
			}
		}
	}
	global with sharing  class Associate_c_Associate_Company_cItem extends SkyEditor2.ListItem {
		public Associate__c record{get; private set;}
		Associate_c_Associate_Company_cItem(Associate_c_Associate_Company_c holder, Associate__c record, SkyEditor2.RecordTypeSelector recordTypeSelector) {
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
	global with sharing  class Associate_c_Associate_Company_c extends SkyEditor2.ListItemHolder {
		public List<Associate_c_Associate_Company_cItem> items{get; private set;}
		@TestVisible
			Associate_c_Associate_Company_c(List<SObject> records, List<SkyEditor2.ListItem> items, List<SObject> deleteRecords, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(records, items, deleteRecords, recordTypeSelector);
			this.items = (List<Associate_c_Associate_Company_cItem>)items;
		}
		global override SkyEditor2.ListItem create(SObject data) {
			return new Associate_c_Associate_Company_cItem(this, (Associate__c)data, recordTypeSelector);
		}
		global override void importByJSON() {
			List<Object> data = (List<Object>) System.JSON.deserializeUntyped(hiddenValue);
			super.importByJSON(data);
			for (Integer n = items.size() - data.size(); n < items.size(); n++) {
				Associate_c_Associate_Company_cItem i = items[n];
			}
		}
	}
	global with sharing  class Brand_Contact_Role_c_Company_cItem extends SkyEditor2.ListItem {
		public Brand_Contact_Role__c record{get; private set;}
		Brand_Contact_Role_c_Company_cItem(Brand_Contact_Role_c_Company_c holder, Brand_Contact_Role__c record, SkyEditor2.RecordTypeSelector recordTypeSelector) {
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
	global with sharing  class Brand_Contact_Role_c_Company_c extends SkyEditor2.ListItemHolder {
		public List<Brand_Contact_Role_c_Company_cItem> items{get; private set;}
		@TestVisible
			Brand_Contact_Role_c_Company_c(List<SObject> records, List<SkyEditor2.ListItem> items, List<SObject> deleteRecords, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(records, items, deleteRecords, recordTypeSelector);
			this.items = (List<Brand_Contact_Role_c_Company_cItem>)items;
		}
		global override SkyEditor2.ListItem create(SObject data) {
			return new Brand_Contact_Role_c_Company_cItem(this, (Brand_Contact_Role__c)data, recordTypeSelector);
		}
		global override void importByJSON() {
			List<Object> data = (List<Object>) System.JSON.deserializeUntyped(hiddenValue);
			super.importByJSON(data);
			for (Integer n = items.size() - data.size(); n < items.size(); n++) {
				Brand_Contact_Role_c_Company_cItem i = items[n];
			}
		}
	}
	public String getComponent652OptionsJS() {
		return SkyEditor2.JSON.stringify(SkyEditor2.PicklistValueSelector.getEntries(
		Contact.getSObjectType(),
		SObjectType.Contact.fields.REA_Teams__c.getSObjectField()
		));
		}
	public String getComponent428OptionsJS() {
		return SkyEditor2.JSON.stringify(SkyEditor2.PicklistValueSelector.getEntries(
		Contact.getSObjectType(),
		SObjectType.Contact.fields.REA_Teams__c.getSObjectField()
		));
		}
	public String getComponent217OptionsJS() {
		return SkyEditor2.JSON.stringify(SkyEditor2.PicklistValueSelector.getEntries(
		Contact.getSObjectType(),
		SObjectType.Contact.fields.Rquirement_Type__c.getSObjectField()
		));
		}
	public String getComponent218OptionsJS() {
		return SkyEditor2.JSON.stringify(SkyEditor2.PicklistValueSelector.getEntries(
		Contact.getSObjectType(),
		SObjectType.Contact.fields.Floor_Preferred__c.getSObjectField()
		));
		}
	public String getComponent648OptionsJS() {
		return SkyEditor2.JSON.stringify(SkyEditor2.PicklistValueSelector.getEntries(
		Contact.getSObjectType(),
		SObjectType.Contact.fields.REA_Teams__c.getSObjectField()
		));
		}
	public String getComponent675OptionsJS() {
		return SkyEditor2.JSON.stringify(SkyEditor2.PicklistValueSelector.getEntries(
		Contact.getSObjectType(),
		SObjectType.Contact.fields.REA_Teams__c.getSObjectField()
		));
		}
	public String getComponent681OptionsJS() {
		return SkyEditor2.JSON.stringify(SkyEditor2.PicklistValueSelector.getEntries(
		Contact.getSObjectType(),
		SObjectType.Contact.fields.Vendor_Type__c.getSObjectField()
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
	
	public Contact Contact_AccountId_Conversion { get { return new Contact();}}
	
	public String Contact_AccountId_selectval { get; set; }
	
	 public void callRemove_Contact_AccountId() {
		  for(Integer i = Contact_AccountId.items.size() - 1; i >= 0; i--){
			   Contact_AccountIdItem item = Contact_AccountId.items[i];
			   if(item.selected){
					item.remove();
			   }
		  }
	 }
	
	public Associate__c Associate_c_Associate_Company_c_Conversion { get { return new Associate__c();}}
	
	public String Associate_c_Associate_Company_c_selectval { get; set; }
	
	 public void callRemove_Associate_c_Associate_Company_c() {
		  for(Integer i = Associate_c_Associate_Company_c.items.size() - 1; i >= 0; i--){
			   Associate_c_Associate_Company_cItem item = Associate_c_Associate_Company_c.items[i];
			   if(item.selected){
					item.remove();
			   }
		  }
	 }
	
	public Brand_Contact_Role__c Brand_Contact_Role_c_Company_c_Conversion { get { return new Brand_Contact_Role__c();}}
	
	public String Brand_Contact_Role_c_Company_c_selectval { get; set; }
	
	 public void callRemove_Brand_Contact_Role_c_Company_c() {
		  for(Integer i = Brand_Contact_Role_c_Company_c.items.size() - 1; i >= 0; i--){
			   Brand_Contact_Role_c_Company_cItem item = Brand_Contact_Role_c_Company_c.items[i];
			   if(item.selected){
					item.remove();
			   }
		  }
	 }
	
	public PageReference Component397_doTransfer(){
		try{
			SkyEditor2.Extender.WizardControl trans = extender.doNext('Component397');
			if(trans != null && trans.control == SkyEditor2.Extender.TransferType.MANUAL){
				return jumpPageNumber(trans.pageTransfer);
			}
		}catch(SkyEditor2.ExtenderException e){ 
			e.setMessagesToPage();
			return null;
		}
		if(record.Agent__c == true){
			return jumpPageNumber(2); 
		}
		if(record.Tenant__c == true){
			return jumpPageNumber(3); 
		}
		if(record.Investor__c == true){
			return jumpPageNumber(4); 
		}
		if(record.Builder_Developer__c == true){
			return jumpPageNumber(1); 
		}
		if(record.Vendor__c == true){
			return jumpPageNumber(5); 
		}
		return doNext();
	}
	public PageReference Component402_doTransfer(){
		try{
			SkyEditor2.Extender.WizardControl trans = extender.doBack('Component402');
			if(trans != null && trans.control == SkyEditor2.Extender.TransferType.MANUAL){
				return jumpPageNumber(trans.pageTransfer);
			}
		}catch(SkyEditor2.ExtenderException e){ 
			e.setMessagesToPage();
			return null;
		}
		return doBack();
	}
	public PageReference Component406_doTransfer(){
		try{
			SkyEditor2.Extender.WizardControl trans = extender.doBack('Component406');
			if(trans != null && trans.control == SkyEditor2.Extender.TransferType.MANUAL){
				return jumpPageNumber(trans.pageTransfer);
			}
		}catch(SkyEditor2.ExtenderException e){ 
			e.setMessagesToPage();
			return null;
		}
		return doBack();
	}
	public PageReference Component563_doTransfer(){
		try{
			SkyEditor2.Extender.WizardControl trans = extender.doBack('Component563');
			if(trans != null && trans.control == SkyEditor2.Extender.TransferType.MANUAL){
				return jumpPageNumber(trans.pageTransfer);
			}
		}catch(SkyEditor2.ExtenderException e){ 
			e.setMessagesToPage();
			return null;
		}
		return doBack();
	}
	public PageReference Component641_doTransfer(){
		try{
			SkyEditor2.Extender.WizardControl trans = extender.doBack('Component641');
			if(trans != null && trans.control == SkyEditor2.Extender.TransferType.MANUAL){
				return jumpPageNumber(trans.pageTransfer);
			}
		}catch(SkyEditor2.ExtenderException e){ 
			e.setMessagesToPage();
			return null;
		}
		return doBack();
	}
	public PageReference Component259_doTransfer(){
		try{
			SkyEditor2.Extender.WizardControl trans = extender.doBack('Component259');
			if(trans != null && trans.control == SkyEditor2.Extender.TransferType.MANUAL){
				return jumpPageNumber(trans.pageTransfer);
			}
		}catch(SkyEditor2.ExtenderException e){ 
			e.setMessagesToPage();
			return null;
		}
		return doBack();
	}
	with sharing class PageReferenceFactory implements SkyEditor2.PageReferenceFactory.Implementation {
		public PageReference newPageReference(String url) {
			return new PageReference(url);
		}
	}
}