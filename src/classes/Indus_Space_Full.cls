global with sharing class Indus_Space_Full extends SkyEditor2.SkyEditorPageBaseWithSharing {
	
	public Space_Options__c record {get{return (Space_Options__c)mainRecord;}}
	public Canvas Component166 {get; set;}
	public with sharing class CanvasException extends Exception {}

	public string Component284_pagename{get;set;}
	public string Component284_recordid{get;set;}
	public String recordTypeRecordsJSON_Space_Options_c {get; private set;}
	public String defaultRecordTypeId_Space_Options_c {get; private set;}
	public String metadataJSON_Space_Options_c {get; private set;}
	public String picklistValuesJSON_Space_Options_c_Shop_Type_c {get; private set;}
	public String picklistValuesJSON_Space_Options_c_Rating_c {get; private set;}
	public String picklistValuesJSON_Space_Options_c_Land_Status_c {get; private set;}
	public String Component171_hidden { get; set; }
	
	
	{
	setApiVersion(31.0);
	}
	public Indus_Space_Full(ApexPages.StandardController controller) {
		super(controller);


		SObjectField f;

		f = Space_Options__c.fields.Space_Ref_No__c;
		f = Space_Options__c.fields.Temp_Selection__c;
		f = Space_Options__c.fields.Building_new__c;
		f = Space_Options__c.fields.Available_For_Rent__c;
		f = Space_Options__c.fields.Carpet_Area_S_Ft__c;
		f = Space_Options__c.fields.Frontage_Ft__c;
		f = Space_Options__c.fields.Space_Street__c;
		f = Space_Options__c.fields.Create_Maybe_Rent_Task__c;
		f = Space_Options__c.fields.Covered_Area_Sq_Ft__c;
		f = Space_Options__c.fields.Ceiling_Ht_Ft__c;
		f = Space_Options__c.fields.Space_Location_1__c;
		f = Space_Options__c.fields.Maybe_Available_for_Rent__c;
		f = Space_Options__c.fields.Floorwise_Area__c;
		f = Space_Options__c.fields.Facing__c;
		f = Space_Options__c.fields.Property_No__c;
		f = Space_Options__c.fields.Hot_Property__c;
		f = Space_Options__c.fields.Area_Suits__c;
		f = Space_Options__c.fields.Entry_From__c;
		f = Space_Options__c.fields.Property_Code__c;
		f = Space_Options__c.fields.Carpet_Area__c;
		f = Space_Options__c.fields.Full_Building__c;
		f = Space_Options__c.fields.Prop_type__c;
		f = Space_Options__c.fields.Built_Up_Area__c;
		f = Space_Options__c.fields.DFS_Date__c;
		f = Space_Options__c.fields.Virtual_Owner__c;
		f = Space_Options__c.fields.Amenities__c;
		f = Space_Options__c.fields.Space_availability_Removed_On__c;
		f = Space_Options__c.fields.Shop_Type__c;
		f = Space_Options__c.fields.Genset_Load_KVA_K_Watt__c;
		f = Space_Options__c.fields.F_5_Case_No__c;
		f = Space_Options__c.fields.Rating__c;
		f = Space_Options__c.fields.Lift_1__c;
		f = Space_Options__c.fields.Reno_Status__c;
		f = Space_Options__c.fields.Land_Status__c;
		f = Space_Options__c.fields.Stilt_Construction__c;
		f = Space_Options__c.fields.Space_Notes_Lease__c;
		f = Space_Options__c.fields.Staircase_Evaluation_Link__c;
		f = Space_Options__c.fields.Stair_Evaluation_Remarks__c;
		f = Space_Options__c.fields.Vacant__c;
		f = Space_Options__c.fields.Rent_Month__c;
		f = Space_Options__c.fields.Client_Remarks_Lease__c;
		f = Space_Options__c.fields.Budget_Suits__c;
		f = Space_Options__c.fields.Security_Deposit__c;
		f = Space_Options__c.fields.ZSuits__c;
		f = Space_Options__c.fields.Rent_PSF_on_Super_Area__c;
		f = Space_Options__c.fields.Construction_Status__c;
		f = Space_Options__c.fields.Rent_PSF_on_Covered_Area__c;
		f = Space_Options__c.fields.Possession_Hand_Over__c;
		f = Space_Options__c.fields.Agreement_Type__c;
		f = Space_Options__c.fields.Adv_Security_months__c;
		f = Space_Options__c.fields.R_S_History__c;
		f = Space_Options__c.fields.Running_Restaurant__c;
		f = Space_Options__c.fields.Water_Tank__c;
		f = Space_Options__c.fields.No_Non_Veg__c;
		f = Space_Options__c.fields.Brand_Has_Bar__c;
		f = Space_Options__c.fields.Ceiling_Ht_1__c;
		f = Space_Options__c.fields.Bar_Not_Allowed__c;
		f = Space_Options__c.fields.Terrace_Open_Area__c;
		f = Space_Options__c.fields.Space_Feel__c;
		f = Space_Options__c.fields.Back_Entrance__c;
		f = Space_Options__c.fields.Footfall__c;
		f = Space_Options__c.fields.Brand_Sales_Figures_Dolllar__c;
		f = Space_Options__c.fields.Space_Last_Lease_Amount__c;
		f = Space_Options__c.fields.Old_Signage__c;
		f = Space_Options__c.fields.Current_Brand_Sales_Figure__c;
		f = Space_Options__c.fields.Tenant__c;
		f = Space_Options__c.fields.Current_Lease_Commencement__c;
		f = Space_Options__c.fields.Tenant_Details__c;
		f = Space_Options__c.fields.Current_Lease_Expiry__c;
		f = Space_Options__c.fields.Tenure__c;
		f = Space_Options__c.fields.Lease_Tenure__c;
		f = Space_Options__c.fields.Comments_Old_New_Tenants__c;
		f = Space_Options__c.fields.Tenure_Remaining__c;
		f = Space_Options__c.fields.CreatedDate;
		f = Space_Options__c.fields.REA_Space_Id__c;
		f = Space_Options__c.fields.CreatedById;
		f = Space_Options__c.fields.Global_Search_Assistant__c;

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
			System.JSON.deserializeUntyped('{"CustomObject":{"recordTypes":[{"fullName":"SPACES","picklistValues":[{"picklist":"Land_Status__c","values":[{"fullName":"C%2EC%2E","default":false},{"fullName":"Com%2E Charge paid","default":false},{"fullName":"Freehold","default":false},{"fullName":"Leasehold","default":false}]},{"picklist":"Rating__c","values":[{"fullName":"1","default":false},{"fullName":"2","default":false},{"fullName":"3","default":false},{"fullName":"4","default":false},{"fullName":"5","default":false},{"fullName":"D","default":false}]},{"picklist":"Shop_Type__c","values":[{"fullName":"Big Kiosk","default":false},{"fullName":"Big Shop","default":false},{"fullName":"Kiosk","default":false},{"fullName":"Shop","default":false}]}]},{"fullName":"SPACE_MASTER","picklistValues":[{"picklist":"Land_Status__c","values":[{"fullName":"C%2EC%2E","default":false},{"fullName":"Com%2E Charge paid","default":false},{"fullName":"Freehold","default":false},{"fullName":"Leasehold","default":false}]},{"picklist":"Rating__c","values":[{"fullName":"1","default":false},{"fullName":"2","default":false},{"fullName":"3","default":false},{"fullName":"4","default":false},{"fullName":"5","default":false},{"fullName":"D","default":false}]},{"picklist":"Shop_Type__c","values":[{"fullName":"Big Kiosk","default":false},{"fullName":"Big Shop","default":false},{"fullName":"Kiosk","default":false},{"fullName":"Shop","default":false}]}]}]}}'),
			recordTypeFullNames(availableRecordTypes_Space_Options_c),
			Space_Options__c.SObjectType
		);
		metadataJSON_Space_Options_c = System.JSON.serialize(filterResult.data);
		picklistValuesJSON_Space_Options_c_Shop_Type_c = System.JSON.serialize(filterPricklistEntries(Space_Options__c.SObjectType.Shop_Type__c.getDescribe(), filterResult));
		picklistValuesJSON_Space_Options_c_Rating_c = System.JSON.serialize(filterPricklistEntries(Space_Options__c.SObjectType.Rating__c.getDescribe(), filterResult));
		picklistValuesJSON_Space_Options_c_Land_Status_c = System.JSON.serialize(filterPricklistEntries(Space_Options__c.SObjectType.Land_Status__c.getDescribe(), filterResult));
		try {
			mainSObjectType = Space_Options__c.SObjectType;
			setPageReferenceFactory(new PageReferenceFactory());
			
			mainQuery = new SkyEditor2.Query('Space_Options__c');
			mainQuery.addField('Maybe_Available_for_Rent__c');
			mainQuery.addFieldAsOutput('Name');
			mainQuery.addFieldAsOutput('RecordTypeId');
			mainQuery.addFieldAsOutput('Space_Ref_No__c');
			mainQuery.addFieldAsOutput('Temp_Selection__c');
			mainQuery.addFieldAsOutput('Building_new__c');
			mainQuery.addFieldAsOutput('Available_For_Rent__c');
			mainQuery.addFieldAsOutput('Carpet_Area_S_Ft__c');
			mainQuery.addFieldAsOutput('Frontage_Ft__c');
			mainQuery.addFieldAsOutput('Space_Street__c');
			mainQuery.addFieldAsOutput('Create_Maybe_Rent_Task__c');
			mainQuery.addFieldAsOutput('Covered_Area_Sq_Ft__c');
			mainQuery.addFieldAsOutput('Ceiling_Ht_Ft__c');
			mainQuery.addFieldAsOutput('Space_Location_1__c');
			mainQuery.addFieldAsOutput('Maybe_Available_for_Rent__c');
			mainQuery.addFieldAsOutput('Floorwise_Area__c');
			mainQuery.addFieldAsOutput('Facing__c');
			mainQuery.addFieldAsOutput('Property_No__c');
			mainQuery.addFieldAsOutput('Hot_Property__c');
			mainQuery.addFieldAsOutput('Area_Suits__c');
			mainQuery.addFieldAsOutput('Entry_From__c');
			mainQuery.addFieldAsOutput('Property_Code__c');
			mainQuery.addFieldAsOutput('Carpet_Area__c');
			mainQuery.addFieldAsOutput('Full_Building__c');
			mainQuery.addFieldAsOutput('Prop_type__c');
			mainQuery.addFieldAsOutput('Built_Up_Area__c');
			mainQuery.addFieldAsOutput('DFS_Date__c');
			mainQuery.addFieldAsOutput('Virtual_Owner__c');
			mainQuery.addFieldAsOutput('Amenities__c');
			mainQuery.addFieldAsOutput('Space_availability_Removed_On__c');
			mainQuery.addFieldAsOutput('Shop_Type__c');
			mainQuery.addFieldAsOutput('Genset_Load_KVA_K_Watt__c');
			mainQuery.addFieldAsOutput('F_5_Case_No__c');
			mainQuery.addFieldAsOutput('Rating__c');
			mainQuery.addFieldAsOutput('Lift_1__c');
			mainQuery.addFieldAsOutput('Reno_Status__c');
			mainQuery.addFieldAsOutput('Land_Status__c');
			mainQuery.addFieldAsOutput('Stilt_Construction__c');
			mainQuery.addFieldAsOutput('Space_Notes_Lease__c');
			mainQuery.addFieldAsOutput('Staircase_Evaluation_Link__c');
			mainQuery.addFieldAsOutput('Stair_Evaluation_Remarks__c');
			mainQuery.addFieldAsOutput('Vacant__c');
			mainQuery.addFieldAsOutput('Rent_Month__c');
			mainQuery.addFieldAsOutput('Client_Remarks_Lease__c');
			mainQuery.addFieldAsOutput('Budget_Suits__c');
			mainQuery.addFieldAsOutput('Security_Deposit__c');
			mainQuery.addFieldAsOutput('ZSuits__c');
			mainQuery.addFieldAsOutput('Rent_PSF_on_Super_Area__c');
			mainQuery.addFieldAsOutput('Construction_Status__c');
			mainQuery.addFieldAsOutput('Rent_PSF_on_Covered_Area__c');
			mainQuery.addFieldAsOutput('Possession_Hand_Over__c');
			mainQuery.addFieldAsOutput('Agreement_Type__c');
			mainQuery.addFieldAsOutput('Adv_Security_months__c');
			mainQuery.addFieldAsOutput('R_S_History__c');
			mainQuery.addFieldAsOutput('Running_Restaurant__c');
			mainQuery.addFieldAsOutput('Water_Tank__c');
			mainQuery.addFieldAsOutput('No_Non_Veg__c');
			mainQuery.addFieldAsOutput('Brand_Has_Bar__c');
			mainQuery.addFieldAsOutput('Ceiling_Ht_1__c');
			mainQuery.addFieldAsOutput('Bar_Not_Allowed__c');
			mainQuery.addFieldAsOutput('Terrace_Open_Area__c');
			mainQuery.addFieldAsOutput('Space_Feel__c');
			mainQuery.addFieldAsOutput('Back_Entrance__c');
			mainQuery.addFieldAsOutput('Footfall__c');
			mainQuery.addFieldAsOutput('Brand_Sales_Figures_Dolllar__c');
			mainQuery.addFieldAsOutput('Space_Last_Lease_Amount__c');
			mainQuery.addFieldAsOutput('Old_Signage__c');
			mainQuery.addFieldAsOutput('Current_Brand_Sales_Figure__c');
			mainQuery.addFieldAsOutput('Tenant__c');
			mainQuery.addFieldAsOutput('Current_Lease_Commencement__c');
			mainQuery.addFieldAsOutput('Tenant_Details__c');
			mainQuery.addFieldAsOutput('Current_Lease_Expiry__c');
			mainQuery.addFieldAsOutput('Tenure__c');
			mainQuery.addFieldAsOutput('Lease_Tenure__c');
			mainQuery.addFieldAsOutput('Comments_Old_New_Tenants__c');
			mainQuery.addFieldAsOutput('Tenure_Remaining__c');
			mainQuery.addFieldAsOutput('CreatedDate');
			mainQuery.addFieldAsOutput('REA_Space_Id__c');
			mainQuery.addFieldAsOutput('CreatedById');
			mainQuery.addFieldAsOutput('Global_Search_Assistant__c');
			mainQuery.addWhere('Id', mainRecord.Id, SkyEditor2.WhereOperator.Eq)
				.limitRecords(1);
			
			
			
			mode = SkyEditor2.LayoutMode.LayoutSalesforce; 
			
			queryMap = new Map<String, SkyEditor2.Query>();
			SkyEditor2.Query query;
			
			
			p_showHeader = true;
			p_sidebar = false;
			addInheritParameter('RecordTypeId', 'RecordType');
			init();
			
			if (record.Id == null) {
				
				saveOldValues();
				
			}

			
			CanvasSave canvasSave = new CanvasSave();
			Component166 = new Canvas(record, 'Component166');
			addListener(SkyEditor2.ActionType.Save, new CanvasSaveRegister(Component166, canvasSave, this));
			addListener(SkyEditor2.ActionType.Save, canvasSave);
			
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


	with sharing  class CanvasSave implements SkyEditor2.ActionListener {
		Attachment[] records;
		public CanvasSave() {
			records = new List<Attachment>();
		}
		public void addAttachment(Attachment attachment) {
			records.add(attachment);
		}
		public void run() {
			Attachment[] saveRecords = records;
			records = new List<Attachment>();
			upsert saveRecords;
		}
	}

	with sharing  class CanvasSaveRegister implements SkyEditor2.ActionListener {
		Canvas canvas;
		CanvasSave save;
		Indus_Space_Full parentHolder;
		public CanvasSaveRegister(Canvas canvas, CanvasSave save, Indus_Space_Full parentHolder) {
			this.canvas = canvas;
			this.save = save;
			this.parentHolder = parentHolder;
		}
		public void run() {
			if (canvas.edited) {
				Attachment att = canvas.getAttachment();
				if (att == null) {
					return;
				}
				if (att.ParentId == null) {
					att.ParentId = parentHolder.record.Id;
				}
				save.addAttachment(att);
			}
		}
	}

	public with sharing  class Canvas {
									 
		private String name;
		public Boolean flg { get; set; }
		public transient String text { get; set; }
		public Boolean edited { get; private set; }
		private Attachment attachment;

		public Canvas(SObject parent, String name) {
			this.name = name;
			edited = false;
			if (parent.Id != null) {
				flg = false;
				List<Attachment> atts = [SELECT Id,name,ParentId,Body,ContentType,SystemModstamp FROM Attachment WHERE ParentId = :parent.Id AND Name = :name];
				if (atts.size() > 0) {
					attachment = atts[0];
					text = '/servlet/servlet.FileDownload?file=' + attachment.Id + '&modif=' + attachment.SystemModstamp.getTime();
				}
			}
			flg = attachment == null;
		}

		public void toggle() {
			if(flg){
				if(text != null && EncodingUtil.base64Decode(text.split(',')[1]).size() > 5 * 1024 * 1024){
					ApexPages.addMessages(new CanvasException(SkyEditor2.Messages.CANVAS_SIZE_OVER));
					return;
				}			  
				flg = false;
				edited = true;
			}else{				   
				flg = true;
			}
		}

		public Attachment getAttachment() {
			if (text == null || text == '') {
				return null;
			}
			Blob body = EncodingUtil.base64Decode(text.split(',')[1]);
			if (attachment != null) {
				attachment.Body = body;
				return attachment;
			} else {
				return new Attachment(
					Name = name,
					Body = body,
					ContentType = 'image/png'
				);
			}
		}

	}	public String getComponent221OptionsJS() {
		return SkyEditor2.JSON.stringify(SkyEditor2.PicklistValueSelector.getEntries(
		Space_Options__c.getSObjectType(),
		SObjectType.Space_Options__c.fields.Shop_Type__c.getSObjectField()
		));
		}
	public String getComponent227OptionsJS() {
		return SkyEditor2.JSON.stringify(SkyEditor2.PicklistValueSelector.getEntries(
		Space_Options__c.getSObjectType(),
		SObjectType.Space_Options__c.fields.Rating__c.getSObjectField()
		));
		}
	public String getComponent171OptionsJS() {
		return SkyEditor2.JSON.stringify(SkyEditor2.PicklistValueSelector.getEntries(
		Space_Options__c.getSObjectType(),
		SObjectType.Space_Options__c.fields.Land_Status__c.getSObjectField()
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