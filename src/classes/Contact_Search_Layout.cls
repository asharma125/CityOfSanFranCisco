global without sharing class Contact_Search_Layout extends SkyEditor2.SkyEditorPageBaseWithoutSharing {	
			
		public Contact record{get;set;}	
			
	
		public Component3 Component3 {get; private set;}	
			
		public SkyEditor2.RecordTypeSelector recordTypeSelector {get; private set;}	
			
	public string Component4_pagename{get;set;}
	public string Component4_recordid{get;set;}
		public SkyEditor2__SkyEditorDummy__c Component6_val {get;set;}	
		public SkyEditor2.TextHolder Component6_op{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component8_val {get;set;}	
		public SkyEditor2.TextHolder Component8_op{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component10_val {get;set;}	
		public SkyEditor2.TextHolder Component10_op{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component36_val {get;set;}	
		public SkyEditor2.TextHolder Component36_op{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component38_val {get;set;}	
		public SkyEditor2__SkyEditorDummy__c Component38_val_dummy {get;set;}	
		public SkyEditor2.TextHolder Component38_op{get;set;}	
		public List<SelectOption> valueOptions_Contact_Vendor_Type_c_multi {get;set;}
			
		public SkyEditor2__SkyEditorDummy__c Component40_val {get;set;}	
		public SkyEditor2.TextHolder Component40_op{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component42_val {get;set;}	
		public SkyEditor2.TextHolder Component42_op{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component44_val {get;set;}	
		public SkyEditor2.TextHolder Component44_op{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component46_val {get;set;}	
		public SkyEditor2.TextHolder Component46_op{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component92_val {get;set;}	
		public SkyEditor2.TextHolder Component92_op{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component106_val {get;set;}	
		public SkyEditor2__SkyEditorDummy__c Component106_val_dummy {get;set;}	
		public SkyEditor2.TextHolder Component106_op{get;set;}	
		public List<SelectOption> valueOptions_Contact_Rented_Dealer_Category_c_multi {get;set;}
			
		public SkyEditor2__SkyEditorDummy__c Component66_val {get;set;}	
		public SkyEditor2.TextHolder Component66_op{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component84_val {get;set;}	
		public SkyEditor2.TextHolder Component84_op{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component86_val {get;set;}	
		public SkyEditor2.TextHolder Component86_op{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component90_val {get;set;}	
		public SkyEditor2.TextHolder Component90_op{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component135_val {get;set;}	
		public SkyEditor2__SkyEditorDummy__c Component135_val_dummy {get;set;}	
		public SkyEditor2.TextHolder Component135_op{get;set;}	
		public List<SelectOption> valueOptions_Contact_Retail_Specialist_Type_c {get;set;}
			
		public SkyEditor2__SkyEditorDummy__c Component88_val {get;set;}	
		public SkyEditor2.TextHolder Component88_op{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component60_val {get;set;}	
		public SkyEditor2.TextHolder Component60_op{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component64_val {get;set;}	
		public SkyEditor2.TextHolder Component64_op{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component114_val {get;set;}	
		public SkyEditor2.TextHolder Component114_op{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component122_val {get;set;}	
		public SkyEditor2.TextHolder Component122_op{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component116_val {get;set;}	
		public SkyEditor2.TextHolder Component116_op{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component124_val {get;set;}	
		public SkyEditor2__SkyEditorDummy__c Component124_val_dummy {get;set;}	
		public SkyEditor2.TextHolder Component124_op{get;set;}	
		public List<SelectOption> valueOptions_Contact_INV_Desperate_c {get;set;}
			
		public SkyEditor2__SkyEditorDummy__c Component128_val {get;set;}	
		public SkyEditor2__SkyEditorDummy__c Component128_val_dummy {get;set;}	
		public SkyEditor2.TextHolder Component128_op{get;set;}	
		public List<SelectOption> valueOptions_Contact_Desperate_c {get;set;}
			
		public SkyEditor2__SkyEditorDummy__c Component120_val {get;set;}	
		public SkyEditor2.TextHolder Component120_op{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component126_val {get;set;}	
		public SkyEditor2__SkyEditorDummy__c Component126_val_dummy {get;set;}	
		public SkyEditor2.TextHolder Component126_op{get;set;}	
		public List<SelectOption> valueOptions_Contact_INV_Prospect_c {get;set;}
			
		public SkyEditor2__SkyEditorDummy__c Component130_val {get;set;}	
		public SkyEditor2__SkyEditorDummy__c Component130_val_dummy {get;set;}	
		public SkyEditor2.TextHolder Component130_op{get;set;}	
		public List<SelectOption> valueOptions_Contact_Prospect_c {get;set;}
			
		public SkyEditor2__SkyEditorDummy__c Component118_val {get;set;}	
		public SkyEditor2.TextHolder Component118_op{get;set;}	
			
	public String recordTypeRecordsJSON_Contact {get; private set;}
	public String defaultRecordTypeId_Contact {get; private set;}
	public String metadataJSON_Contact {get; private set;}
	{
	setApiVersion(31.0);
	}
		public Contact_Search_Layout(ApexPages.StandardController controller) {	
			super(controller);	

		SObjectField f;

		f = Contact.fields.FirstName;
		f = Contact.fields.LastName;
		f = Contact.fields.MobilePhone;
		f = Contact.fields.Vendor__c;
		f = Contact.fields.Vendor_Type__c;
		f = Contact.fields.Vendor_Power__c;
		f = Contact.fields.Name;
		f = Contact.fields.Agent__c;
		f = Contact.fields.Retail_Specialist_Dealer__c;
		f = Contact.fields.Rented_Dealer_Category__c;
		f = Contact.fields.Deals_in_Farm__c;
		f = Contact.fields.Retail_Effectiveness__c;
		f = Contact.fields.Rented_Effectiveness__c;
		f = Contact.fields.Farms_Effectiveness__c;
		f = Contact.fields.Retail_Specialist_Type__c;
		f = Contact.fields.Commercial_Effectiveness__c;
		f = Contact.fields.Commercial_Leasing__c;
		f = Contact.fields.Deals_in_Industrial__c;
		f = Contact.fields.Investor__c;
		f = Contact.fields.Tenant__c;
		f = Contact.fields.Rented_Investor__c;
		f = Contact.fields.INV_Desperate__c;
		f = Contact.fields.Desperate__c;
		f = Contact.fields.Restaurant_Consultant__c;
		f = Contact.fields.INV_Prospect__c;
		f = Contact.fields.Prospect__c;
		f = Contact.fields.Rented_Financiar__c;
		f = Contact.fields.AccountId;
		f = Contact.fields.Mobile_2__c;
		f = Contact.fields.Email;

		List<RecordTypeInfo> recordTypes;
			try {	
					
				mainRecord = null;	
				mainSObjectType = Contact.SObjectType;	
					
					
				mode = SkyEditor2.LayoutMode.TempSearch_01; 
					
				Component114_val = new SkyEditor2__SkyEditorDummy__c();	
				Component114_op = new SkyEditor2.TextHolder();	
					
				Component122_val = new SkyEditor2__SkyEditorDummy__c();	
				Component122_op = new SkyEditor2.TextHolder();	
					
				Component116_val = new SkyEditor2__SkyEditorDummy__c();	
				Component116_op = new SkyEditor2.TextHolder();	
					
				Component124_val = new SkyEditor2__SkyEditorDummy__c();	
				Component124_val_dummy = new SkyEditor2__SkyEditorDummy__c();	
				Component124_op = new SkyEditor2.TextHolder();	
				valueOptions_Contact_INV_Desperate_c = new List<SelectOption>{
					new SelectOption('', Label.none)
				};
				for (PicklistEntry e : Contact.INV_Desperate__c.getDescribe().getPicklistValues()) {
					if (e.isActive()) {
						valueOptions_Contact_INV_Desperate_c.add(new SelectOption(e.getValue(), e.getLabel()));
					}
				}
					
				Component128_val = new SkyEditor2__SkyEditorDummy__c();	
				Component128_val_dummy = new SkyEditor2__SkyEditorDummy__c();	
				Component128_op = new SkyEditor2.TextHolder();	
				valueOptions_Contact_Desperate_c = new List<SelectOption>{
					new SelectOption('', Label.none)
				};
				for (PicklistEntry e : Contact.Desperate__c.getDescribe().getPicklistValues()) {
					if (e.isActive()) {
						valueOptions_Contact_Desperate_c.add(new SelectOption(e.getValue(), e.getLabel()));
					}
				}
					
				Component120_val = new SkyEditor2__SkyEditorDummy__c();	
				Component120_op = new SkyEditor2.TextHolder();	
					
				Component126_val = new SkyEditor2__SkyEditorDummy__c();	
				Component126_val_dummy = new SkyEditor2__SkyEditorDummy__c();	
				Component126_op = new SkyEditor2.TextHolder();	
				valueOptions_Contact_INV_Prospect_c = new List<SelectOption>{
					new SelectOption('', Label.none)
				};
				for (PicklistEntry e : Contact.INV_Prospect__c.getDescribe().getPicklistValues()) {
					if (e.isActive()) {
						valueOptions_Contact_INV_Prospect_c.add(new SelectOption(e.getValue(), e.getLabel()));
					}
				}
					
				Component130_val = new SkyEditor2__SkyEditorDummy__c();	
				Component130_val_dummy = new SkyEditor2__SkyEditorDummy__c();	
				Component130_op = new SkyEditor2.TextHolder();	
				valueOptions_Contact_Prospect_c = new List<SelectOption>{
					new SelectOption('', Label.none)
				};
				for (PicklistEntry e : Contact.Prospect__c.getDescribe().getPicklistValues()) {
					if (e.isActive()) {
						valueOptions_Contact_Prospect_c.add(new SelectOption(e.getValue(), e.getLabel()));
					}
				}
					
				Component118_val = new SkyEditor2__SkyEditorDummy__c();	
				Component118_op = new SkyEditor2.TextHolder();	
					
				Component6_val = new SkyEditor2__SkyEditorDummy__c();	
				Component6_op = new SkyEditor2.TextHolder();	
					
				Component8_val = new SkyEditor2__SkyEditorDummy__c();	
				Component8_op = new SkyEditor2.TextHolder();	
					
				Component10_val = new SkyEditor2__SkyEditorDummy__c();	
				Component10_op = new SkyEditor2.TextHolder();	
					
				Component36_val = new SkyEditor2__SkyEditorDummy__c();	
				Component36_op = new SkyEditor2.TextHolder();	
					
				Component38_val = new SkyEditor2__SkyEditorDummy__c();	
				Component38_val_dummy = new SkyEditor2__SkyEditorDummy__c();	
				Component38_op = new SkyEditor2.TextHolder();	
				valueOptions_Contact_Vendor_Type_c_multi = new List<SelectOption>{
					new SelectOption('', Label.none)
				};
				for (PicklistEntry e : Contact.Vendor_Type__c.getDescribe().getPicklistValues()) {
					if (e.isActive()) {
						valueOptions_Contact_Vendor_Type_c_multi.add(new SelectOption(e.getValue(), e.getLabel()));
					}
				}
					
				Component40_val = new SkyEditor2__SkyEditorDummy__c();	
				Component40_op = new SkyEditor2.TextHolder();	
					
				Component42_val = new SkyEditor2__SkyEditorDummy__c();	
				Component42_op = new SkyEditor2.TextHolder();	
					
				Component44_val = new SkyEditor2__SkyEditorDummy__c();	
				Component44_op = new SkyEditor2.TextHolder();	
					
				Component46_val = new SkyEditor2__SkyEditorDummy__c();	
				Component46_op = new SkyEditor2.TextHolder();	
					
				Component92_val = new SkyEditor2__SkyEditorDummy__c();	
				Component92_op = new SkyEditor2.TextHolder();	
					
				Component106_val = new SkyEditor2__SkyEditorDummy__c();	
				Component106_val_dummy = new SkyEditor2__SkyEditorDummy__c();	
				Component106_op = new SkyEditor2.TextHolder();	
				valueOptions_Contact_Rented_Dealer_Category_c_multi = new List<SelectOption>{
					new SelectOption('', Label.none)
				};
				for (PicklistEntry e : Contact.Rented_Dealer_Category__c.getDescribe().getPicklistValues()) {
					if (e.isActive()) {
						valueOptions_Contact_Rented_Dealer_Category_c_multi.add(new SelectOption(e.getValue(), e.getLabel()));
					}
				}
					
				Component66_val = new SkyEditor2__SkyEditorDummy__c();	
				Component66_op = new SkyEditor2.TextHolder();	
					
				Component84_val = new SkyEditor2__SkyEditorDummy__c();	
				Component84_op = new SkyEditor2.TextHolder();	
					
				Component86_val = new SkyEditor2__SkyEditorDummy__c();	
				Component86_op = new SkyEditor2.TextHolder();	
					
				Component90_val = new SkyEditor2__SkyEditorDummy__c();	
				Component90_op = new SkyEditor2.TextHolder();	
					
				Component135_val = new SkyEditor2__SkyEditorDummy__c();	
				Component135_val_dummy = new SkyEditor2__SkyEditorDummy__c();	
				Component135_op = new SkyEditor2.TextHolder();	
				valueOptions_Contact_Retail_Specialist_Type_c = new List<SelectOption>{
					new SelectOption('', Label.none)
				};
				for (PicklistEntry e : Contact.Retail_Specialist_Type__c.getDescribe().getPicklistValues()) {
					if (e.isActive()) {
						valueOptions_Contact_Retail_Specialist_Type_c.add(new SelectOption(e.getValue(), e.getLabel()));
					}
				}
					
				Component88_val = new SkyEditor2__SkyEditorDummy__c();	
				Component88_op = new SkyEditor2.TextHolder();	
					
				Component60_val = new SkyEditor2__SkyEditorDummy__c();	
				Component60_op = new SkyEditor2.TextHolder();	
					
				Component64_val = new SkyEditor2__SkyEditorDummy__c();	
				Component64_op = new SkyEditor2.TextHolder();	
					
				queryMap.put(	
					'Component3',	
					new SkyEditor2.Query('Contact')
						.addFieldAsOutput('Name')
						.addFieldAsOutput('AccountId')
						.addFieldAsOutput('MobilePhone')
						.addFieldAsOutput('Mobile_2__c')
						.addFieldAsOutput('Email')
						.addFieldAsOutput('Retail_Specialist_Type__c')
						.addFieldAsOutput('Retail_Effectiveness__c')
						.addFieldAsOutput('Vendor_Type__c')
						.addFieldAsOutput('Vendor_Power__c')
						.limitRecords(500)	
						.addListener(new SkyEditor2.QueryWhereRegister(Component6_val, 'SkyEditor2__Text__c', 'FirstName', Component6_op, true, 0, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component8_val, 'SkyEditor2__Text__c', 'LastName', Component8_op, true, 0, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component10_val, 'SkyEditor2__Phone__c', 'MobilePhone', Component10_op, true, 0, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component36_val, 'SkyEditor2__Checkbox__c', 'Vendor__c', Component36_op, true, 0, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component38_val_dummy, 'SkyEditor2__Text__c','Vendor_Type__c', Component38_op, true, 0, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component40_val, 'SkyEditor2__Text__c', 'Vendor_Power__c', Component40_op, true, 0, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component42_val, 'SkyEditor2__Text__c', 'Name', Component42_op, true, 1, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component44_val, 'SkyEditor2__Phone__c', 'MobilePhone', Component44_op, true, 1, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component46_val, 'SkyEditor2__Checkbox__c', 'Agent__c', Component46_op, true, 1, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component92_val, 'SkyEditor2__Checkbox__c', 'Retail_Specialist_Dealer__c', Component92_op, true, 1, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component106_val_dummy, 'SkyEditor2__Text__c','Rented_Dealer_Category__c', Component106_op, true, 1, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component66_val, 'SkyEditor2__Checkbox__c', 'Deals_in_Farm__c', Component66_op, true, 1, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component84_val, 'SkyEditor2__Text__c', 'Retail_Effectiveness__c', Component84_op, true, 1, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component86_val, 'SkyEditor2__Text__c', 'Rented_Effectiveness__c', Component86_op, true, 1, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component90_val, 'SkyEditor2__Text__c', 'Farms_Effectiveness__c', Component90_op, true, 1, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component135_val_dummy, 'SkyEditor2__Text__c','Retail_Specialist_Type__c', Component135_op, true, 1, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component88_val, 'SkyEditor2__Text__c', 'Commercial_Effectiveness__c', Component88_op, true, 1, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component60_val, 'SkyEditor2__Checkbox__c', 'Commercial_Leasing__c', Component60_op, true, 1, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component64_val, 'SkyEditor2__Checkbox__c', 'Deals_in_Industrial__c', Component64_op, true, 1, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component114_val, 'SkyEditor2__Checkbox__c', 'Investor__c', Component114_op, true, 2, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component122_val, 'SkyEditor2__Checkbox__c', 'Tenant__c', Component122_op, true, 2, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component116_val, 'SkyEditor2__Checkbox__c', 'Rented_Investor__c', Component116_op, true, 2, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component124_val_dummy, 'SkyEditor2__Text__c','INV_Desperate__c', Component124_op, true, 2, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component128_val_dummy, 'SkyEditor2__Text__c','Desperate__c', Component128_op, true, 2, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component120_val, 'SkyEditor2__Checkbox__c', 'Restaurant_Consultant__c', Component120_op, true, 2, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component126_val_dummy, 'SkyEditor2__Text__c','INV_Prospect__c', Component126_op, true, 2, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component130_val_dummy, 'SkyEditor2__Text__c','Prospect__c', Component130_op, true, 2, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component118_val, 'SkyEditor2__Checkbox__c', 'Rented_Financiar__c', Component118_op, true, 2, false ))
				);	
					
					Component3 = new Component3(new List<Contact>(), new List<Component3Item>(), new List<Contact>(), null);
				listItemHolders.put('Component3', Component3);	
					
					
				recordTypeSelector = new SkyEditor2.RecordTypeSelector(Contact.SObjectType, true);
					
					
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
			
		public List<SelectOption> getOperatorOptions_Contact_FirstName() { 
			return getOperatorOptions('Contact', 'FirstName');	
		}	
		public List<SelectOption> getOperatorOptions_Contact_LastName() { 
			return getOperatorOptions('Contact', 'LastName');	
		}	
		public List<SelectOption> getOperatorOptions_Contact_MobilePhone() { 
			return getOperatorOptions('Contact', 'MobilePhone');	
		}	
		public List<SelectOption> getOperatorOptions_Contact_Vendor_c() { 
			return getOperatorOptions('Contact', 'Vendor__c');	
		}	
		public List<SelectOption> getOperatorOptions_Contact_Vendor_Type_c_multi() { 
			return SkyEditor2.WhereOperatorOptions.getOperatorOptionsSelectIn(); 
		}	
		public List<SelectOption> getOperatorOptions_Contact_Vendor_Power_c() { 
			return getOperatorOptions('Contact', 'Vendor_Power__c');	
		}	
		public List<SelectOption> getOperatorOptions_Contact_Name() { 
			return getOperatorOptions('Contact', 'Name');	
		}	
		public List<SelectOption> getOperatorOptions_Contact_Agent_c() { 
			return getOperatorOptions('Contact', 'Agent__c');	
		}	
		public List<SelectOption> getOperatorOptions_Contact_Retail_Specialist_Dealer_c() { 
			return getOperatorOptions('Contact', 'Retail_Specialist_Dealer__c');	
		}	
		public List<SelectOption> getOperatorOptions_Contact_Rented_Dealer_Category_c_multi() { 
			return SkyEditor2.WhereOperatorOptions.getOperatorOptionsSelectIn(); 
		}	
		public List<SelectOption> getOperatorOptions_Contact_Deals_in_Farm_c() { 
			return getOperatorOptions('Contact', 'Deals_in_Farm__c');	
		}	
		public List<SelectOption> getOperatorOptions_Contact_Retail_Effectiveness_c() { 
			return getOperatorOptions('Contact', 'Retail_Effectiveness__c');	
		}	
		public List<SelectOption> getOperatorOptions_Contact_Rented_Effectiveness_c() { 
			return getOperatorOptions('Contact', 'Rented_Effectiveness__c');	
		}	
		public List<SelectOption> getOperatorOptions_Contact_Farms_Effectiveness_c() { 
			return getOperatorOptions('Contact', 'Farms_Effectiveness__c');	
		}	
		public List<SelectOption> getOperatorOptions_Contact_Retail_Specialist_Type_c() { 
			return getOperatorOptions('Contact', 'Retail_Specialist_Type__c');	
		}	
		public List<SelectOption> getOperatorOptions_Contact_Commercial_Effectiveness_c() { 
			return getOperatorOptions('Contact', 'Commercial_Effectiveness__c');	
		}	
		public List<SelectOption> getOperatorOptions_Contact_Commercial_Leasing_c() { 
			return getOperatorOptions('Contact', 'Commercial_Leasing__c');	
		}	
		public List<SelectOption> getOperatorOptions_Contact_Deals_in_Industrial_c() { 
			return getOperatorOptions('Contact', 'Deals_in_Industrial__c');	
		}	
		public List<SelectOption> getOperatorOptions_Contact_Investor_c() { 
			return getOperatorOptions('Contact', 'Investor__c');	
		}	
		public List<SelectOption> getOperatorOptions_Contact_Tenant_c() { 
			return getOperatorOptions('Contact', 'Tenant__c');	
		}	
		public List<SelectOption> getOperatorOptions_Contact_Rented_Investor_c() { 
			return getOperatorOptions('Contact', 'Rented_Investor__c');	
		}	
		public List<SelectOption> getOperatorOptions_Contact_INV_Desperate_c() { 
			return getOperatorOptions('Contact', 'INV_Desperate__c');	
		}	
		public List<SelectOption> getOperatorOptions_Contact_Desperate_c() { 
			return getOperatorOptions('Contact', 'Desperate__c');	
		}	
		public List<SelectOption> getOperatorOptions_Contact_Restaurant_Consultant_c() { 
			return getOperatorOptions('Contact', 'Restaurant_Consultant__c');	
		}	
		public List<SelectOption> getOperatorOptions_Contact_INV_Prospect_c() { 
			return getOperatorOptions('Contact', 'INV_Prospect__c');	
		}	
		public List<SelectOption> getOperatorOptions_Contact_Prospect_c() { 
			return getOperatorOptions('Contact', 'Prospect__c');	
		}	
		public List<SelectOption> getOperatorOptions_Contact_Rented_Financiar_c() { 
			return getOperatorOptions('Contact', 'Rented_Financiar__c');	
		}	
			
			
	global without sharing class Component3Item extends SkyEditor2.ListItem {
		public Contact record{get; private set;}
		@TestVisible
		Component3Item(Component3 holder, Contact record, SkyEditor2.RecordTypeSelector recordTypeSelector) {
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
	global without sharing  class Component3 extends SkyEditor2.ListItemHolder {
		public List<Component3Item> items{get; private set;}
		@TestVisible
			Component3(List<SObject> records, List<SkyEditor2.ListItem> items, List<SObject> deleteRecords, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(records, items, deleteRecords, recordTypeSelector);
			this.items = (List<Component3Item>)items;
		}
		global override SkyEditor2.ListItem create(SObject data) {
			return new Component3Item(this, (Contact)data, recordTypeSelector);
		}
		public void doDeleteSelectedItems(){deleteSelectedItems();}
	}

			
	}