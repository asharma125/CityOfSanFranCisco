global with sharing class rented_vivek_layout extends SkyEditor2.SkyEditorPageBaseWithSharing {
	
	public Property__c record {get{return (Property__c)mainRecord;}}
	public with sharing class CanvasException extends Exception {}

	
	
	public Component267 Component267 {get; private set;}
	public Component319 Component319 {get; private set;}
	public Component311 Component311 {get; private set;}
	public Component283 Component283 {get; private set;}
	{
	setApiVersion(31.0);
	}
	public rented_vivek_layout(ApexPages.StandardController controller) {
		super(controller);


		SObjectField f;

		f = Property__c.fields.Send_to_Website__c;
		f = Property__c.fields.Property_Code__c;
		f = Associate__c.fields.Associate_Co__c;
		f = Associate__c.fields.Local_Dealer__c;
		f = Associate__c.fields.Preferred_Associate__c;
		f = Property__c.fields.Floor_Sale__c;
		f = Property__c.fields.Tenant_Sale__c;
		f = Property__c.fields.Total_Area_on_Lease__c;
		f = Property__c.fields.Area_for_Sale__c;
		f = Property__c.fields.Location_Sub_new__c;
		f = Property__c.fields.Location_new__c;
		f = Property__c.fields.Location_City_new__c;
		f = Property__c.fields.Monthly_Rent__c;
		f = Property__c.fields.Lease_Date__c;
		f = Property__c.fields.Security_Deposit__c;
		f = Property__c.fields.Lease_Tenure__c;
		f = Property__c.fields.Lock_In__c;
		f = Property__c.fields.Rent_Escalation__c;
		f = Property__c.fields.ROI__c;
		f = Property__c.fields.Sale_Price__c;
		f = Property__c.fields.Rented_Remarks__c;
		f = Property__c.fields.For_Sale__c;
		f = Property__c.fields.Scope__c;
		f = Property__c.fields.Rented_Hot__c;
		f = Property__c.fields.Rented__c;
		f = Property__c.fields.Company_Transfer__c;
		f = Property__c.fields.Rating_of_Property__c;
		f = Property__c.fields.No_of_Units__c;
		f = Property__c.fields.Prop_Type_Sale__c;
		f = Property__c.fields.Tenant_Type__c;
		f = Property__c.fields.Tenant_Type_Sub__c;
		f = Property__c.fields.Land_Status__c;
		f = Property__c.fields.Cheque_Advance__c;
		f = Property__c.fields.Budget_Suits__c;
		f = Property__c.fields.Area_Suits__c;
		f = Property__c.fields.Property_Picture__c;
		f = Property__c.fields.Address__c;
		f = Property__c.fields.May_Settle_Sale_Price__c;
		f = Property__c.fields.Circle_Rate__c;
		f = Property__c.fields.Plot_Area_Yards__c;
		f = Property__c.fields.Built_Up_Area__c;
		f = Property__c.fields.X99_Acres_End_Date__c;
		f = Property__c.fields.Prop_Suits__c;
		f = Property__c.fields.Khan_Commercial_Status__c;
		f = Property__c.fields.REA_Property_Id__c;
		f = Ownership__c.fields.Name;
		f = Ownership__c.fields.Ownership_Percentage__c;
		f = Ownership__c.fields.Decision_Maker__c;
		f = Ownership__c.fields.Send_Courier__c;
		f = Ownership__c.fields.Notes__c;
		f = Property__c.fields.R_S_History__c;
		f = Property__c.fields.DFS_Date__c;
		f = Property__c.fields.X99_Acres_Start_Date__c;
		f = Property__c.fields.OwnerId;
		f = Requirement__c.fields.Stamp_Calculater__c;
		f = Requirement__c.fields.Contact__c;
		f = Requirement__c.fields.Name;
		f = Requirement__c.fields.Stage__c;
		f = Requirement__c.fields.Sale_Price__c;
		f = Requirement__c.fields.Deal_Status__c;
		f = Requirement__c.fields.Deal_Marketing_Notes__c;
		f = Shown_To__c.fields.Name;
		f = Shown_To__c.fields.Date__c;
		f = Shown_To__c.fields.Intrest_Level__c;
		f = Shown_To__c.fields.T_D_Notes__c;
		f = Associate__c.fields.Name;
		f = Associate__c.fields.Direct_Deal__c;
		f = Associate__c.fields.Disclosure__c;
		f = Associate__c.fields.Dealer_Market_Comment__c;
		f = Associate__c.fields.Power_Meter__c;

		List<RecordTypeInfo> recordTypes;
		try {
			mainSObjectType = Property__c.SObjectType;
			setPageReferenceFactory(new PageReferenceFactory());
			
			mainQuery = new SkyEditor2.Query('Property__c');
			mainQuery.addField('Send_to_Website__c');
			mainQuery.addFieldAsOutput('Name');
			mainQuery.addFieldAsOutput('RecordTypeId');
			mainQuery.addFieldAsOutput('Property_Code__c');
			mainQuery.addFieldAsOutput('Floor_Sale__c');
			mainQuery.addFieldAsOutput('Tenant_Sale__c');
			mainQuery.addFieldAsOutput('Total_Area_on_Lease__c');
			mainQuery.addFieldAsOutput('Area_for_Sale__c');
			mainQuery.addFieldAsOutput('Location_Sub_new__c');
			mainQuery.addFieldAsOutput('Location_new__c');
			mainQuery.addFieldAsOutput('Location_City_new__c');
			mainQuery.addFieldAsOutput('Monthly_Rent__c');
			mainQuery.addFieldAsOutput('Lease_Date__c');
			mainQuery.addFieldAsOutput('Security_Deposit__c');
			mainQuery.addFieldAsOutput('Lease_Tenure__c');
			mainQuery.addFieldAsOutput('Lock_In__c');
			mainQuery.addFieldAsOutput('Rent_Escalation__c');
			mainQuery.addFieldAsOutput('ROI__c');
			mainQuery.addFieldAsOutput('Sale_Price__c');
			mainQuery.addFieldAsOutput('Rented_Remarks__c');
			mainQuery.addFieldAsOutput('For_Sale__c');
			mainQuery.addFieldAsOutput('Scope__c');
			mainQuery.addFieldAsOutput('Rented_Hot__c');
			mainQuery.addFieldAsOutput('Rented__c');
			mainQuery.addFieldAsOutput('Company_Transfer__c');
			mainQuery.addFieldAsOutput('Rating_of_Property__c');
			mainQuery.addFieldAsOutput('No_of_Units__c');
			mainQuery.addFieldAsOutput('Prop_Type_Sale__c');
			mainQuery.addFieldAsOutput('Tenant_Type__c');
			mainQuery.addFieldAsOutput('Tenant_Type_Sub__c');
			mainQuery.addFieldAsOutput('Land_Status__c');
			mainQuery.addFieldAsOutput('Cheque_Advance__c');
			mainQuery.addFieldAsOutput('Budget_Suits__c');
			mainQuery.addFieldAsOutput('Area_Suits__c');
			mainQuery.addFieldAsOutput('Property_Picture__c');
			mainQuery.addFieldAsOutput('Address__c');
			mainQuery.addFieldAsOutput('May_Settle_Sale_Price__c');
			mainQuery.addFieldAsOutput('Circle_Rate__c');
			mainQuery.addFieldAsOutput('Plot_Area_Yards__c');
			mainQuery.addFieldAsOutput('Built_Up_Area__c');
			mainQuery.addFieldAsOutput('X99_Acres_End_Date__c');
			mainQuery.addFieldAsOutput('Prop_Suits__c');
			mainQuery.addFieldAsOutput('Khan_Commercial_Status__c');
			mainQuery.addFieldAsOutput('REA_Property_Id__c');
			mainQuery.addFieldAsOutput('R_S_History__c');
			mainQuery.addFieldAsOutput('DFS_Date__c');
			mainQuery.addFieldAsOutput('X99_Acres_Start_Date__c');
			mainQuery.addFieldAsOutput('OwnerId');
			mainQuery.addWhere('Id', mainRecord.Id, SkyEditor2.WhereOperator.Eq)
				.limitRecords(1);
			
			
			
			mode = SkyEditor2.LayoutMode.LayoutSalesforce; 
			
			queryMap = new Map<String, SkyEditor2.Query>();
			SkyEditor2.Query query;
			
			Component267 = new Component267(new List<Ownership__c>(), new List<Component267Item>(), new List<Ownership__c>(), null);
			listItemHolders.put('Component267', Component267);
			query = new SkyEditor2.Query('Ownership__c');
			query.addFieldAsOutput('Name');
			query.addFieldAsOutput('Ownership_Percentage__c');
			query.addFieldAsOutput('Decision_Maker__c');
			query.addFieldAsOutput('Send_Courier__c');
			query.addFieldAsOutput('Notes__c');
			query.addWhere('Property__c', mainRecord.Id, SkyEditor2.WhereOperator.Eq);
			relationFields.put('Component267', 'Property__c');
			Component267.queryRelatedEvent = False;
			query.limitRecords(500);
			queryMap.put('Component267', query);
			
			Component319 = new Component319(new List<Requirement__c>(), new List<Component319Item>(), new List<Requirement__c>(), null);
			listItemHolders.put('Component319', Component319);
			query = new SkyEditor2.Query('Requirement__c');
			query.addFieldAsOutput('Name');
			query.addFieldAsOutput('Deal_Marketing_Notes__c');
			query.addFieldAsOutput('Deal_Status__c');
			query.addFieldAsOutput('Sale_Price__c');
			query.addFieldAsOutput('Contact__c');
			query.addFieldAsOutput('Stage__c');
			query.addFieldAsOutput('Stamp_Calculater__c');
			query.addFieldAsOutput('RecordTypeId');
			query.addWhere('Selected_Property__c', mainRecord.Id, SkyEditor2.WhereOperator.Eq);
			relationFields.put('Component319', 'Selected_Property__c');
			Component319.queryRelatedEvent = False;
			query.limitRecords(500);
			queryMap.put('Component319', query);
			
			Component311 = new Component311(new List<Shown_To__c>(), new List<Component311Item>(), new List<Shown_To__c>(), null);
			listItemHolders.put('Component311', Component311);
			query = new SkyEditor2.Query('Shown_To__c');
			query.addFieldAsOutput('Name');
			query.addFieldAsOutput('Date__c');
			query.addFieldAsOutput('Intrest_Level__c');
			query.addFieldAsOutput('T_D_Notes__c');
			query.addWhere('Property__c', mainRecord.Id, SkyEditor2.WhereOperator.Eq);
			relationFields.put('Component311', 'Property__c');
			Component311.queryRelatedEvent = False;
			query.limitRecords(500);
			queryMap.put('Component311', query);
			
			Component283 = new Component283(new List<Associate__c>(), new List<Component283Item>(), new List<Associate__c>(), null);
			listItemHolders.put('Component283', Component283);
			query = new SkyEditor2.Query('Associate__c');
			query.addField('Preferred_Associate__c');
			query.addFieldAsOutput('Name');
			query.addFieldAsOutput('Associate_Co__c');
			query.addFieldAsOutput('Direct_Deal__c');
			query.addFieldAsOutput('Disclosure__c');
			query.addFieldAsOutput('Dealer_Market_Comment__c');
			query.addFieldAsOutput('Power_Meter__c');
			query.addFieldAsOutput('Local_Dealer__c');
			query.addWhere('Property__c', mainRecord.Id, SkyEditor2.WhereOperator.Eq);
			relationFields.put('Component283', 'Property__c');
			Component283.queryRelatedEvent = False;
			query.limitRecords(500);
			queryMap.put('Component283', query);
			
			registRelatedList('Ownerships__r', 'Component267');
			registRelatedList('Requirements__r', 'Component319');
			registRelatedList('Shown_To__r', 'Component311');
			registRelatedList('Associates__r', 'Component283');
			
			p_showHeader = true;
			p_sidebar = true;
			addInheritParameter('RecordTypeId', 'RecordType');
			init();
			
			Component267.extender = this.extender;
			Component319.extender = this.extender;
			Component311.extender = this.extender;
			Component283.extender = this.extender;
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

	global with sharing class Component267Item extends SkyEditor2.ListItem {
		public Ownership__c record{get; private set;}
		@TestVisible
		Component267Item(Component267 holder, Ownership__c record, SkyEditor2.RecordTypeSelector recordTypeSelector) {
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
	global with sharing  class Component267 extends SkyEditor2.ListItemHolder {
		public List<Component267Item> items{get; private set;}
		@TestVisible
			Component267(List<SObject> records, List<SkyEditor2.ListItem> items, List<SObject> deleteRecords, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(records, items, deleteRecords, recordTypeSelector);
			this.items = (List<Component267Item>)items;
		}
		global override SkyEditor2.ListItem create(SObject data) {
			return new Component267Item(this, (Ownership__c)data, recordTypeSelector);
		}
		public void doDeleteSelectedItems(){deleteSelectedItems();}
	}
	global with sharing class Component319Item extends SkyEditor2.ListItem {
		public Requirement__c record{get; private set;}
		@TestVisible
		Component319Item(Component319 holder, Requirement__c record, SkyEditor2.RecordTypeSelector recordTypeSelector) {
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
	global with sharing  class Component319 extends SkyEditor2.ListItemHolder {
		public List<Component319Item> items{get; private set;}
		@TestVisible
			Component319(List<SObject> records, List<SkyEditor2.ListItem> items, List<SObject> deleteRecords, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(records, items, deleteRecords, recordTypeSelector);
			this.items = (List<Component319Item>)items;
		}
		global override SkyEditor2.ListItem create(SObject data) {
			return new Component319Item(this, (Requirement__c)data, recordTypeSelector);
		}
		public void doDeleteSelectedItems(){deleteSelectedItems();}
	}
	global with sharing class Component311Item extends SkyEditor2.ListItem {
		public Shown_To__c record{get; private set;}
		@TestVisible
		Component311Item(Component311 holder, Shown_To__c record, SkyEditor2.RecordTypeSelector recordTypeSelector) {
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
	global with sharing  class Component311 extends SkyEditor2.ListItemHolder {
		public List<Component311Item> items{get; private set;}
		@TestVisible
			Component311(List<SObject> records, List<SkyEditor2.ListItem> items, List<SObject> deleteRecords, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(records, items, deleteRecords, recordTypeSelector);
			this.items = (List<Component311Item>)items;
		}
		global override SkyEditor2.ListItem create(SObject data) {
			return new Component311Item(this, (Shown_To__c)data, recordTypeSelector);
		}
		public void doDeleteSelectedItems(){deleteSelectedItems();}
	}
	global with sharing class Component283Item extends SkyEditor2.ListItem {
		public Associate__c record{get; private set;}
		@TestVisible
		Component283Item(Component283 holder, Associate__c record, SkyEditor2.RecordTypeSelector recordTypeSelector) {
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
	global with sharing  class Component283 extends SkyEditor2.ListItemHolder {
		public List<Component283Item> items{get; private set;}
		@TestVisible
			Component283(List<SObject> records, List<SkyEditor2.ListItem> items, List<SObject> deleteRecords, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(records, items, deleteRecords, recordTypeSelector);
			this.items = (List<Component283Item>)items;
		}
		global override SkyEditor2.ListItem create(SObject data) {
			return new Component283Item(this, (Associate__c)data, recordTypeSelector);
		}
		public void doDeleteSelectedItems(){deleteSelectedItems();}
	}
	with sharing class PageReferenceFactory implements SkyEditor2.PageReferenceFactory.Implementation {
		public PageReference newPageReference(String url) {
			return new PageReference(url);
		}
	}
}