global with sharing class Space_Availability_Fill_Form extends SkyEditor2.SkyEditorPageBaseWithSharing {
	
	public Space_Options__c record {get{return (Space_Options__c)mainRecord;}}
	public with sharing class CanvasException extends Exception {}

	public String recordTypeRecordsJSON_Space_Options_c {get; private set;}
	public String defaultRecordTypeId_Space_Options_c {get; private set;}
	public String metadataJSON_Space_Options_c {get; private set;}
	public String picklistValuesJSON_Space_Options_c_Channel_Partners_c {get; private set;}
	public String picklistValuesJSON_Space_Options_c_Shop_Type_c {get; private set;}
	public String picklistValuesJSON_Space_Options_c_Entry_From_c {get; private set;}
	public String picklistValuesJSON_Space_Options_c_Floor_Rent_c {get; private set;}
	public String picklistValuesJSON_Space_Options_c_Facing_c {get; private set;}
	public String picklistValuesJSON_Space_Options_c_Agreement_Type_c {get; private set;}
	public String picklistValuesJSON_Space_Options_c_Footfall_c {get; private set;}
	public String picklistValuesJSON_Space_Options_c_Parking_c {get; private set;}
	public String picklistValuesJSON_Space_Options_c_Space_Feel_c {get; private set;}
	public String picklistValuesJSON_Space_Options_c_Amenities_c {get; private set;}
	public String Component108_hidden { get; set; }
	public String Component102_hidden { get; set; }
	public String Component93_hidden { get; set; }
	
	
	{
	setApiVersion(31.0);
	}
	public Space_Availability_Fill_Form(ApexPages.StandardController controller) {
		super(controller);


		SObjectField f;

		f = Space_Options__c.fields.Name;
		f = Space_Options__c.fields.Channel_Partners__c;
		f = Space_Options__c.fields.Available_For_Rent__c;
		f = Space_Options__c.fields.Shop_Type__c;
		f = Space_Options__c.fields.Hot_Property__c;
		f = Space_Options__c.fields.Last_Spoken_On__c;
		f = Space_Options__c.fields.Rating__c;
		f = Space_Options__c.fields.Rent_Month__c;
		f = Space_Options__c.fields.Frontage_Ft__c;
		f = Space_Options__c.fields.Covered_Area_Sq_Ft__c;
		f = Space_Options__c.fields.Entry_From__c;
		f = Space_Options__c.fields.Carpet_Area__c;
		f = Space_Options__c.fields.Ceiling_Ht_Ft__c;
		f = Space_Options__c.fields.Floor_Rent__c;
		f = Space_Options__c.fields.Lift__c;
		f = Space_Options__c.fields.Floorwise_Area__c;
		f = Space_Options__c.fields.ZSuits__c;
		f = Space_Options__c.fields.Client_Remarks_Lease__c;
		f = Space_Options__c.fields.R_S_History__c;
		f = Space_Options__c.fields.Space_Notes_Lease__c;
		f = Space_Options__c.fields.No_of_Multiple_Options__c;
		f = Space_Options__c.fields.Facing__c;
		f = Space_Options__c.fields.Power_Load_K_Watt_KVA__c;
		f = Space_Options__c.fields.Adv_Security_months__c;
		f = Space_Options__c.fields.Min_Area__c;
		f = Space_Options__c.fields.Agreement_Type__c;
		f = Space_Options__c.fields.Genset_Load_KVA_K_Watt__c;
		f = Space_Options__c.fields.Escalation__c;
		f = Space_Options__c.fields.Max_Area__c;
		f = Space_Options__c.fields.Possession_Date__c;
		f = Space_Options__c.fields.Lock_In_Period__c;
		f = Space_Options__c.fields.Footfall__c;
		f = Space_Options__c.fields.Genset_Space__c;
		f = Space_Options__c.fields.Space_Feel__c;
		f = Space_Options__c.fields.Parking__c;
		f = Space_Options__c.fields.Bar_Not_Allowed__c;
		f = Space_Options__c.fields.Stair_Evaluation_Remarks__c;
		f = Space_Options__c.fields.Back_Entrance__c;
		f = Space_Options__c.fields.No_Non_Veg__c;
		f = Space_Options__c.fields.Lift_1__c;
		f = Space_Options__c.fields.Water_Tank__c;
		f = Space_Options__c.fields.Ceiling_Ht_1__c;
		f = Space_Options__c.fields.Terrace_Open_Area__c;
		f = Space_Options__c.fields.Brand_Has_Bar__c;
		f = Space_Options__c.fields.Running_Restaurant__c;
		f = Space_Options__c.fields.Super_Area_Sq_Ft__c;
		f = Space_Options__c.fields.Loading__c;
		f = Space_Options__c.fields.Mntnc_Chgs__c;
		f = Space_Options__c.fields.Amenities__c;

		List<RecordTypeInfo> recordTypes;
		FilterMetadataResult filterResult;
		List<RecordType> recordTypeRecords_Space_Options_c = [SELECT Id, DeveloperName, NamespacePrefix FROM RecordType WHERE SobjectType = 'Space_Options__c'];
		Map<Id, RecordType> recordTypeMap_Space_Options_c = new Map<Id, RecordType>(recordTypeRecords_Space_Options_c);
		List<RecordType> availableRecordTypes_Space_Options_c = new List<RecordType>();
		recordTypes = SObjectType.Space_Options__c.getRecordTypeInfos();

		for (RecordTypeInfo t: recordTypes) {
			if (t.isDefaultRecordTypeMapping()) {
				defaultRecordTypeId_Space_Options_c = t.getRecordTypeId();
			}
			if (t.isAvailable()) {
				RecordType rtype = recordTypeMap_Space_Options_c.get(t.getRecordTypeId());
				if (rtype != null) {
					availableRecordTypes_Space_Options_c.add(rtype);
				}
			}
		}
		recordTypeRecordsJSON_Space_Options_c = System.JSON.serialize(availableRecordTypes_Space_Options_c);
		filterResult = filterMetadataJSON(
			System.JSON.deserializeUntyped('{"CustomObject":{"recordTypes":[{"fullName":"SPACES","picklistValues":[{"picklist":"Agreement_Type__c","values":[{"fullName":"Business Conducting","default":false},{"fullName":"Buyer - Seller","default":false},{"fullName":"Company Takeover","default":false},{"fullName":"Franchise","default":false},{"fullName":"Lease","default":false}]},{"picklist":"Amenities__c","values":[{"fullName":"Airconditioning","default":false},{"fullName":"Exclusive Parking","default":false},{"fullName":"Lift","default":false},{"fullName":"Powerbackup","default":false}]},{"picklist":"Channel_Partners__c","values":[{"fullName":"Direct","default":false},{"fullName":"Multiple Partners","default":false},{"fullName":"Partner","default":false}]},{"picklist":"Entry_From__c","values":[{"fullName":"Back","default":false},{"fullName":"Front","default":false}]},{"picklist":"Facing__c","values":[{"fullName":"East","default":false},{"fullName":"North","default":false},{"fullName":"Park","default":false},{"fullName":"South","default":false},{"fullName":"West","default":false}]},{"picklist":"Floor_Rent__c","values":[{"fullName":"%7BFull Bldg%7D","default":false},{"fullName":"10th","default":false},{"fullName":"11th","default":false},{"fullName":"12th","default":false},{"fullName":"4th","default":false},{"fullName":"5th","default":false},{"fullName":"6th","default":false},{"fullName":"7th","default":false},{"fullName":"8th","default":false},{"fullName":"9th","default":false},{"fullName":"Bmt","default":false},{"fullName":"FF","default":false},{"fullName":"GF","default":false},{"fullName":"LGF","default":false},{"fullName":"Mezz","default":false},{"fullName":"SF","default":false},{"fullName":"TF","default":false},{"fullName":"Terrace","default":false},{"fullName":"UGF","default":false}]},{"picklist":"Footfall__c","values":[{"fullName":"A","default":false},{"fullName":"B","default":false},{"fullName":"C","default":false},{"fullName":"D","default":false},{"fullName":"E","default":false}]},{"picklist":"Parking__c","values":[{"fullName":"A","default":false},{"fullName":"B","default":false},{"fullName":"C","default":false},{"fullName":"D","default":false},{"fullName":"E","default":false}]},{"picklist":"Shop_Type__c","values":[{"fullName":"Big Kiosk","default":false},{"fullName":"Big Shop","default":false},{"fullName":"Kiosk","default":false},{"fullName":"Shop","default":false}]},{"picklist":"Space_Feel__c","values":[{"fullName":"A","default":false},{"fullName":"B","default":false},{"fullName":"C","default":false},{"fullName":"D","default":false},{"fullName":"E","default":false},{"fullName":"p%2Fd","default":false}]}]},{"fullName":"SPACE_MASTER","picklistValues":[{"picklist":"Agreement_Type__c","values":[{"fullName":"Business Conducting","default":false},{"fullName":"Buyer - Seller","default":false},{"fullName":"Company Takeover","default":false},{"fullName":"Franchise","default":false},{"fullName":"Lease","default":false}]},{"picklist":"Amenities__c","values":[{"fullName":"Airconditioning","default":false},{"fullName":"Exclusive Parking","default":false},{"fullName":"Lift","default":false},{"fullName":"Powerbackup","default":false}]},{"picklist":"Channel_Partners__c","values":[{"fullName":"Direct","default":false},{"fullName":"Multiple Partners","default":false},{"fullName":"Partner","default":false}]},{"picklist":"Entry_From__c","values":[{"fullName":"Back","default":false},{"fullName":"Front","default":false}]},{"picklist":"Facing__c","values":[{"fullName":"East","default":false},{"fullName":"North","default":false},{"fullName":"Park","default":false},{"fullName":"South","default":false},{"fullName":"West","default":false}]},{"picklist":"Floor_Rent__c","values":[{"fullName":"%7BFull Bldg%7D","default":false},{"fullName":"10th","default":false},{"fullName":"11th","default":false},{"fullName":"12th","default":false},{"fullName":"4th","default":false},{"fullName":"5th","default":false},{"fullName":"6th","default":false},{"fullName":"7th","default":false},{"fullName":"8th","default":false},{"fullName":"9th","default":false},{"fullName":"Bmt","default":false},{"fullName":"FF","default":false},{"fullName":"GF","default":false},{"fullName":"LGF","default":false},{"fullName":"Mezz","default":false},{"fullName":"SF","default":false},{"fullName":"TF","default":false},{"fullName":"Terrace","default":false},{"fullName":"UGF","default":false}]},{"picklist":"Footfall__c","values":[{"fullName":"A","default":false},{"fullName":"B","default":false},{"fullName":"C","default":false},{"fullName":"D","default":false},{"fullName":"E","default":false}]},{"picklist":"Parking__c","values":[{"fullName":"A","default":false},{"fullName":"B","default":false},{"fullName":"C","default":false},{"fullName":"D","default":false},{"fullName":"E","default":false}]},{"picklist":"Shop_Type__c","values":[{"fullName":"Big Kiosk","default":false},{"fullName":"Big Shop","default":false},{"fullName":"Kiosk","default":false},{"fullName":"Shop","default":false}]},{"picklist":"Space_Feel__c","values":[{"fullName":"A","default":false},{"fullName":"B","default":false},{"fullName":"C","default":false},{"fullName":"D","default":false},{"fullName":"E","default":false},{"fullName":"p%2Fd","default":false}]}]}]}}'),
			recordTypeFullNames(availableRecordTypes_Space_Options_c),
			Space_Options__c.SObjectType
		);
		metadataJSON_Space_Options_c = System.JSON.serialize(filterResult.data);
		picklistValuesJSON_Space_Options_c_Channel_Partners_c = System.JSON.serialize(filterPricklistEntries(Space_Options__c.SObjectType.Channel_Partners__c.getDescribe(), filterResult));
		picklistValuesJSON_Space_Options_c_Shop_Type_c = System.JSON.serialize(filterPricklistEntries(Space_Options__c.SObjectType.Shop_Type__c.getDescribe(), filterResult));
		picklistValuesJSON_Space_Options_c_Entry_From_c = System.JSON.serialize(filterPricklistEntries(Space_Options__c.SObjectType.Entry_From__c.getDescribe(), filterResult));
		picklistValuesJSON_Space_Options_c_Floor_Rent_c = System.JSON.serialize(filterPricklistEntries(Space_Options__c.SObjectType.Floor_Rent__c.getDescribe(), filterResult));
		picklistValuesJSON_Space_Options_c_Facing_c = System.JSON.serialize(filterPricklistEntries(Space_Options__c.SObjectType.Facing__c.getDescribe(), filterResult));
		picklistValuesJSON_Space_Options_c_Agreement_Type_c = System.JSON.serialize(filterPricklistEntries(Space_Options__c.SObjectType.Agreement_Type__c.getDescribe(), filterResult));
		picklistValuesJSON_Space_Options_c_Footfall_c = System.JSON.serialize(filterPricklistEntries(Space_Options__c.SObjectType.Footfall__c.getDescribe(), filterResult));
		picklistValuesJSON_Space_Options_c_Parking_c = System.JSON.serialize(filterPricklistEntries(Space_Options__c.SObjectType.Parking__c.getDescribe(), filterResult));
		picklistValuesJSON_Space_Options_c_Space_Feel_c = System.JSON.serialize(filterPricklistEntries(Space_Options__c.SObjectType.Space_Feel__c.getDescribe(), filterResult));
		picklistValuesJSON_Space_Options_c_Amenities_c = System.JSON.serialize(filterPricklistEntries(Space_Options__c.SObjectType.Amenities__c.getDescribe(), filterResult));
		try {
			mainSObjectType = Space_Options__c.SObjectType;
			setPageReferenceFactory(new PageReferenceFactory());
			
			mainQuery = new SkyEditor2.Query('Space_Options__c');
			mainQuery.addField('Name');
			mainQuery.addField('Channel_Partners__c');
			mainQuery.addField('Available_For_Rent__c');
			mainQuery.addField('Shop_Type__c');
			mainQuery.addField('Hot_Property__c');
			mainQuery.addField('Last_Spoken_On__c');
			mainQuery.addField('Rating__c');
			mainQuery.addField('Rent_Month__c');
			mainQuery.addField('Frontage_Ft__c');
			mainQuery.addField('Covered_Area_Sq_Ft__c');
			mainQuery.addField('Entry_From__c');
			mainQuery.addField('Carpet_Area__c');
			mainQuery.addField('Ceiling_Ht_Ft__c');
			mainQuery.addField('Floor_Rent__c');
			mainQuery.addField('Floorwise_Area__c');
			mainQuery.addField('ZSuits__c');
			mainQuery.addField('Client_Remarks_Lease__c');
			mainQuery.addField('R_S_History__c');
			mainQuery.addField('Space_Notes_Lease__c');
			mainQuery.addField('Possession_Date__c');
			mainQuery.addField('Footfall__c');
			mainQuery.addField('Genset_Space__c');
			mainQuery.addField('Space_Feel__c');
			mainQuery.addField('Parking__c');
			mainQuery.addField('Bar_Not_Allowed__c');
			mainQuery.addField('Stair_Evaluation_Remarks__c');
			mainQuery.addField('Back_Entrance__c');
			mainQuery.addField('No_Non_Veg__c');
			mainQuery.addField('Lift_1__c');
			mainQuery.addField('Water_Tank__c');
			mainQuery.addField('Ceiling_Ht_1__c');
			mainQuery.addField('Terrace_Open_Area__c');
			mainQuery.addField('Brand_Has_Bar__c');
			mainQuery.addField('Running_Restaurant__c');
			mainQuery.addField('Super_Area_Sq_Ft__c');
			mainQuery.addField('Loading__c');
			mainQuery.addField('Mntnc_Chgs__c');
			mainQuery.addField('Amenities__c');
			mainQuery.addFieldAsOutput('RecordTypeId');
			mainQuery.addFieldAsOutput('Lift__c');
			mainQuery.addFieldAsOutput('No_of_Multiple_Options__c');
			mainQuery.addFieldAsOutput('Facing__c');
			mainQuery.addFieldAsOutput('Power_Load_K_Watt_KVA__c');
			mainQuery.addFieldAsOutput('Adv_Security_months__c');
			mainQuery.addFieldAsOutput('Min_Area__c');
			mainQuery.addFieldAsOutput('Agreement_Type__c');
			mainQuery.addFieldAsOutput('Genset_Load_KVA_K_Watt__c');
			mainQuery.addFieldAsOutput('Escalation__c');
			mainQuery.addFieldAsOutput('Max_Area__c');
			mainQuery.addFieldAsOutput('Lock_In_Period__c');
			mainQuery.addWhere('Id', mainRecord.Id, SkyEditor2.WhereOperator.Eq)
				.limitRecords(1);
			
			
			
			mode = SkyEditor2.LayoutMode.LayoutSalesforce; 
			
			queryMap = new Map<String, SkyEditor2.Query>();
			SkyEditor2.Query query;
			
			
			p_showHeader = true;
			p_sidebar = true;
			addInheritParameter('RecordTypeId', 'RecordType');
			init();
			
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

	public String getComponent466OptionsJS() {
		return SkyEditor2.JSON.stringify(SkyEditor2.PicklistValueSelector.getEntries(
		Space_Options__c.getSObjectType(),
		SObjectType.Space_Options__c.fields.Channel_Partners__c.getSObjectField()
		));
		}
	public String getComponent469OptionsJS() {
		return SkyEditor2.JSON.stringify(SkyEditor2.PicklistValueSelector.getEntries(
		Space_Options__c.getSObjectType(),
		SObjectType.Space_Options__c.fields.Shop_Type__c.getSObjectField()
		));
		}
	public String getComponent96OptionsJS() {
		return SkyEditor2.JSON.stringify(SkyEditor2.PicklistValueSelector.getEntries(
		Space_Options__c.getSObjectType(),
		SObjectType.Space_Options__c.fields.Entry_From__c.getSObjectField()
		));
		}
	public String getComponent108OptionsJS() {
		return SkyEditor2.JSON.stringify(SkyEditor2.PicklistValueSelector.getEntries(
		Space_Options__c.getSObjectType(),
		SObjectType.Space_Options__c.fields.Floor_Rent__c.getSObjectField()
		));
		}
	public String getComponent102OptionsJS() {
		return SkyEditor2.JSON.stringify(SkyEditor2.PicklistValueSelector.getEntries(
		Space_Options__c.getSObjectType(),
		SObjectType.Space_Options__c.fields.Facing__c.getSObjectField()
		));
		}
	public String getComponent541OptionsJS() {
		return SkyEditor2.JSON.stringify(SkyEditor2.PicklistValueSelector.getEntries(
		Space_Options__c.getSObjectType(),
		SObjectType.Space_Options__c.fields.Agreement_Type__c.getSObjectField()
		));
		}
	public String getComponent124OptionsJS() {
		return SkyEditor2.JSON.stringify(SkyEditor2.PicklistValueSelector.getEntries(
		Space_Options__c.getSObjectType(),
		SObjectType.Space_Options__c.fields.Footfall__c.getSObjectField()
		));
		}
	public String getComponent130OptionsJS() {
		return SkyEditor2.JSON.stringify(SkyEditor2.PicklistValueSelector.getEntries(
		Space_Options__c.getSObjectType(),
		SObjectType.Space_Options__c.fields.Parking__c.getSObjectField()
		));
		}
	public String getComponent164OptionsJS() {
		return SkyEditor2.JSON.stringify(SkyEditor2.PicklistValueSelector.getEntries(
		Space_Options__c.getSObjectType(),
		SObjectType.Space_Options__c.fields.Space_Feel__c.getSObjectField()
		));
		}
	public String getComponent93OptionsJS() {
		return SkyEditor2.JSON.stringify(SkyEditor2.PicklistValueSelector.getEntries(
		Space_Options__c.getSObjectType(),
		SObjectType.Space_Options__c.fields.Amenities__c.getSObjectField()
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