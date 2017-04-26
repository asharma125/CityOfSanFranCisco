global with sharing class Mobile_space_f5Middle extends SkyEditor2.SkyEditorPageBaseWithSharing {
	
	public Space_Options__c record {get{return (Space_Options__c)mainRecord;}}
	public with sharing class CanvasException extends Exception {}

	
	
	public Component34 Component34 {get; private set;}
	{
	setApiVersion(31.0);
	}
	public Mobile_space_f5Middle(ApexPages.StandardController controller) {
		super(controller);


		SObjectField f;

		f = Space_Options__c.fields.F_5_Case_No__c;
		f = Space_Options__c.fields.Name;
		f = F_5_Report__c.fields.Name;

		List<RecordTypeInfo> recordTypes;
		try {
			mainSObjectType = Space_Options__c.SObjectType;
			setPageReferenceFactory(new PageReferenceFactory());
			
			mainQuery = new SkyEditor2.Query('Space_Options__c');
			mainQuery.addFieldAsOutput('RecordTypeId');
			mainQuery.addFieldAsOutput('F_5_Case_No__c');
			mainQuery.addFieldAsOutput('Name');
			mainQuery.addWhere('Id', mainRecord.Id, SkyEditor2.WhereOperator.Eq)
				.limitRecords(1);
			
			
			
			mode = SkyEditor2.LayoutMode.LayoutSalesforce; 
			
			queryMap = new Map<String, SkyEditor2.Query>();
			SkyEditor2.Query query;
			
			Component34 = new Component34(new List<F_5_Report__c>(), new List<Component34Item>(), new List<F_5_Report__c>(), null);
			listItemHolders.put('Component34', Component34);
			query = new SkyEditor2.Query('F_5_Report__c');
			query.addField('Name');
			query.addWhere('Space_Rent_Sale__c', mainRecord.Id, SkyEditor2.WhereOperator.Eq);
			relationFields.put('Component34', 'Space_Rent_Sale__c');
			Component34.queryRelatedEvent = False;
			query.limitRecords(500);
			queryMap.put('Component34', query);
			
			registRelatedList('F_5_Report__r', 'Component34');
			
			p_showHeader = true;
			p_sidebar = true;
			addInheritParameter('RecordTypeId', 'RecordType');
			init();
			
			Component34.extender = this.extender;
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

	global with sharing class Component34Item extends SkyEditor2.ListItem {
		public F_5_Report__c record{get; private set;}
		@TestVisible
		Component34Item(Component34 holder, F_5_Report__c record, SkyEditor2.RecordTypeSelector recordTypeSelector) {
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
	global with sharing  class Component34 extends SkyEditor2.ListItemHolder {
		public List<Component34Item> items{get; private set;}
		@TestVisible
			Component34(List<SObject> records, List<SkyEditor2.ListItem> items, List<SObject> deleteRecords, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(records, items, deleteRecords, recordTypeSelector);
			this.items = (List<Component34Item>)items;
		}
		global override SkyEditor2.ListItem create(SObject data) {
			return new Component34Item(this, (F_5_Report__c)data, recordTypeSelector);
		}
		public void doDeleteSelectedItems(){deleteSelectedItems();}
	}
	with sharing class PageReferenceFactory implements SkyEditor2.PageReferenceFactory.Implementation {
		public PageReference newPageReference(String url) {
			return new PageReference(url);
		}
	}
}