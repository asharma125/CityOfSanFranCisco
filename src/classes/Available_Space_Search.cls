global with sharing class Available_Space_Search extends SkyEditor2.SkyEditorPageBaseWithSharing {	
			
		public Space_Options__c record{get;set;}	
			
	
		public Component3 Component3 {get; private set;}	
			
		public SkyEditor2.RecordTypeSelector recordTypeSelector {get; private set;}	
			
	public string Component4_pagename{get;set;}
	public string Component4_recordid{get;set;}
		public SkyEditor2__SkyEditorDummy__c Component8_from{get;set;}	
		public SkyEditor2__SkyEditorDummy__c Component8_to{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component14_from{get;set;}	
		public SkyEditor2__SkyEditorDummy__c Component14_to{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component16_from{get;set;}	
		public SkyEditor2__SkyEditorDummy__c Component16_to{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component90_from{get;set;}	
		public SkyEditor2__SkyEditorDummy__c Component90_to{get;set;}	
			
		public Space_Options__c Component95_val {get;set;}	
		public SkyEditor2.TextHolder Component95_op{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component7_val {get;set;}	
		public SkyEditor2.TextHolder Component7_op{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component19_val {get;set;}	
		public SkyEditor2.TextHolder Component19_op{get;set;}	
			
		public Space_Options__c Component11_val {get;set;}	
		public SkyEditor2.TextHolder Component11_op{get;set;}	
			
		public Space_Options__c Component13_val {get;set;}	
		public SkyEditor2.TextHolder Component13_op{get;set;}	
			
		public Space_Options__c Component21_val {get;set;}	
		public SkyEditor2__SkyEditorDummy__c Component21_val_dummy {get;set;}	
		public SkyEditor2.TextHolder Component21_op{get;set;}	
		public List<SelectOption> valueOptions_Space_Options_c_Entry_From_c_multi {get;set;}
			
		public SkyEditor2__SkyEditorDummy__c Component23_val {get;set;}	
		public SkyEditor2.TextHolder Component23_op{get;set;}	
			
		public Space_Options__c Component85_val {get;set;}	
		public SkyEditor2.TextHolder Component85_op{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component87_val {get;set;}	
		public SkyEditor2.TextHolder Component87_op{get;set;}	
			
		public Space_Options__c Component89_val {get;set;}	
		public SkyEditor2.TextHolder Component89_op{get;set;}	
			
		public Space_Options__c Component93_val {get;set;}	
		public SkyEditor2.TextHolder Component93_op{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component25_val {get;set;}	
		public SkyEditor2.TextHolder Component25_op{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component27_val {get;set;}	
		public SkyEditor2.TextHolder Component27_op{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component29_val {get;set;}	
		public SkyEditor2.TextHolder Component29_op{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component31_val {get;set;}	
		public SkyEditor2.TextHolder Component31_op{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component33_val {get;set;}	
		public SkyEditor2.TextHolder Component33_op{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component35_val {get;set;}	
		public SkyEditor2.TextHolder Component35_op{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component37_val {get;set;}	
		public SkyEditor2.TextHolder Component37_op{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component39_val {get;set;}	
		public SkyEditor2.TextHolder Component39_op{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component41_val {get;set;}	
		public SkyEditor2.TextHolder Component41_op{get;set;}	
			
		public Space_Options__c Component43_val {get;set;}	
		public SkyEditor2.TextHolder Component43_op{get;set;}	
			
		public Space_Options__c Component45_val {get;set;}	
		public SkyEditor2__SkyEditorDummy__c Component45_val_dummy {get;set;}	
		public SkyEditor2.TextHolder Component45_op{get;set;}	
		public List<SelectOption> valueOptions_Space_Options_c_Rating_c_multi {get;set;}
			
		public Space_Options__c Component47_val {get;set;}	
		public SkyEditor2__SkyEditorDummy__c Component47_val_dummy {get;set;}	
		public SkyEditor2.TextHolder Component47_op{get;set;}	
		public List<SelectOption> valueOptions_Space_Options_c_Space_Feel_c_multi {get;set;}
			
		public Space_Options__c Component49_val {get;set;}	
		public SkyEditor2.TextHolder Component49_op{get;set;}	
			
	public String recordTypeRecordsJSON_Space_Options_c {get; private set;}
	public String defaultRecordTypeId_Space_Options_c {get; private set;}
	public String metadataJSON_Space_Options_c {get; private set;}
	{
	setApiVersion(31.0);
	}
		public Available_Space_Search(ApexPages.StandardController controller) {	
			super(controller);	

		SObjectField f;

		f = Space_Options__c.fields.Demo_Auto_Location1__c;
		f = Space_Options__c.fields.Space_Location_1__c;
		f = Space_Options__c.fields.Hot_Property__c;
		f = Space_Options__c.fields.Floor_Rent__c;
		f = Space_Options__c.fields.ZSuits__c;
		f = Space_Options__c.fields.Entry_From__c;
		f = Space_Options__c.fields.Lift_1__c;
		f = Space_Options__c.fields.Channel_Partners__c;
		f = Space_Options__c.fields.Brand_Has_Bar__c;
		f = Space_Options__c.fields.Bar_Not_Allowed__c;
		f = Space_Options__c.fields.Running_Restaurant__c;
		f = Space_Options__c.fields.Back_Entrance__c;
		f = Space_Options__c.fields.Terrace_Open_Area__c;
		f = Space_Options__c.fields.Genset_Space__c;
		f = Space_Options__c.fields.No_Non_Veg__c;
		f = Space_Options__c.fields.Parking__c;
		f = Space_Options__c.fields.Rating__c;
		f = Space_Options__c.fields.Space_Feel__c;
		f = Space_Options__c.fields.Name;
		f = Space_Options__c.fields.Property_No__c;
		f = Space_Options__c.fields.Covered_Area_Sq_Ft__c;
		f = Space_Options__c.fields.Floorwise_Area__c;
		f = Space_Options__c.fields.Frontage_Ft__c;
		f = Space_Options__c.fields.Rent_Month__c;
		f = Space_Options__c.fields.Carpet_Area__c;
		f = Space_Options__c.fields.Lift__c;
		f = Space_Options__c.fields.Ceiling_Ht_1__c;
		f = Space_Options__c.fields.Space_Notes_Lease__c;
		f = Space_Options__c.fields.Client_Remarks_Lease__c;
		f = Space_Options__c.fields.Stair_Evaluation_Remarks__c;
 f = Space_Options__c.fields.Covered_Area_Sq_Ft__c;
 f = Space_Options__c.fields.Rent_Month__c;
 f = Space_Options__c.fields.Carpet_Area_S_Ft__c;
		f = Space_Options__c.fields.Available_For_Rent__c;

		List<RecordTypeInfo> recordTypes;
			try {	
					
				mainRecord = null;	
				mainSObjectType = Space_Options__c.SObjectType;	
					
					
				mode = SkyEditor2.LayoutMode.TempSearch_01; 
					
				Component8_from = new SkyEditor2__SkyEditorDummy__c();	
				Component8_to = new SkyEditor2__SkyEditorDummy__c();	
					
				Component14_from = new SkyEditor2__SkyEditorDummy__c();	
				Component14_to = new SkyEditor2__SkyEditorDummy__c();	
					
				Component16_from = new SkyEditor2__SkyEditorDummy__c();	
				Component16_to = new SkyEditor2__SkyEditorDummy__c();	
					
				Component90_from = new SkyEditor2__SkyEditorDummy__c();	
				Component90_to = new SkyEditor2__SkyEditorDummy__c();	
					
				Space_Options__c lookupObjComponent79 = new Space_Options__c();	
				Component95_val = lookupObjComponent79;	
				Component95_op = new SkyEditor2.TextHolder('eq');	
					
				Component7_val = new SkyEditor2__SkyEditorDummy__c();	
				Component7_op = new SkyEditor2.TextHolder();	
					
				Component19_val = new SkyEditor2__SkyEditorDummy__c();	
				Component19_op = new SkyEditor2.TextHolder();	
					
				Component11_val = new Space_Options__c();	
				Component11_op = new SkyEditor2.TextHolder();	
					
				Component13_val = new Space_Options__c();	
				Component13_op = new SkyEditor2.TextHolder();	
					
				Component21_val = new Space_Options__c();	
				Component21_val_dummy = new SkyEditor2__SkyEditorDummy__c();	
				Component21_op = new SkyEditor2.TextHolder();	
				valueOptions_Space_Options_c_Entry_From_c_multi = new List<SelectOption>{
					new SelectOption('', Label.none)
				};
				for (PicklistEntry e : Space_Options__c.Entry_From__c.getDescribe().getPicklistValues()) {
					if (e.isActive()) {
						valueOptions_Space_Options_c_Entry_From_c_multi.add(new SelectOption(e.getValue(), e.getLabel()));
					}
				}
					
				Component23_val = new SkyEditor2__SkyEditorDummy__c();	
				Component23_op = new SkyEditor2.TextHolder();	
					
				Component85_val = new Space_Options__c();	
				Component85_op = new SkyEditor2.TextHolder();	
					
				Component87_val = new SkyEditor2__SkyEditorDummy__c();	
				Component87_op = new SkyEditor2.TextHolder();	
					
				Component89_val = new Space_Options__c();	
				Component89_op = new SkyEditor2.TextHolder();	
					
				Component93_val = new Space_Options__c();	
				Component93_op = new SkyEditor2.TextHolder();	
					
				Component25_val = new SkyEditor2__SkyEditorDummy__c();	
				Component25_op = new SkyEditor2.TextHolder();	
					
				Component27_val = new SkyEditor2__SkyEditorDummy__c();	
				Component27_op = new SkyEditor2.TextHolder();	
					
				Component29_val = new SkyEditor2__SkyEditorDummy__c();	
				Component29_op = new SkyEditor2.TextHolder();	
					
				Component31_val = new SkyEditor2__SkyEditorDummy__c();	
				Component31_op = new SkyEditor2.TextHolder();	
					
				Component33_val = new SkyEditor2__SkyEditorDummy__c();	
				Component33_op = new SkyEditor2.TextHolder();	
					
				Component35_val = new SkyEditor2__SkyEditorDummy__c();	
				Component35_op = new SkyEditor2.TextHolder();	
					
				Component37_val = new SkyEditor2__SkyEditorDummy__c();	
				Component37_op = new SkyEditor2.TextHolder();	
					
				Component39_val = new SkyEditor2__SkyEditorDummy__c();	
				Component39_op = new SkyEditor2.TextHolder();	
					
				Component41_val = new SkyEditor2__SkyEditorDummy__c();	
				Component41_op = new SkyEditor2.TextHolder();	
					
				Component43_val = new Space_Options__c();	
				Component43_op = new SkyEditor2.TextHolder();	
					
				Component45_val = new Space_Options__c();	
				Component45_val_dummy = new SkyEditor2__SkyEditorDummy__c();	
				Component45_op = new SkyEditor2.TextHolder();	
				valueOptions_Space_Options_c_Rating_c_multi = new List<SelectOption>{
					new SelectOption('', Label.none)
				};
				for (PicklistEntry e : Space_Options__c.Rating__c.getDescribe().getPicklistValues()) {
					if (e.isActive()) {
						valueOptions_Space_Options_c_Rating_c_multi.add(new SelectOption(e.getValue(), e.getLabel()));
					}
				}
					
				Component47_val = new Space_Options__c();	
				Component47_val_dummy = new SkyEditor2__SkyEditorDummy__c();	
				Component47_op = new SkyEditor2.TextHolder();	
				valueOptions_Space_Options_c_Space_Feel_c_multi = new List<SelectOption>{
					new SelectOption('', Label.none)
				};
				for (PicklistEntry e : Space_Options__c.Space_Feel__c.getDescribe().getPicklistValues()) {
					if (e.isActive()) {
						valueOptions_Space_Options_c_Space_Feel_c_multi.add(new SelectOption(e.getValue(), e.getLabel()));
					}
				}
					
				Component49_val = new Space_Options__c();	
				Component49_op = new SkyEditor2.TextHolder();	
					
				queryMap.put(	
					'Component3',	
					new SkyEditor2.Query('Space_Options__c')
						.addFieldAsOutput('Name')
						.addFieldAsOutput('Property_No__c')
						.addFieldAsOutput('Covered_Area_Sq_Ft__c')
						.addFieldAsOutput('Floorwise_Area__c')
						.addFieldAsOutput('Frontage_Ft__c')
						.addFieldAsOutput('Rent_Month__c')
						.addFieldAsOutput('Entry_From__c')
						.addFieldAsOutput('Carpet_Area__c')
						.addFieldAsOutput('Lift__c')
						.addFieldAsOutput('Ceiling_Ht_1__c')
						.addFieldAsOutput('Space_Notes_Lease__c')
						.addFieldAsOutput('Client_Remarks_Lease__c')
						.addFieldAsOutput('Stair_Evaluation_Remarks__c')
						.addFieldAsOutput('RecordTypeId')
						.limitRecords(500)	
						.addListener(new SkyEditor2.QueryWhereRegister(Component8_from, 'SkyEditor2__Text__c', 'Covered_Area_Sq_Ft__c', new SkyEditor2.TextHolder('ge'), false, 0 )) 
						.addListener(new SkyEditor2.QueryWhereRegister(Component8_to, 'SkyEditor2__Text__c', 'Covered_Area_Sq_Ft__c', new SkyEditor2.TextHolder('le'), false, 0 )) 
						.addListener(new SkyEditor2.QueryWhereRegister(Component14_from, 'SkyEditor2__Text__c', 'Rent_Month__c', new SkyEditor2.TextHolder('ge'), false, 0 )) 
						.addListener(new SkyEditor2.QueryWhereRegister(Component14_to, 'SkyEditor2__Text__c', 'Rent_Month__c', new SkyEditor2.TextHolder('le'), false, 0 )) 
						.addListener(new SkyEditor2.QueryWhereRegister(Component16_from, 'SkyEditor2__Text__c', 'Carpet_Area_S_Ft__c', new SkyEditor2.TextHolder('ge'), false, 0 )) 
						.addListener(new SkyEditor2.QueryWhereRegister(Component16_to, 'SkyEditor2__Text__c', 'Carpet_Area_S_Ft__c', new SkyEditor2.TextHolder('le'), false, 0 )) 
						.addListener(new SkyEditor2.QueryWhereRegister(Component90_from, 'SkyEditor2__Text__c', 'Covered_Area_Sq_Ft__c', new SkyEditor2.TextHolder('ge'), false, 1 )) 
						.addListener(new SkyEditor2.QueryWhereRegister(Component90_to, 'SkyEditor2__Text__c', 'Covered_Area_Sq_Ft__c', new SkyEditor2.TextHolder('le'), false, 1 )) 
						.addListener(new SkyEditor2.QueryWhereRegister(Component95_val, 'Demo_Auto_Location1__c', 'Demo_Auto_Location1__c', Component95_op, true, 0, true ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component7_val, 'SkyEditor2__Text__c', 'Space_Location_1__c', Component7_op, true, 0, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component19_val, 'SkyEditor2__Checkbox__c', 'Hot_Property__c', Component19_op, true, 0, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component11_val, 'Floor_Rent__c', 'Floor_Rent__c', Component11_op, true, 0, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component13_val, 'ZSuits__c', 'ZSuits__c', Component13_op, true, 0, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component21_val_dummy, 'SkyEditor2__Text__c','Entry_From__c', Component21_op, true, 0, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component23_val, 'SkyEditor2__Checkbox__c', 'Lift_1__c', Component23_op, true, 0, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component85_val, 'Channel_Partners__c', 'Channel_Partners__c', Component85_op, true, 0, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component87_val, 'SkyEditor2__Text__c', 'Space_Location_1__c', Component87_op, true, 1, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component89_val, 'Floor_Rent__c', 'Floor_Rent__c', Component89_op, true, 1, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component93_val, 'ZSuits__c', 'ZSuits__c', Component93_op, true, 1, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component25_val, 'SkyEditor2__Checkbox__c', 'Brand_Has_Bar__c', Component25_op, true, 1, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component27_val, 'SkyEditor2__Checkbox__c', 'Bar_Not_Allowed__c', Component27_op, true, 1, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component29_val, 'SkyEditor2__Checkbox__c', 'Running_Restaurant__c', Component29_op, true, 1, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component31_val, 'SkyEditor2__Checkbox__c', 'Back_Entrance__c', Component31_op, true, 1, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component33_val, 'SkyEditor2__Checkbox__c', 'Lift_1__c', Component33_op, true, 1, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component35_val, 'SkyEditor2__Checkbox__c', 'Terrace_Open_Area__c', Component35_op, true, 1, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component37_val, 'SkyEditor2__Checkbox__c', 'Genset_Space__c', Component37_op, true, 1, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component39_val, 'SkyEditor2__Checkbox__c', 'Hot_Property__c', Component39_op, true, 1, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component41_val, 'SkyEditor2__Checkbox__c', 'No_Non_Veg__c', Component41_op, true, 1, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component43_val, 'Parking__c', 'Parking__c', Component43_op, true, 1, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component45_val_dummy, 'SkyEditor2__Text__c','Rating__c', Component45_op, true, 1, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component47_val_dummy, 'SkyEditor2__Text__c','Space_Feel__c', Component47_op, true, 1, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component49_val, 'Channel_Partners__c', 'Channel_Partners__c', Component49_op, true, 1, false ))
						.addWhere(' ( Available_For_Rent__c = true)')
				);	
					
					Component3 = new Component3(new List<Space_Options__c>(), new List<Component3Item>(), new List<Space_Options__c>(), null);
				Component3.ignoredOnSave = true;
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
			
		public List<SelectOption> getOperatorOptions_Space_Options_c_Demo_Auto_Location1_c() { 
			return getOperatorOptions('Space_Options__c', 'Demo_Auto_Location1__c');	
		}	
		public List<SelectOption> getOperatorOptions_Space_Options_c_Space_Location_1_c() { 
			return getOperatorOptions('Space_Options__c', 'Space_Location_1__c');	
		}	
		public List<SelectOption> getOperatorOptions_Space_Options_c_Hot_Property_c() { 
			return getOperatorOptions('Space_Options__c', 'Hot_Property__c');	
		}	
		public List<SelectOption> getOperatorOptions_Space_Options_c_Floor_Rent_c() { 
			return getOperatorOptions('Space_Options__c', 'Floor_Rent__c');	
		}	
		public List<SelectOption> getOperatorOptions_Space_Options_c_ZSuits_c() { 
			return getOperatorOptions('Space_Options__c', 'ZSuits__c');	
		}	
		public List<SelectOption> getOperatorOptions_Space_Options_c_Entry_From_c_multi() { 
			return SkyEditor2.WhereOperatorOptions.getOperatorOptionsSelectIn(); 
		}	
		public List<SelectOption> getOperatorOptions_Space_Options_c_Lift_1_c() { 
			return getOperatorOptions('Space_Options__c', 'Lift_1__c');	
		}	
		public List<SelectOption> getOperatorOptions_Space_Options_c_Channel_Partners_c() { 
			return getOperatorOptions('Space_Options__c', 'Channel_Partners__c');	
		}	
		public List<SelectOption> getOperatorOptions_Space_Options_c_Brand_Has_Bar_c() { 
			return getOperatorOptions('Space_Options__c', 'Brand_Has_Bar__c');	
		}	
		public List<SelectOption> getOperatorOptions_Space_Options_c_Bar_Not_Allowed_c() { 
			return getOperatorOptions('Space_Options__c', 'Bar_Not_Allowed__c');	
		}	
		public List<SelectOption> getOperatorOptions_Space_Options_c_Running_Restaurant_c() { 
			return getOperatorOptions('Space_Options__c', 'Running_Restaurant__c');	
		}	
		public List<SelectOption> getOperatorOptions_Space_Options_c_Back_Entrance_c() { 
			return getOperatorOptions('Space_Options__c', 'Back_Entrance__c');	
		}	
		public List<SelectOption> getOperatorOptions_Space_Options_c_Terrace_Open_Area_c() { 
			return getOperatorOptions('Space_Options__c', 'Terrace_Open_Area__c');	
		}	
		public List<SelectOption> getOperatorOptions_Space_Options_c_Genset_Space_c() { 
			return getOperatorOptions('Space_Options__c', 'Genset_Space__c');	
		}	
		public List<SelectOption> getOperatorOptions_Space_Options_c_No_Non_Veg_c() { 
			return getOperatorOptions('Space_Options__c', 'No_Non_Veg__c');	
		}	
		public List<SelectOption> getOperatorOptions_Space_Options_c_Parking_c() { 
			return getOperatorOptions('Space_Options__c', 'Parking__c');	
		}	
		public List<SelectOption> getOperatorOptions_Space_Options_c_Rating_c_multi() { 
			return SkyEditor2.WhereOperatorOptions.getOperatorOptionsSelectIn(); 
		}	
		public List<SelectOption> getOperatorOptions_Space_Options_c_Space_Feel_c_multi() { 
			return SkyEditor2.WhereOperatorOptions.getOperatorOptionsSelectIn(); 
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

			
	}