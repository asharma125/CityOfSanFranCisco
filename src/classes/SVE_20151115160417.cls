global with sharing class SVE_20151115160417 extends SkyEditor2.SkyEditorPageBaseWithSharing {
	
	public PT_I__c record {get{return (PT_I__c)mainRecord;}}
	public with sharing class CanvasException extends Exception {}

	public String recordTypeRecordsJSON_PT_I_c {get; private set;}
	public String defaultRecordTypeId_PT_I_c {get; private set;}
	public String metadataJSON_PT_I_c {get; private set;}
	public String picklistValuesJSON_PT_I_c_Training_Suitable_for_c {get; private set;}
	public String picklistValuesJSON_PT_I_c_Training_Type_c {get; private set;}
	public String Component32_hidden { get; set; }
	
	
	public Component57 Component57 {get; private set;}
	public Component67 Component67 {get; private set;}
	{
	setApiVersion(31.0);
	}
	public SVE_20151115160417(ApexPages.StandardController controller) {
		super(controller);


		SObjectField f;

		f = PT_I__c.fields.Name;
		f = PT_I__c.fields.Training_Responsibility_Primary__c;
		f = PT_I__c.fields.Description__c;
		f = PT_I__c.fields.Training_Responsibility_Secondary__c;
		f = PT_I__c.fields.Participants__c;
		f = PT_I__c.fields.Training_Logistics_Requirement__c;
		f = PT_I__c.fields.OwnerId;
		f = PT_I__c.fields.Training_Suitable_for__c;
		f = PT_I__c.fields.Training_Type__c;
		f = PT_I__c.fields.Planing_Starts__c;
		f = PT_I__c.fields.Implementation_Start__c;
		f = PT_I__c.fields.Training_Start_Date__c;
		f = PT_I__c.fields.Implementation_End__c;
		f = PT_I__c.fields.Training_End_Date__c;
		f = Solution.fields.SolutionName;
		f = Solution.fields.SolutionNumber;
		f = Solution.fields.Status;
		f = Case.fields.CaseNumber;
		f = Case.fields.Subject;
		f = Case.fields.CreatedDate;
		f = Case.fields.Priority;

		List<RecordTypeInfo> recordTypes;
		FilterMetadataResult filterResult;
		List<RecordType> recordTypeRecords_PT_I_c = [SELECT Id, DeveloperName, NamespacePrefix FROM RecordType WHERE SobjectType = 'PT_I__c'];
		Map<Id, RecordType> recordTypeMap_PT_I_c = new Map<Id, RecordType>(recordTypeRecords_PT_I_c);
		List<RecordType> availableRecordTypes_PT_I_c = new List<RecordType>();
		recordTypes = SObjectType.PT_I__c.getRecordTypeInfos();

		for (RecordTypeInfo t: recordTypes) {
			if (t.isDefaultRecordTypeMapping()) {
				defaultRecordTypeId_PT_I_c = t.getRecordTypeId();
			}
			if (t.isAvailable()) {
				RecordType rtype = recordTypeMap_PT_I_c.get(t.getRecordTypeId());
				if (rtype != null) {
					availableRecordTypes_PT_I_c.add(rtype);
				}
			}
		}
		recordTypeRecordsJSON_PT_I_c = System.JSON.serialize(availableRecordTypes_PT_I_c);
		filterResult = filterMetadataJSON(
			System.JSON.deserializeUntyped('{"CustomObject":{"recordTypes":[]}}'),
			recordTypeFullNames(availableRecordTypes_PT_I_c),
			PT_I__c.SObjectType
		);
		metadataJSON_PT_I_c = System.JSON.serialize(filterResult.data);
		picklistValuesJSON_PT_I_c_Training_Suitable_for_c = System.JSON.serialize(filterPricklistEntries(PT_I__c.SObjectType.Training_Suitable_for__c.getDescribe(), filterResult));
		picklistValuesJSON_PT_I_c_Training_Type_c = System.JSON.serialize(filterPricklistEntries(PT_I__c.SObjectType.Training_Type__c.getDescribe(), filterResult));
		try {
			mainSObjectType = PT_I__c.SObjectType;
			setPageReferenceFactory(new PageReferenceFactory());
			
			mainQuery = new SkyEditor2.Query('PT_I__c');
			mainQuery.addField('Name');
			mainQuery.addField('Training_Responsibility_Primary__c');
			mainQuery.addField('Description__c');
			mainQuery.addField('Training_Responsibility_Secondary__c');
			mainQuery.addField('Participants__c');
			mainQuery.addField('Training_Logistics_Requirement__c');
			mainQuery.addField('OwnerId');
			mainQuery.addField('Training_Suitable_for__c');
			mainQuery.addField('Training_Type__c');
			mainQuery.addField('Planing_Starts__c');
			mainQuery.addField('Implementation_Start__c');
			mainQuery.addField('Training_Start_Date__c');
			mainQuery.addField('Implementation_End__c');
			mainQuery.addField('Training_End_Date__c');
			mainQuery.addWhere('Id', mainRecord.Id, SkyEditor2.WhereOperator.Eq)
				.limitRecords(1);
			
			
			
			mode = SkyEditor2.LayoutMode.LayoutSalesforce; 
			
			queryMap = new Map<String, SkyEditor2.Query>();
			SkyEditor2.Query query;
			
			Component57 = new Component57(new List<Solution>(), new List<Component57Item>(), new List<Solution>(), null);
			listItemHolders.put('Component57', Component57);
			query = new SkyEditor2.Query('Solution');
			query.addField('SolutionName');
			query.addField('Status');
			query.addFieldAsOutput('SolutionNumber');
			query.addWhere('PT_I__c', mainRecord.Id, SkyEditor2.WhereOperator.Eq);
			relationFields.put('Component57', 'PT_I__c');
			Component57.queryRelatedEvent = False;
			query.limitRecords(500);
			queryMap.put('Component57', query);
			
			Component67 = new Component67(new List<Case>(), new List<Component67Item>(), new List<Case>(), null);
			listItemHolders.put('Component67', Component67);
			query = new SkyEditor2.Query('Case');
			query.addField('Subject');
			query.addField('Priority');
			query.addFieldAsOutput('CaseNumber');
			query.addFieldAsOutput('CreatedDate');
			query.addWhere('PT_I__c', mainRecord.Id, SkyEditor2.WhereOperator.Eq);
			relationFields.put('Component67', 'PT_I__c');
			Component67.queryRelatedEvent = False;
			query.limitRecords(500);
			queryMap.put('Component67', query);
			
			registRelatedList('Solutions__r', 'Component57');
			registRelatedList('Cases__r', 'Component67');
			
			p_showHeader = true;
			p_sidebar = true;
			init();
			
			Component57.extender = this.extender;
			Component67.extender = this.extender;
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

	global with sharing class Component57Item extends SkyEditor2.ListItem {
		public Solution record{get; private set;}
		@TestVisible
		Component57Item(Component57 holder, Solution record, SkyEditor2.RecordTypeSelector recordTypeSelector) {
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
	global with sharing  class Component57 extends SkyEditor2.ListItemHolder {
		public List<Component57Item> items{get; private set;}
		@TestVisible
			Component57(List<SObject> records, List<SkyEditor2.ListItem> items, List<SObject> deleteRecords, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(records, items, deleteRecords, recordTypeSelector);
			this.items = (List<Component57Item>)items;
		}
		global override SkyEditor2.ListItem create(SObject data) {
			return new Component57Item(this, (Solution)data, recordTypeSelector);
		}
		public void doDeleteSelectedItems(){deleteSelectedItems();}
	}
	global with sharing class Component67Item extends SkyEditor2.ListItem {
		public Case record{get; private set;}
		@TestVisible
		Component67Item(Component67 holder, Case record, SkyEditor2.RecordTypeSelector recordTypeSelector) {
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
	global with sharing  class Component67 extends SkyEditor2.ListItemHolder {
		public List<Component67Item> items{get; private set;}
		@TestVisible
			Component67(List<SObject> records, List<SkyEditor2.ListItem> items, List<SObject> deleteRecords, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(records, items, deleteRecords, recordTypeSelector);
			this.items = (List<Component67Item>)items;
		}
		global override SkyEditor2.ListItem create(SObject data) {
			return new Component67Item(this, (Case)data, recordTypeSelector);
		}
		public void doDeleteSelectedItems(){deleteSelectedItems();}
	}
	public String getComponent32OptionsJS() {
		return SkyEditor2.JSON.stringify(SkyEditor2.PicklistValueSelector.getEntries(
		PT_I__c.getSObjectType(),
		SObjectType.PT_I__c.fields.Training_Suitable_for__c.getSObjectField()
		));
		}
	public String getComponent29OptionsJS() {
		return SkyEditor2.JSON.stringify(SkyEditor2.PicklistValueSelector.getEntries(
		PT_I__c.getSObjectType(),
		SObjectType.PT_I__c.fields.Training_Type__c.getSObjectField()
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