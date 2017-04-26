global with sharing class SVE_20151210090116 extends SkyEditor2.SkyEditorPageBaseWithSharing {
	
	public PT_I__c record {get{return (PT_I__c)mainRecord;}}
	public with sharing class CanvasException extends Exception {}

	
	
	public Component72 Component72 {get; private set;}
	public Component82 Component82 {get; private set;}
	{
	setApiVersion(31.0);
	}
	public SVE_20151210090116(ApexPages.StandardController controller) {
		super(controller);


		SObjectField f;

		f = PT_I__c.fields.Name;
		f = PT_I__c.fields.OwnerId;
		f = PT_I__c.fields.Training_Start_Date__c;
		f = PT_I__c.fields.Training_End_Date__c;
		f = PT_I__c.fields.Implementation_Start__c;
		f = PT_I__c.fields.Implementation_End__c;
		f = PT_I__c.fields.Planing_Starts__c;
		f = PT_I__c.fields.Salesforce_IDEAS_Link__c;
		f = PT_I__c.fields.Mindmiester_Link_A__c;
		f = PT_I__c.fields.Mindmiester_Link_B__c;
		f = PT_I__c.fields.Mindmiester_Link_C__c;
		f = PT_I__c.fields.Mindmiester_Note__c;
		f = PT_I__c.fields.Training_Type__c;
		f = PT_I__c.fields.Training_Suitable_for__c;
		f = PT_I__c.fields.Training_Responsibility_Primary__c;
		f = PT_I__c.fields.Training_Logistics_Requirement__c;
		f = PT_I__c.fields.Description__c;
		f = Solution.fields.SolutionName;
		f = Solution.fields.SolutionNumber;
		f = Solution.fields.Status;
		f = Case.fields.CaseNumber;
		f = Case.fields.Subject;
		f = Case.fields.CreatedDate;
		f = Case.fields.Priority;

		List<RecordTypeInfo> recordTypes;
		try {
			mainSObjectType = PT_I__c.SObjectType;
			setPageReferenceFactory(new PageReferenceFactory());
			
			mainQuery = new SkyEditor2.Query('PT_I__c');
			mainQuery.addField('Name');
			mainQuery.addField('OwnerId');
			mainQuery.addField('Training_Start_Date__c');
			mainQuery.addField('Training_End_Date__c');
			mainQuery.addField('Implementation_Start__c');
			mainQuery.addField('Implementation_End__c');
			mainQuery.addField('Planing_Starts__c');
			mainQuery.addField('Salesforce_IDEAS_Link__c');
			mainQuery.addField('Mindmiester_Link_A__c');
			mainQuery.addField('Mindmiester_Link_B__c');
			mainQuery.addField('Mindmiester_Link_C__c');
			mainQuery.addField('Mindmiester_Note__c');
			mainQuery.addField('Training_Type__c');
			mainQuery.addField('Training_Suitable_for__c');
			mainQuery.addField('Training_Responsibility_Primary__c');
			mainQuery.addField('Training_Logistics_Requirement__c');
			mainQuery.addField('Description__c');
			mainQuery.addWhere('Id', mainRecord.Id, SkyEditor2.WhereOperator.Eq)
				.limitRecords(1);
			
			
			
			mode = SkyEditor2.LayoutMode.LayoutSalesforce; 
			
			queryMap = new Map<String, SkyEditor2.Query>();
			SkyEditor2.Query query;
			
			Component72 = new Component72(new List<Solution>(), new List<Component72Item>(), new List<Solution>(), null);
			listItemHolders.put('Component72', Component72);
			query = new SkyEditor2.Query('Solution');
			query.addField('SolutionName');
			query.addField('Status');
			query.addFieldAsOutput('SolutionNumber');
			query.addWhere('PT_I__c', mainRecord.Id, SkyEditor2.WhereOperator.Eq);
			relationFields.put('Component72', 'PT_I__c');
			Component72.queryRelatedEvent = False;
			query.limitRecords(500);
			queryMap.put('Component72', query);
			
			Component82 = new Component82(new List<Case>(), new List<Component82Item>(), new List<Case>(), null);
			listItemHolders.put('Component82', Component82);
			query = new SkyEditor2.Query('Case');
			query.addField('Subject');
			query.addField('Priority');
			query.addFieldAsOutput('CaseNumber');
			query.addFieldAsOutput('CreatedDate');
			query.addWhere('PT_I__c', mainRecord.Id, SkyEditor2.WhereOperator.Eq);
			relationFields.put('Component82', 'PT_I__c');
			Component82.queryRelatedEvent = False;
			query.limitRecords(500);
			queryMap.put('Component82', query);
			
			registRelatedList('Solutions__r', 'Component72');
			registRelatedList('Cases__r', 'Component82');
			
			p_showHeader = true;
			p_sidebar = true;
			init();
			
			Component72.extender = this.extender;
			Component82.extender = this.extender;
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

	global with sharing class Component72Item extends SkyEditor2.ListItem {
		public Solution record{get; private set;}
		@TestVisible
		Component72Item(Component72 holder, Solution record, SkyEditor2.RecordTypeSelector recordTypeSelector) {
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
	global with sharing  class Component72 extends SkyEditor2.ListItemHolder {
		public List<Component72Item> items{get; private set;}
		@TestVisible
			Component72(List<SObject> records, List<SkyEditor2.ListItem> items, List<SObject> deleteRecords, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(records, items, deleteRecords, recordTypeSelector);
			this.items = (List<Component72Item>)items;
		}
		global override SkyEditor2.ListItem create(SObject data) {
			return new Component72Item(this, (Solution)data, recordTypeSelector);
		}
		public void doDeleteSelectedItems(){deleteSelectedItems();}
	}
	global with sharing class Component82Item extends SkyEditor2.ListItem {
		public Case record{get; private set;}
		@TestVisible
		Component82Item(Component82 holder, Case record, SkyEditor2.RecordTypeSelector recordTypeSelector) {
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
	global with sharing  class Component82 extends SkyEditor2.ListItemHolder {
		public List<Component82Item> items{get; private set;}
		@TestVisible
			Component82(List<SObject> records, List<SkyEditor2.ListItem> items, List<SObject> deleteRecords, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(records, items, deleteRecords, recordTypeSelector);
			this.items = (List<Component82Item>)items;
		}
		global override SkyEditor2.ListItem create(SObject data) {
			return new Component82Item(this, (Case)data, recordTypeSelector);
		}
		public void doDeleteSelectedItems(){deleteSelectedItems();}
	}
	with sharing class PageReferenceFactory implements SkyEditor2.PageReferenceFactory.Implementation {
		public PageReference newPageReference(String url) {
			return new PageReference(url);
		}
	}
}