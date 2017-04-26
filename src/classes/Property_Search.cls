global with sharing class Property_Search extends SkyEditor2.SkyEditorPageBaseWithSharing {	
			
		public Property__c record{get;set;}	
			
	
		public Component3 Component3 {get; private set;}	
			
		public SkyEditor2.RecordTypeSelector recordTypeSelector {get; private set;}	
			
	public string Component4_pagename{get;set;}
	public string Component4_recordid{get;set;}
		public SkyEditor2__SkyEditorDummy__c Component11_from{get;set;}	
		public SkyEditor2__SkyEditorDummy__c Component11_to{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component13_from{get;set;}	
		public SkyEditor2__SkyEditorDummy__c Component13_to{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component19_from{get;set;}	
		public SkyEditor2__SkyEditorDummy__c Component19_to{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component23_from{get;set;}	
		public SkyEditor2__SkyEditorDummy__c Component23_to{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component57_from{get;set;}	
		public SkyEditor2__SkyEditorDummy__c Component57_to{get;set;}	
			
		public Property__c Component6_valGroup {get;set;}	
		public Property__c Component6_val {get;set;}	
		public SkyEditor2.TextHolder Component6_op{get;set;}	
			
		public Property__c Component8_val {get;set;}	
		public SkyEditor2.TextHolder Component8_op{get;set;}	
			
		public Property__c Component10_val {get;set;}	
		public SkyEditor2.TextHolder Component10_op{get;set;}	
			
		public Property__c Component16_val {get;set;}	
		public SkyEditor2.TextHolder Component16_op{get;set;}	
			
		public Property__c Component18_val {get;set;}	
		public SkyEditor2.TextHolder Component18_op{get;set;}	
			
		public Property__c Component22_val {get;set;}	
		public SkyEditor2.TextHolder Component22_op{get;set;}	
			
		public Property__c Component26_val {get;set;}	
		public SkyEditor2.TextHolder Component26_op{get;set;}	
			
		public Property__c Component28_val {get;set;}	
		public SkyEditor2__SkyEditorDummy__c Component28_val_dummy {get;set;}	
		public SkyEditor2.TextHolder Component28_op{get;set;}	
		public List<SelectOption> valueOptions_Property_c_Prop_Type_Sale_c_multi {get;set;}
			
		public Property__c Component30_val {get;set;}	
		public SkyEditor2__SkyEditorDummy__c Component30_val_dummy {get;set;}	
		public SkyEditor2.TextHolder Component30_op{get;set;}	
		public List<SelectOption> valueOptions_Property_c_Rating_of_Property_c_multi {get;set;}
			
		public Property__c Component54_val {get;set;}	
		public SkyEditor2.TextHolder Component54_op{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component68_val {get;set;}	
		public SkyEditor2.TextHolder Component68_op{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component70_val {get;set;}	
		public SkyEditor2__SkyEditorDummy__c Component70_val_dummy {get;set;}	
		public SkyEditor2.TextHolder Component70_op{get;set;}	
		public List<SelectOption> valueOptions_Property_c_Land_Status_c {get;set;}
			
		public SkyEditor2__SkyEditorDummy__c Component32_val {get;set;}	
		public SkyEditor2.TextHolder Component32_op{get;set;}	
			
		public Property__c Component60_valGroup {get;set;}	
		public Property__c Component60_val {get;set;}	
		public SkyEditor2.TextHolder Component60_op{get;set;}	
			
		public Property__c Component62_val {get;set;}	
		public SkyEditor2.TextHolder Component62_op{get;set;}	
			
	public String recordTypeRecordsJSON_Property_c {get; private set;}
	public String defaultRecordTypeId_Property_c {get; private set;}
	public String metadataJSON_Property_c {get; private set;}
	{
	setApiVersion(31.0);
	}
		public Property_Search(ApexPages.StandardController controller) {	
			super(controller);	

		SObjectField f;

		f = Property__c.fields.Location_City_new__c;
		f = Property__c.fields.Location_new__c;
		f = Property__c.fields.Location_Sub_new__c;
		f = Property__c.fields.Budget_Suits__c;
		f = Property__c.fields.Area_Suits__c;
		f = Property__c.fields.Channel_Partners__c;
		f = Property__c.fields.Floor_Sale__c;
		f = Property__c.fields.Prop_Type_Sale__c;
		f = Property__c.fields.Rating_of_Property__c;
		f = Property__c.fields.Cheque_Advance__c;
		f = Property__c.fields.Company_Transfer__c;
		f = Property__c.fields.Land_Status__c;
		f = Property__c.fields.Rented__c;
		f = Property__c.fields.Tenant_Type__c;
		f = Property__c.fields.Tenant_Type_Sub__c;
		f = Property__c.fields.Name;
		f = Property__c.fields.Address__c;
		f = Property__c.fields.Sale_Price__c;
		f = Property__c.fields.May_Settle_Sale_Price__c;
		f = Property__c.fields.ROI__c;
		f = Property__c.fields.Rented_Synopsis__c;
		f = Property__c.fields.Monthly_Rent__c;
		f = Property__c.fields.DFS_Date__c;
 f = Property__c.fields.Sale_Price__c;
 f = Property__c.fields.P_S_F_Sale_Price__c;
 f = Property__c.fields.Area_for_Sale__c;
 f = Property__c.fields.DFS_Date__c;
 f = Property__c.fields.ROI__c;
		f = Property__c.fields.For_Sale__c;
		f = Property__c.fields.Maybe_Sale__c;
		f = Property__c.fields.RecordTypeId;

		List<RecordTypeInfo> recordTypes;
			try {	
					
				mainRecord = null;	
				mainSObjectType = Property__c.SObjectType;	
					
					
				mode = SkyEditor2.LayoutMode.TempSearch_01; 
					
				Component11_from = new SkyEditor2__SkyEditorDummy__c();	
				Component11_to = new SkyEditor2__SkyEditorDummy__c();	
					
				Component13_from = new SkyEditor2__SkyEditorDummy__c();	
				Component13_to = new SkyEditor2__SkyEditorDummy__c();	
					
				Component19_from = new SkyEditor2__SkyEditorDummy__c();	
				Component19_to = new SkyEditor2__SkyEditorDummy__c();	
					
				Component23_from = new SkyEditor2__SkyEditorDummy__c();	
				Component23_to = new SkyEditor2__SkyEditorDummy__c();	
					
				Component57_from = new SkyEditor2__SkyEditorDummy__c();	
				Component57_to = new SkyEditor2__SkyEditorDummy__c();	
					
				Component6_valGroup = new Property__c();	
				Component6_val = Component6_valGroup;	
				Component6_op = new SkyEditor2.TextHolder('eq');	
					
				Component8_val = Component6_valGroup;	
				Component8_op = new SkyEditor2.TextHolder('eq');	
					
				Component10_val = Component6_valGroup;	
				Component10_op = new SkyEditor2.TextHolder('eq');	
					
				Component16_val = new Property__c();	
				Component16_op = new SkyEditor2.TextHolder();	
					
				Component18_val = new Property__c();	
				Component18_op = new SkyEditor2.TextHolder();	
					
				Component22_val = new Property__c();	
				Component22_op = new SkyEditor2.TextHolder('eq');	
					
				Component26_val = new Property__c();	
				Component26_op = new SkyEditor2.TextHolder();	
					
				Component28_val = new Property__c();	
				Component28_val_dummy = new SkyEditor2__SkyEditorDummy__c();	
				Component28_op = new SkyEditor2.TextHolder();	
				valueOptions_Property_c_Prop_Type_Sale_c_multi = new List<SelectOption>{
					new SelectOption('', Label.none)
				};
				for (PicklistEntry e : Property__c.Prop_Type_Sale__c.getDescribe().getPicklistValues()) {
					if (e.isActive()) {
						valueOptions_Property_c_Prop_Type_Sale_c_multi.add(new SelectOption(e.getValue(), e.getLabel()));
					}
				}
					
				Component30_val = new Property__c();	
				Component30_val_dummy = new SkyEditor2__SkyEditorDummy__c();	
				Component30_op = new SkyEditor2.TextHolder();	
				valueOptions_Property_c_Rating_of_Property_c_multi = new List<SelectOption>{
					new SelectOption('', Label.none)
				};
				for (PicklistEntry e : Property__c.Rating_of_Property__c.getDescribe().getPicklistValues()) {
					if (e.isActive()) {
						valueOptions_Property_c_Rating_of_Property_c_multi.add(new SelectOption(e.getValue(), e.getLabel()));
					}
				}
					
				Component54_val = new Property__c();	
				Component54_op = new SkyEditor2.TextHolder();	
					
				Component68_val = new SkyEditor2__SkyEditorDummy__c();	
				Component68_op = new SkyEditor2.TextHolder();	
					
				Component70_val = new SkyEditor2__SkyEditorDummy__c();	
				Component70_val_dummy = new SkyEditor2__SkyEditorDummy__c();	
				Component70_op = new SkyEditor2.TextHolder();	
				valueOptions_Property_c_Land_Status_c = new List<SelectOption>{
					new SelectOption('', Label.none)
				};
				for (PicklistEntry e : Property__c.Land_Status__c.getDescribe().getPicklistValues()) {
					if (e.isActive()) {
						valueOptions_Property_c_Land_Status_c.add(new SelectOption(e.getValue(), e.getLabel()));
					}
				}
					
				Component32_val = new SkyEditor2__SkyEditorDummy__c();	
				Component32_op = new SkyEditor2.TextHolder('eq');	
					
				Component60_valGroup = new Property__c();	
				Component60_val = Component60_valGroup;	
				Component60_op = new SkyEditor2.TextHolder('eq');	
					
				Component62_val = Component60_valGroup;	
				Component62_op = new SkyEditor2.TextHolder('eq');	
					
				queryMap.put(	
					'Component3',	
					new SkyEditor2.Query('Property__c')
						.addFieldAsOutput('Name')
						.addFieldAsOutput('Address__c')
						.addFieldAsOutput('Rented_Synopsis__c')
						.addFieldAsOutput('Monthly_Rent__c')
						.addFieldAsOutput('Sale_Price__c')
						.addFieldAsOutput('ROI__c')
						.addFieldAsOutput('May_Settle_Sale_Price__c')
						.addFieldAsOutput('DFS_Date__c')
						.addFieldAsOutput('RecordTypeId')
						.limitRecords(500)	
						.addListener(new SkyEditor2.QueryWhereRegister(Component11_from, 'SkyEditor2__Text__c', 'Sale_Price__c', new SkyEditor2.TextHolder('ge'), false, 0 )) 
						.addListener(new SkyEditor2.QueryWhereRegister(Component11_to, 'SkyEditor2__Text__c', 'Sale_Price__c', new SkyEditor2.TextHolder('le'), false, 0 )) 
						.addListener(new SkyEditor2.QueryWhereRegister(Component13_from, 'SkyEditor2__Text__c', 'P_S_F_Sale_Price__c', new SkyEditor2.TextHolder('ge'), false, 0 )) 
						.addListener(new SkyEditor2.QueryWhereRegister(Component13_to, 'SkyEditor2__Text__c', 'P_S_F_Sale_Price__c', new SkyEditor2.TextHolder('le'), false, 0 )) 
						.addListener(new SkyEditor2.QueryWhereRegister(Component19_from, 'SkyEditor2__Text__c', 'Area_for_Sale__c', new SkyEditor2.TextHolder('ge'), false, 0 )) 
						.addListener(new SkyEditor2.QueryWhereRegister(Component19_to, 'SkyEditor2__Text__c', 'Area_for_Sale__c', new SkyEditor2.TextHolder('le'), false, 0 )) 
						.addListener(new SkyEditor2.QueryWhereRegister(Component23_from, 'SkyEditor2__Date__c', 'DFS_Date__c', new SkyEditor2.TextHolder('ge'), false, 0 )) 
						.addListener(new SkyEditor2.QueryWhereRegister(Component23_to, 'SkyEditor2__Date__c', 'DFS_Date__c', new SkyEditor2.TextHolder('le'), false, 0 )) 
						.addListener(new SkyEditor2.QueryWhereRegister(Component57_from, 'SkyEditor2__Text__c', 'ROI__c', new SkyEditor2.TextHolder('ge'), false, 0 )) 
						.addListener(new SkyEditor2.QueryWhereRegister(Component57_to, 'SkyEditor2__Text__c', 'ROI__c', new SkyEditor2.TextHolder('le'), false, 0 )) 
						.addListener(new SkyEditor2.QueryWhereRegister(Component6_val, 'Location_City_new__c', 'Location_City_new__c', Component6_op, true, 0, true ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component8_val, 'Location_new__c', 'Location_new__c', Component8_op, true, 0, true ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component10_val, 'Location_Sub_new__c', 'Location_Sub_new__c', Component10_op, true, 0, true ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component16_val, 'Budget_Suits__c', 'Budget_Suits__c', Component16_op, true, 0, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component18_val, 'Area_Suits__c', 'Area_Suits__c', Component18_op, true, 0, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component22_val, 'Channel_Partners__c', 'Channel_Partners__c', Component22_op, true, 0, true ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component26_val, 'Floor_Sale__c', 'Floor_Sale__c', Component26_op, true, 0, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component28_val_dummy, 'SkyEditor2__Text__c','Prop_Type_Sale__c', Component28_op, true, 0, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component30_val_dummy, 'SkyEditor2__Text__c','Rating_of_Property__c', Component30_op, true, 0, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component54_val, 'Cheque_Advance__c', 'Cheque_Advance__c', Component54_op, true, 0, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component68_val, 'SkyEditor2__Checkbox__c', 'Company_Transfer__c', Component68_op, true, 0, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component70_val_dummy, 'SkyEditor2__Text__c','Land_Status__c', Component70_op, true, 0, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component32_val, 'SkyEditor2__Checkbox__c', 'Rented__c', Component32_op, true, 0, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component60_val, 'Tenant_Type__c', 'Tenant_Type__c', Component60_op, true, 0, true ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component62_val, 'Tenant_Type_Sub__c', 'Tenant_Type_Sub__c', Component62_op, true, 0, true ))
						.addWhere(' (  ( For_Sale__c = true OR Maybe_Sale__c = true )  AND RecordType.Id = \'01290000001GgCe\')')
.addSort('Sale_Price__c',True,True).addSort('ROI__c',True,True)
				);	
					
					Component3 = new Component3(new List<Property__c>(), new List<Component3Item>(), new List<Property__c>(), null);
				Component3.ignoredOnSave = true;
				listItemHolders.put('Component3', Component3);	
					
					
				recordTypeSelector = new SkyEditor2.RecordTypeSelector(Property__c.SObjectType, true);
					
					
			p_showHeader = false;
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
			
		public List<SelectOption> getOperatorOptions_Property_c_Location_City_new_c() { 
			return getOperatorOptions('Property__c', 'Location_City_new__c');	
		}	
		public List<SelectOption> getOperatorOptions_Property_c_Location_new_c() { 
			return getOperatorOptions('Property__c', 'Location_new__c');	
		}	
		public List<SelectOption> getOperatorOptions_Property_c_Location_Sub_new_c() { 
			return getOperatorOptions('Property__c', 'Location_Sub_new__c');	
		}	
		public List<SelectOption> getOperatorOptions_Property_c_Budget_Suits_c() { 
			return getOperatorOptions('Property__c', 'Budget_Suits__c');	
		}	
		public List<SelectOption> getOperatorOptions_Property_c_Area_Suits_c() { 
			return getOperatorOptions('Property__c', 'Area_Suits__c');	
		}	
		public List<SelectOption> getOperatorOptions_Property_c_Channel_Partners_c() { 
			return getOperatorOptions('Property__c', 'Channel_Partners__c');	
		}	
		public List<SelectOption> getOperatorOptions_Property_c_Floor_Sale_c() { 
			return getOperatorOptions('Property__c', 'Floor_Sale__c');	
		}	
		public List<SelectOption> getOperatorOptions_Property_c_Prop_Type_Sale_c_multi() { 
			return SkyEditor2.WhereOperatorOptions.getOperatorOptionsSelectIn(); 
		}	
		public List<SelectOption> getOperatorOptions_Property_c_Rating_of_Property_c_multi() { 
			return SkyEditor2.WhereOperatorOptions.getOperatorOptionsSelectIn(); 
		}	
		public List<SelectOption> getOperatorOptions_Property_c_Cheque_Advance_c() { 
			return getOperatorOptions('Property__c', 'Cheque_Advance__c');	
		}	
		public List<SelectOption> getOperatorOptions_Property_c_Company_Transfer_c() { 
			return getOperatorOptions('Property__c', 'Company_Transfer__c');	
		}	
		public List<SelectOption> getOperatorOptions_Property_c_Land_Status_c() { 
			return getOperatorOptions('Property__c', 'Land_Status__c');	
		}	
		public List<SelectOption> getOperatorOptions_Property_c_Rented_c() { 
			return getOperatorOptions('Property__c', 'Rented__c');	
		}	
		public List<SelectOption> getOperatorOptions_Property_c_Tenant_Type_c() { 
			return getOperatorOptions('Property__c', 'Tenant_Type__c');	
		}	
		public List<SelectOption> getOperatorOptions_Property_c_Tenant_Type_Sub_c() { 
			return getOperatorOptions('Property__c', 'Tenant_Type_Sub__c');	
		}	
			
			
	global with sharing class Component3Item extends SkyEditor2.ListItem {
		public Property__c record{get; private set;}
		@TestVisible
		Component3Item(Component3 holder, Property__c record, SkyEditor2.RecordTypeSelector recordTypeSelector) {
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
			return new Component3Item(this, (Property__c)data, recordTypeSelector);
		}
		public void doDeleteSelectedItems(){deleteSelectedItems();}
	}

			
	}