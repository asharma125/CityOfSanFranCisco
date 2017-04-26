global with sharing class Mobile_f5_layout extends SkyEditor2.SkyEditorPageBaseWithSharing {
	
	public F_5_Report__c record {get{return (F_5_Report__c)mainRecord;}}
	public with sharing class CanvasException extends Exception {}

	public String recordTypeRecordsJSON_F_5_Report_c {get; private set;}
	public String defaultRecordTypeId_F_5_Report_c {get; private set;}
	public String metadataJSON_F_5_Report_c {get; private set;}
	public String picklistValuesJSON_F_5_Report_c_Property_Status_c {get; private set;}
	
	
	public Component41 Component41 {get; private set;}
	{
	setApiVersion(31.0);
	}
	public Mobile_f5_layout(ApexPages.StandardController controller) {
		super(controller);


		SObjectField f;

		f = F_5_Report__c.fields.Name;
		f = F_5_Report__c.fields.Visiting_Card_Recieved__c;
		f = F_5_Report__c.fields.Visiting_Card_Not_Recieved__c;
		f = F_5_Report__c.fields.New_Existing_Brand__c;
		f = F_5_Report__c.fields.NEW_BRAND_COMMENTS__c;
		f = F_5_Report__c.fields.Pre_Informed_Brand_Name__c;
		f = F_5_Report__c.fields.New_Brand_Approval__c;
		f = F_5_Report__c.fields.F_5_Case_No__c;
		f = F_5_Report__c.fields.Property_Status__c;
		f = F_5_Report__c.fields.F_5_Case_Age__c;
		f = F_5_Report__c.fields.Space_Rent_Sale__c;

		List<RecordTypeInfo> recordTypes;
		FilterMetadataResult filterResult;
		List<RecordType> recordTypeRecords_F_5_Report_c = [SELECT Id, DeveloperName, NamespacePrefix FROM RecordType WHERE SobjectType = 'F_5_Report__c'];
		Map<Id, RecordType> recordTypeMap_F_5_Report_c = new Map<Id, RecordType>(recordTypeRecords_F_5_Report_c);
		List<RecordType> availableRecordTypes_F_5_Report_c = new List<RecordType>();
		recordTypes = SObjectType.F_5_Report__c.getRecordTypeInfos();

		for (RecordTypeInfo t: recordTypes) {
			if (t.isDefaultRecordTypeMapping()) {
				defaultRecordTypeId_F_5_Report_c = t.getRecordTypeId();
			}
			if (t.isAvailable()) {
				RecordType rtype = recordTypeMap_F_5_Report_c.get(t.getRecordTypeId());
				if (rtype != null) {
					availableRecordTypes_F_5_Report_c.add(rtype);
				}
			}
		}
		recordTypeRecordsJSON_F_5_Report_c = System.JSON.serialize(availableRecordTypes_F_5_Report_c);
		filterResult = filterMetadataJSON(
			System.JSON.deserializeUntyped('{"CustomObject":{"recordTypes":[]}}'),
			recordTypeFullNames(availableRecordTypes_F_5_Report_c),
			F_5_Report__c.SObjectType
		);
		metadataJSON_F_5_Report_c = System.JSON.serialize(filterResult.data);
		picklistValuesJSON_F_5_Report_c_Property_Status_c = System.JSON.serialize(filterPricklistEntries(F_5_Report__c.SObjectType.Property_Status__c.getDescribe(), filterResult));
		try {
			mainSObjectType = F_5_Report__c.SObjectType;
			setPageReferenceFactory(new PageReferenceFactory());
			
			mainQuery = new SkyEditor2.Query('F_5_Report__c');
			mainQuery.addField('Name');
			mainQuery.addField('Visiting_Card_Recieved__c');
			mainQuery.addField('Visiting_Card_Not_Recieved__c');
			mainQuery.addField('New_Existing_Brand__c');
			mainQuery.addField('NEW_BRAND_COMMENTS__c');
			mainQuery.addField('Pre_Informed_Brand_Name__c');
			mainQuery.addField('Space_Rent_Sale__c');
			mainQuery.addFieldAsOutput('New_Brand_Approval__c');
			mainQuery.addFieldAsOutput('F_5_Case_No__c');
			mainQuery.addFieldAsOutput('Property_Status__c');
			mainQuery.addFieldAsOutput('F_5_Case_Age__c');
			mainQuery.addWhere('Id', mainRecord.Id, SkyEditor2.WhereOperator.Eq)
				.limitRecords(1);
			
			
			
			mode = SkyEditor2.LayoutMode.LayoutSalesforce; 
			
			queryMap = new Map<String, SkyEditor2.Query>();
			SkyEditor2.Query query;
			
			Component41 = new Component41(new List<Space_Options__c>(), new List<Component41Item>(), new List<Space_Options__c>(), null);
			listItemHolders.put('Component41', Component41);
			query = new SkyEditor2.Query('Space_Options__c');
			query.addFieldAsOutput('RecordTypeId');
			Component41.queryRelatedEvent = False;
			query.limitRecords(500);
			queryMap.put('Component41', query);
			
			
			p_showHeader = true;
			p_sidebar = false;
			init();
			
			Component41.extender = this.extender;
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

	global with sharing class Component41Item extends SkyEditor2.ListItem {
		public Space_Options__c record{get; private set;}
		@TestVisible
		Component41Item(Component41 holder, Space_Options__c record, SkyEditor2.RecordTypeSelector recordTypeSelector) {
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
	global with sharing  class Component41 extends SkyEditor2.ListItemHolder {
		public List<Component41Item> items{get; private set;}
		global override Boolean isRelationalTable() {
		return false;
		}
		@TestVisible
			Component41(List<SObject> records, List<SkyEditor2.ListItem> items, List<SObject> deleteRecords, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(records, items, deleteRecords, recordTypeSelector);
			this.items = (List<Component41Item>)items;
		}
		global override SkyEditor2.ListItem create(SObject data) {
			return new Component41Item(this, (Space_Options__c)data, recordTypeSelector);
		}
		public void doDeleteSelectedItems(){deleteSelectedItems();}
	}
	public String getComponent54OptionsJS() {
		return SkyEditor2.JSON.stringify(SkyEditor2.PicklistValueSelector.getEntries(
		F_5_Report__c.getSObjectType(),
		SObjectType.F_5_Report__c.fields.Property_Status__c.getSObjectField()
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