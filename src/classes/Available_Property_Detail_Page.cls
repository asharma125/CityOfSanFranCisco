global with sharing class Available_Property_Detail_Page extends SkyEditor2.SkyEditorPageBaseWithSharing {
	
	public Property__c record {get{return (Property__c)mainRecord;}}
	public with sharing class CanvasException extends Exception {}

	public Boolean Component327_rendered {get{ return record.Rented__c==true;}}
	
	
	public Component250 Component250 {get; private set;}
	public Component283 Component283 {get; private set;}
	{
	setApiVersion(31.0);
	}
	public Available_Property_Detail_Page(ApexPages.StandardController controller) {
		super(controller);


		SObjectField f;

		f = Property__c.fields.Property_Picture__c;
		f = Property__c.fields.Tenant_Sale__c;
		f = Property__c.fields.DMD_Link__c;
		f = Property__c.fields.Send_to_Website__c;
		f = Property__c.fields.Property_Name__c;
		f = Property__c.fields.Latitude__c;
		f = Property__c.fields.DFS_Date__c;
		f = Property__c.fields.Property_No__c;
		f = Property__c.fields.Longitude__c;
		f = Property__c.fields.Maybe_Sale_Note__c;
		f = Property__c.fields.Address__c;
		f = Property__c.fields.Staircase_Evaluation_Link__c;
		f = Property__c.fields.Location_new__c;
		f = Property__c.fields.Channel_Partners__c;
		f = Property__c.fields.Location_Sub_new__c;
		f = Property__c.fields.Location_City_new__c;
		f = Property__c.fields.Property_with_Virtual_Owner__c;
		f = Property__c.fields.Building_Sale__c;
		f = Property__c.fields.No_of_Units__c;
		f = Property__c.fields.Land_Status__c;
		f = Property__c.fields.Sale_Remarks__c;
		f = Property__c.fields.Locality_Sale__c;
		f = Property__c.fields.Floor_Sale__c;
		f = Property__c.fields.Construction_Status__c;
		f = Property__c.fields.Rating_of_Property__c;
		f = Property__c.fields.Area_for_Sale__c;
		f = Property__c.fields.Khan_Commercial_Status__c;
		f = Property__c.fields.Prop_Type_Sale__c;
		f = Property__c.fields.Built_Up_Area__c;
		f = Property__c.fields.Amenities__c;
		f = Property__c.fields.Sale_Price__c;
		f = Property__c.fields.May_Settle_Sale_Price__c;
		f = Property__c.fields.Possession_Handover__c;
		f = Property__c.fields.Scope__c;
		f = Property__c.fields.Cheque_Advance__c;
		f = Property__c.fields.Rented__c;
		f = Property__c.fields.Total_Area_on_Lease__c;
		f = Property__c.fields.Rented_Remarks__c;
		f = Property__c.fields.Rented_Hot__c;
		f = Property__c.fields.Security_Deposit__c;
		f = Property__c.fields.ROI__c;
		f = Property__c.fields.Monthly_Rent__c;
		f = Property__c.fields.Tenant_Type__c;
		f = Property__c.fields.Lease_Date__c;
		f = Property__c.fields.Tenant_Type_Sub__c;
		f = Property__c.fields.Lease_Tenure__c;
		f = Property__c.fields.Company_Transfer__c;
		f = Property__c.fields.Lock_In__c;
		f = Property__c.fields.Rent_Escalation__c;
		f = Property__c.fields.R_S_History__c;
		f = Space_Options__c.fields.Name;
		f = Space_Options__c.fields.Available_For_Sale__c;
		f = Space_Options__c.fields.Rented__c;
		f = Space_Options__c.fields.Old_Signage__c;
		f = Space_Options__c.fields.Floor_Rent__c;
		f = Space_Options__c.fields.Floorwise_Area__c;
		f = Space_Options__c.fields.Rented_Synopsis__c;
		f = Space_Options__c.fields.Asking_Sale_Price__c;
		f = Space_Options__c.fields.ROI_in__c;
		f = Associate__c.fields.Name;
		f = Associate__c.fields.Associate_Co__c;
		f = Associate__c.fields.Direct_Deal__c;
		f = Associate__c.fields.Disclosure__c;
		f = Associate__c.fields.Dealer_Market_Comment__c;
		f = Associate__c.fields.Power_Meter__c;
		f = Associate__c.fields.Local_Dealer__c;
		f = Associate__c.fields.Preferred_Associate__c;
		f = Property__c.fields.Dealer_Mobile__c;

		List<RecordTypeInfo> recordTypes;
		try {
			mainSObjectType = Property__c.SObjectType;
			setPageReferenceFactory(new PageReferenceFactory());
			
			mainQuery = new SkyEditor2.Query('Property__c');
			mainQuery.addField('Send_to_Website__c');
			mainQuery.addField('Rented__c');
			mainQuery.addField('Company_Transfer__c');
			mainQuery.addFieldAsOutput('Name');
			mainQuery.addFieldAsOutput('RecordTypeId');
			mainQuery.addFieldAsOutput('Property_Picture__c');
			mainQuery.addFieldAsOutput('Tenant_Sale__c');
			mainQuery.addFieldAsOutput('DMD_Link__c');
			mainQuery.addFieldAsOutput('Property_Name__c');
			mainQuery.addFieldAsOutput('Latitude__c');
			mainQuery.addFieldAsOutput('DFS_Date__c');
			mainQuery.addFieldAsOutput('Property_No__c');
			mainQuery.addFieldAsOutput('Longitude__c');
			mainQuery.addFieldAsOutput('Maybe_Sale_Note__c');
			mainQuery.addFieldAsOutput('Address__c');
			mainQuery.addFieldAsOutput('Staircase_Evaluation_Link__c');
			mainQuery.addFieldAsOutput('Location_new__c');
			mainQuery.addFieldAsOutput('Channel_Partners__c');
			mainQuery.addFieldAsOutput('Location_Sub_new__c');
			mainQuery.addFieldAsOutput('Location_City_new__c');
			mainQuery.addFieldAsOutput('Property_with_Virtual_Owner__c');
			mainQuery.addFieldAsOutput('Building_Sale__c');
			mainQuery.addFieldAsOutput('No_of_Units__c');
			mainQuery.addFieldAsOutput('Land_Status__c');
			mainQuery.addFieldAsOutput('Sale_Remarks__c');
			mainQuery.addFieldAsOutput('Locality_Sale__c');
			mainQuery.addFieldAsOutput('Floor_Sale__c');
			mainQuery.addFieldAsOutput('Construction_Status__c');
			mainQuery.addFieldAsOutput('Rating_of_Property__c');
			mainQuery.addFieldAsOutput('Area_for_Sale__c');
			mainQuery.addFieldAsOutput('Khan_Commercial_Status__c');
			mainQuery.addFieldAsOutput('Prop_Type_Sale__c');
			mainQuery.addFieldAsOutput('Built_Up_Area__c');
			mainQuery.addFieldAsOutput('Amenities__c');
			mainQuery.addFieldAsOutput('Sale_Price__c');
			mainQuery.addFieldAsOutput('May_Settle_Sale_Price__c');
			mainQuery.addFieldAsOutput('Possession_Handover__c');
			mainQuery.addFieldAsOutput('Scope__c');
			mainQuery.addFieldAsOutput('Cheque_Advance__c');
			mainQuery.addFieldAsOutput('Total_Area_on_Lease__c');
			mainQuery.addFieldAsOutput('Rented_Remarks__c');
			mainQuery.addFieldAsOutput('Rented_Hot__c');
			mainQuery.addFieldAsOutput('Security_Deposit__c');
			mainQuery.addFieldAsOutput('ROI__c');
			mainQuery.addFieldAsOutput('Monthly_Rent__c');
			mainQuery.addFieldAsOutput('Tenant_Type__c');
			mainQuery.addFieldAsOutput('Lease_Date__c');
			mainQuery.addFieldAsOutput('Tenant_Type_Sub__c');
			mainQuery.addFieldAsOutput('Lease_Tenure__c');
			mainQuery.addFieldAsOutput('Lock_In__c');
			mainQuery.addFieldAsOutput('Rent_Escalation__c');
			mainQuery.addFieldAsOutput('R_S_History__c');
			mainQuery.addFieldAsOutput('Dealer_Mobile__c');
			mainQuery.addWhere('Id', mainRecord.Id, SkyEditor2.WhereOperator.Eq)
				.limitRecords(1);
			
			
			
			mode = SkyEditor2.LayoutMode.LayoutSalesforce; 
			
			queryMap = new Map<String, SkyEditor2.Query>();
			SkyEditor2.Query query;
			
			Component250 = new Component250(new List<Space_Options__c>(), new List<Component250Item>(), new List<Space_Options__c>(), null);
			listItemHolders.put('Component250', Component250);
			query = new SkyEditor2.Query('Space_Options__c');
			query.addFieldAsOutput('Name');
			query.addFieldAsOutput('Available_For_Sale__c');
			query.addFieldAsOutput('Rented__c');
			query.addFieldAsOutput('Old_Signage__c');
			query.addFieldAsOutput('Floor_Rent__c');
			query.addFieldAsOutput('Floorwise_Area__c');
			query.addFieldAsOutput('Rented_Synopsis__c');
			query.addFieldAsOutput('Asking_Sale_Price__c');
			query.addFieldAsOutput('ROI_in__c');
			query.addFieldAsOutput('RecordTypeId');
			query.addWhere('Property__c', mainRecord.Id, SkyEditor2.WhereOperator.Eq);
			relationFields.put('Component250', 'Property__c');
			Component250.queryRelatedEvent = False;
			query.limitRecords(500);
			queryMap.put('Component250', query);
			Component250.ignoredOnSave = true;			
			Component283 = new Component283(new List<Associate__c>(), new List<Component283Item>(), new List<Associate__c>(), null);
			listItemHolders.put('Component283', Component283);
			query = new SkyEditor2.Query('Associate__c');
			query.addFieldAsOutput('Name');
			query.addFieldAsOutput('Associate_Co__c');
			query.addFieldAsOutput('Direct_Deal__c');
			query.addFieldAsOutput('Disclosure__c');
			query.addFieldAsOutput('Dealer_Market_Comment__c');
			query.addFieldAsOutput('Power_Meter__c');
			query.addFieldAsOutput('Local_Dealer__c');
			query.addFieldAsOutput('Preferred_Associate__c');
			query.addWhere('Property__c', mainRecord.Id, SkyEditor2.WhereOperator.Eq);
			relationFields.put('Component283', 'Property__c');
			Component283.queryRelatedEvent = False;
			query.limitRecords(500);
			queryMap.put('Component283', query);
			Component283.ignoredOnSave = true;			
			registRelatedList('Sale_Options__r', 'Component250');
			registRelatedList('Associates__r', 'Component283');
			
			p_showHeader = true;
			p_sidebar = true;
			addInheritParameter('RecordTypeId', 'RecordType');
			init();
			
			Component250.extender = this.extender;
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

	global with sharing class Component250Item extends SkyEditor2.ListItem {
		public Space_Options__c record{get; private set;}
		@TestVisible
		Component250Item(Component250 holder, Space_Options__c record, SkyEditor2.RecordTypeSelector recordTypeSelector) {
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
	global with sharing  class Component250 extends SkyEditor2.ListItemHolder {
		public List<Component250Item> items{get; private set;}
		@TestVisible
			Component250(List<SObject> records, List<SkyEditor2.ListItem> items, List<SObject> deleteRecords, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(records, items, deleteRecords, recordTypeSelector);
			this.items = (List<Component250Item>)items;
		}
		global override SkyEditor2.ListItem create(SObject data) {
			return new Component250Item(this, (Space_Options__c)data, recordTypeSelector);
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