global with sharing class SVE_20151128223958 extends SkyEditor2.SkyEditorPageBaseWithSharing {	
			
		public Space_Options__c record{get;set;}	
			
	
		public Component3 Component3 {get; private set;}	
			
		public SkyEditor2.RecordTypeSelector recordTypeSelector {get; private set;}	
			
	public string Component4_pagename{get;set;}
	public string Component4_recordid{get;set;}
		public SkyEditor2__SkyEditorDummy__c Component11_from{get;set;}	
		public SkyEditor2__SkyEditorDummy__c Component11_to{get;set;}	
			
		public Space_Options__c Component6_val {get;set;}	
		public SkyEditor2.TextHolder Component6_op{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component8_val {get;set;}	
		public SkyEditor2.TextHolder Component8_op{get;set;}	
			
		public Space_Options__c Component10_val {get;set;}	
		public SkyEditor2.TextHolder Component10_op{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component14_val {get;set;}	
		public SkyEditor2.TextHolder Component14_op{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component16_val {get;set;}	
		public SkyEditor2.TextHolder Component16_op{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component18_val {get;set;}	
		public SkyEditor2.TextHolder Component18_op{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component20_val {get;set;}	
		public SkyEditor2.TextHolder Component20_op{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component22_val {get;set;}	
		public SkyEditor2.TextHolder Component22_op{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component24_val {get;set;}	
		public SkyEditor2.TextHolder Component24_op{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component26_val {get;set;}	
		public SkyEditor2.TextHolder Component26_op{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component28_val {get;set;}	
		public SkyEditor2.TextHolder Component28_op{get;set;}	
		public List<SelectOption> valueOptions_Space_Options_c_Shop_Type_c {get;set;}
			
		public SkyEditor2__SkyEditorDummy__c Component30_val {get;set;}	
		public SkyEditor2.TextHolder Component30_op{get;set;}	
			
	public String recordTypeRecordsJSON_Space_Options_c {get; private set;}
	public String defaultRecordTypeId_Space_Options_c {get; private set;}
	public String metadataJSON_Space_Options_c {get; private set;}
	{
	setApiVersion(31.0);
	}
		public SVE_20151128223958(ApexPages.StandardController controller) {	
			super(controller);	

		SObjectField f;

		f = Space_Options__c.fields.ZSuits__c;
		f = Space_Options__c.fields.Space_Location_1__c;
		f = Space_Options__c.fields.Floor_Rent__c;
		f = Space_Options__c.fields.Running_Restaurant__c;
		f = Space_Options__c.fields.Terrace_Open_Area__c;
		f = Space_Options__c.fields.Hot_Property__c;
		f = Space_Options__c.fields.Maybe_Available_for_Rent__c;
		f = Space_Options__c.fields.Available_For_Rent__c;
		f = Space_Options__c.fields.Brand_Has_Bar__c;
		f = Space_Options__c.fields.Vacant__c;
		f = Space_Options__c.fields.Shop_Type__c;
		f = Space_Options__c.fields.REA_DFS_DATE__c;
		f = Space_Options__c.fields.Agreement_Type__c;
		f = Space_Options__c.fields.Back_Entrance__c;
		f = Space_Options__c.fields.Client_Remarks_Lease__c;
		f = Space_Options__c.fields.Covered_Area_Sq_Ft__c;
		f = Space_Options__c.fields.Current_Lease_Expiry__c;
		f = Space_Options__c.fields.Lease_Tenure__c;
		f = Space_Options__c.fields.Old_Signage__c;
		f = Space_Options__c.fields.DFS_Date__c;
		f = Space_Options__c.fields.Entry_From__c;
		f = Space_Options__c.fields.Floorwise_Area__c;
		f = Space_Options__c.fields.Frontage_Ft__c;
		f = Space_Options__c.fields.May_Settle_Rent__c;
		f = Space_Options__c.fields.Maybe_Avlble_Note__c;
 f = Space_Options__c.fields.Covered_Area_Sq_Ft__c;

		List<RecordTypeInfo> recordTypes;
			try {	
					
				mainRecord = null;	
				mainSObjectType = Space_Options__c.SObjectType;	
					
					
				mode = SkyEditor2.LayoutMode.TempSearch_01; 
					
				Component11_from = new SkyEditor2__SkyEditorDummy__c();	
				Component11_to = new SkyEditor2__SkyEditorDummy__c();	
					
				Component6_val = new Space_Options__c();	
				Component6_op = new SkyEditor2.TextHolder();	
					
				Component8_val = new SkyEditor2__SkyEditorDummy__c();	
				Component8_op = new SkyEditor2.TextHolder();	
					
				Component10_val = new Space_Options__c();	
				Component10_op = new SkyEditor2.TextHolder();	
					
				Component14_val = new SkyEditor2__SkyEditorDummy__c();	
				Component14_op = new SkyEditor2.TextHolder();	
					
				Component16_val = new SkyEditor2__SkyEditorDummy__c();	
				Component16_op = new SkyEditor2.TextHolder();	
					
				Component18_val = new SkyEditor2__SkyEditorDummy__c();	
				Component18_op = new SkyEditor2.TextHolder();	
					
				Component20_val = new SkyEditor2__SkyEditorDummy__c();	
				Component20_op = new SkyEditor2.TextHolder();	
					
				Component22_val = new SkyEditor2__SkyEditorDummy__c();	
				Component22_op = new SkyEditor2.TextHolder();	
					
				Component24_val = new SkyEditor2__SkyEditorDummy__c();	
				Component24_op = new SkyEditor2.TextHolder();	
					
				Component26_val = new SkyEditor2__SkyEditorDummy__c();	
				Component26_op = new SkyEditor2.TextHolder();	
					
				Component28_val = new SkyEditor2__SkyEditorDummy__c();	
				Component28_op = new SkyEditor2.TextHolder();	
				valueOptions_Space_Options_c_Shop_Type_c = new List<SelectOption>{
					new SelectOption('', Label.none)
				};
				for (PicklistEntry e : Space_Options__c.Shop_Type__c.getDescribe().getPicklistValues()) {
					if (e.isActive()) {
						valueOptions_Space_Options_c_Shop_Type_c.add(new SelectOption(e.getValue(), e.getLabel()));
					}
				}
					
				Component30_val = new SkyEditor2__SkyEditorDummy__c();	
				Component30_op = new SkyEditor2.TextHolder();	
					
				queryMap.put(	
					'Component3',	
					new SkyEditor2.Query('Space_Options__c')
						.addField('Agreement_Type__c')
						.addField('Back_Entrance__c')
						.addField('Client_Remarks_Lease__c')
						.addField('Covered_Area_Sq_Ft__c')
						.addField('Current_Lease_Expiry__c')
						.addField('Lease_Tenure__c')
						.addField('Old_Signage__c')
						.addField('DFS_Date__c')
						.addField('Entry_From__c')
						.addField('Floor_Rent__c')
						.addField('Floorwise_Area__c')
						.addField('Frontage_Ft__c')
						.addField('Hot_Property__c')
						.addField('May_Settle_Rent__c')
						.addField('Maybe_Available_for_Rent__c')
						.addField('Maybe_Avlble_Note__c')
						.addFieldAsOutput('RecordTypeId')
						.limitRecords(500)	
						.addListener(new SkyEditor2.QueryWhereRegister(Component11_from, 'SkyEditor2__Text__c', 'Covered_Area_Sq_Ft__c', new SkyEditor2.TextHolder('ge'), false, 0 )) 
						.addListener(new SkyEditor2.QueryWhereRegister(Component11_to, 'SkyEditor2__Text__c', 'Covered_Area_Sq_Ft__c', new SkyEditor2.TextHolder('le'), false, 0 )) 
						.addListener(new SkyEditor2.QueryWhereRegister(Component6_val, 'ZSuits__c', 'ZSuits__c', Component6_op, true, 0, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component8_val, 'SkyEditor2__Text__c', 'Space_Location_1__c', Component8_op, true, 0, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component10_val, 'Floor_Rent__c', 'Floor_Rent__c', Component10_op, true, 0, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component14_val, 'SkyEditor2__Checkbox__c', 'Running_Restaurant__c', Component14_op, true, 0, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component16_val, 'SkyEditor2__Checkbox__c', 'Terrace_Open_Area__c', Component16_op, true, 0, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component18_val, 'SkyEditor2__Checkbox__c', 'Hot_Property__c', Component18_op, true, 0, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component20_val, 'SkyEditor2__Checkbox__c', 'Maybe_Available_for_Rent__c', Component20_op, true, 0, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component22_val, 'SkyEditor2__Checkbox__c', 'Available_For_Rent__c', Component22_op, true, 0, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component24_val, 'SkyEditor2__Checkbox__c', 'Brand_Has_Bar__c', Component24_op, true, 0, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component26_val, 'SkyEditor2__Checkbox__c', 'Vacant__c', Component26_op, true, 0, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component28_val, 'SkyEditor2__Text__c', 'Shop_Type__c', Component28_op, true, 0, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component30_val, 'SkyEditor2__Textarea__c', 'REA_DFS_DATE__c', Component30_op, true, 0, false ))
				);	
					
					Component3 = new Component3(new List<Space_Options__c>(), new List<Component3Item>(), new List<Space_Options__c>(), null);
				listItemHolders.put('Component3', Component3);	
					
					
				recordTypeSelector = new SkyEditor2.RecordTypeSelector(Space_Options__c.SObjectType, true);
					
					
			p_showHeader = true;
			p_sidebar = false;
			presetSystemParams();
			Component3.extender = this.extender;
			} catch (SkyEditor2.Errors.SObjectNotFoundException e) {	
				SkyEditor2.Messages.addErrorMessage(e.getMessage());
			} catch (SkyEditor2.Errors.FieldNotFoundException e) {	
				SkyEditor2.Messages.addErrorMessage(e.getMessage());
			} catch (SkyEditor2.ExtenderException e) {				 e.setMessagesToPage();
			} catch (Exception e) {	
				System.Debug(LoggingLevel.Error, e);	
				SkyEditor2.Messages.addErrorMessage(SkyEditor2.Messages.UNKNOWN_ERROR);	
			}	
		}	
			
		public List<SelectOption> getOperatorOptions_Space_Options_c_ZSuits_c() { 
			return getOperatorOptions('Space_Options__c', 'ZSuits__c');	
		}	
		public List<SelectOption> getOperatorOptions_Space_Options_c_Space_Location_1_c() { 
			return getOperatorOptions('Space_Options__c', 'Space_Location_1__c');	
		}	
		public List<SelectOption> getOperatorOptions_Space_Options_c_Floor_Rent_c() { 
			return getOperatorOptions('Space_Options__c', 'Floor_Rent__c');	
		}	
		public List<SelectOption> getOperatorOptions_Space_Options_c_Running_Restaurant_c() { 
			return getOperatorOptions('Space_Options__c', 'Running_Restaurant__c');	
		}	
		public List<SelectOption> getOperatorOptions_Space_Options_c_Terrace_Open_Area_c() { 
			return getOperatorOptions('Space_Options__c', 'Terrace_Open_Area__c');	
		}	
		public List<SelectOption> getOperatorOptions_Space_Options_c_Hot_Property_c() { 
			return getOperatorOptions('Space_Options__c', 'Hot_Property__c');	
		}	
		public List<SelectOption> getOperatorOptions_Space_Options_c_Maybe_Available_for_Rent_c() { 
			return getOperatorOptions('Space_Options__c', 'Maybe_Available_for_Rent__c');	
		}	
		public List<SelectOption> getOperatorOptions_Space_Options_c_Available_For_Rent_c() { 
			return getOperatorOptions('Space_Options__c', 'Available_For_Rent__c');	
		}	
		public List<SelectOption> getOperatorOptions_Space_Options_c_Brand_Has_Bar_c() { 
			return getOperatorOptions('Space_Options__c', 'Brand_Has_Bar__c');	
		}	
		public List<SelectOption> getOperatorOptions_Space_Options_c_Vacant_c() { 
			return getOperatorOptions('Space_Options__c', 'Vacant__c');	
		}	
		public List<SelectOption> getOperatorOptions_Space_Options_c_Shop_Type_c() { 
			return getOperatorOptions('Space_Options__c', 'Shop_Type__c');	
		}	
		public List<SelectOption> getOperatorOptions_Space_Options_c_REA_DFS_DATE_c() { 
			return getOperatorOptions('Space_Options__c', 'REA_DFS_DATE__c');	
		}	
			
			
	global with sharing class Component3Item extends SkyEditor2.ListItem {
		public Space_Options__c record{get; private set;}
		@TestVisible
		Component3Item(Component3 holder, Space_Options__c record, SkyEditor2.RecordTypeSelector recordTypeSelector) {
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
	global with sharing  class Component3 extends SkyEditor2.ListItemHolder {
		public List<Component3Item> items{get; private set;}
		@TestVisible
			Component3(List<SObject> records, List<SkyEditor2.ListItem> items, List<SObject> deleteRecords, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(records, items, deleteRecords, recordTypeSelector);
			this.items = (List<Component3Item>)items;
		}
		global override SkyEditor2.ListItem create(SObject data) {
			return new Component3Item(this, (Space_Options__c)data, recordTypeSelector);
		}
		public void doDeleteSelectedItems(){deleteSelectedItems();}
	}

	public Space_Options__c Component3_table_Conversion { get { return new Space_Options__c();}}
	
	public String Component3_table_selectval { get; set; }
	
	
			
	}