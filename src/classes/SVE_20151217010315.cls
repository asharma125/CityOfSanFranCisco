global with sharing class SVE_20151217010315 extends SkyEditor2.SkyEditorPageBaseWithSharing {	
			
		public Indus_Asset__c record{get;set;}	
			
	
		public Component3 Component3 {get; private set;}	
			
		public SkyEditor2.RecordTypeSelector recordTypeSelector {get; private set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component5_from{get;set;}	
		public SkyEditor2__SkyEditorDummy__c Component5_to{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component9_from{get;set;}	
		public SkyEditor2__SkyEditorDummy__c Component9_to{get;set;}	
		public SkyEditor2__SkyEditorDummy__c Component9_isNull{get;set;}	
		public SkyEditor2.TextHolder.OperatorHolder Component9_isNull_op{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component15_from{get;set;}	
		public SkyEditor2__SkyEditorDummy__c Component15_to{get;set;}	
		public SkyEditor2__SkyEditorDummy__c Component15_isNull{get;set;}	
		public SkyEditor2.TextHolder.OperatorHolder Component15_isNull_op{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component17_from{get;set;}	
		public SkyEditor2__SkyEditorDummy__c Component17_to{get;set;}	
		public SkyEditor2__SkyEditorDummy__c Component17_isNull{get;set;}	
		public SkyEditor2.TextHolder.OperatorHolder Component17_isNull_op{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component8_val {get;set;}	
		public SkyEditor2.TextHolder Component8_op{get;set;}	
		public List<SelectOption> valueOptions_Indus_Asset_c_Asset_Type_c {get;set;}
			
		public SkyEditor2__SkyEditorDummy__c Component12_val {get;set;}	
		public SkyEditor2.TextHolder Component12_op{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component14_valGroup {get;set;}	
		public SkyEditor2__SkyEditorDummy__c Component14_val {get;set;}	
		public SkyEditor2.TextHolder Component14_op{get;set;}	
		public List<SelectOption> valueOptions_Indus_Asset_c_Installed_At_c {get;set;}
			
		public Indus_Asset__c Component20_val {get;set;}	
		public SkyEditor2.TextHolder Component20_op{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component22_val {get;set;}	
		public SkyEditor2.TextHolder Component22_op{get;set;}	
		public List<SelectOption> valueOptions_Indus_Asset_c_Stored_in_c {get;set;}
			
		public Indus_Asset__c Component24_val {get;set;}	
		public SkyEditor2.TextHolder Component24_op{get;set;}	
			
	public String recordTypeRecordsJSON_Indus_Asset_c {get; private set;}
	public String defaultRecordTypeId_Indus_Asset_c {get; private set;}
	public String metadataJSON_Indus_Asset_c {get; private set;}
	{
	setApiVersion(31.0);
	}
		public SVE_20151217010315(ApexPages.StandardController controller) {	
			super(controller);	

		SObjectField f;

		f = Indus_Asset__c.fields.Asset_Type__c;
		f = Indus_Asset__c.fields.Name;
		f = Indus_Asset__c.fields.Installed_At__c;
		f = Indus_Asset__c.fields.Responsibility1__c;
		f = Indus_Asset__c.fields.Stored_in__c;
		f = Indus_Asset__c.fields.Vendor_Account__c;
		f = Indus_Asset__c.fields.Account__c;
		f = Indus_Asset__c.fields.Amount__c;
		f = Indus_Asset__c.fields.Description__c;
		f = Indus_Asset__c.fields.Make__c;
		f = Indus_Asset__c.fields.Next_service_Due__c;
		f = Indus_Asset__c.fields.OwnerId;
		f = Indus_Asset__c.fields.Purchased_On__c;
 f = Indus_Asset__c.fields.Amount__c;
 f = Indus_Asset__c.fields.CreatedDate;
 f = Indus_Asset__c.fields.Next_service_Due__c;
 f = Indus_Asset__c.fields.Purchased_On__c;

		List<RecordTypeInfo> recordTypes;
			try {	
					
				mainRecord = null;	
				mainSObjectType = Indus_Asset__c.SObjectType;	
					
					
				mode = SkyEditor2.LayoutMode.TempSearch_01; 
					
				Component5_from = new SkyEditor2__SkyEditorDummy__c();	
				Component5_to = new SkyEditor2__SkyEditorDummy__c();	
					
				Component9_from = new SkyEditor2__SkyEditorDummy__c();	
				Component9_to = new SkyEditor2__SkyEditorDummy__c();	
				Component9_isNull = new SkyEditor2__SkyEditorDummy__c();	
				Component9_isNull_op = new SkyEditor2.TextHolder.OperatorHolder('eq'); 	
					
				Component15_from = new SkyEditor2__SkyEditorDummy__c();	
				Component15_to = new SkyEditor2__SkyEditorDummy__c();	
				Component15_isNull = new SkyEditor2__SkyEditorDummy__c();	
				Component15_isNull_op = new SkyEditor2.TextHolder.OperatorHolder('eq'); 	
					
				Component17_from = new SkyEditor2__SkyEditorDummy__c();	
				Component17_to = new SkyEditor2__SkyEditorDummy__c();	
				Component17_isNull = new SkyEditor2__SkyEditorDummy__c();	
				Component17_isNull_op = new SkyEditor2.TextHolder.OperatorHolder('eq'); 	
					
				Indus_Asset__c lookupObjComponent56 = new Indus_Asset__c();	
				Component8_val = new SkyEditor2__SkyEditorDummy__c();	
				Component8_op = new SkyEditor2.TextHolder();	
				valueOptions_Indus_Asset_c_Asset_Type_c = new List<SelectOption>{
					new SelectOption('', Label.none)
				};
				for (PicklistEntry e : Indus_Asset__c.Asset_Type__c.getDescribe().getPicklistValues()) {
					if (e.isActive()) {
						valueOptions_Indus_Asset_c_Asset_Type_c.add(new SelectOption(e.getValue(), e.getLabel()));
					}
				}
					
				Component12_val = new SkyEditor2__SkyEditorDummy__c();	
				Component12_op = new SkyEditor2.TextHolder();	
					
				Component14_valGroup = new SkyEditor2__SkyEditorDummy__c();	
				Component14_val = Component14_valGroup;	
				Component14_op = new SkyEditor2.TextHolder();	
				valueOptions_Indus_Asset_c_Installed_At_c = new List<SelectOption>{
					new SelectOption('', Label.none)
				};
				for (PicklistEntry e : Indus_Asset__c.Installed_At__c.getDescribe().getPicklistValues()) {
					if (e.isActive()) {
						valueOptions_Indus_Asset_c_Installed_At_c.add(new SelectOption(e.getValue(), e.getLabel()));
					}
				}
					
				Component20_val = lookupObjComponent56;	
				Component20_op = new SkyEditor2.TextHolder();	
					
				Component22_val = Component14_valGroup;	
				Component22_op = new SkyEditor2.TextHolder('eq');	
				valueOptions_Indus_Asset_c_Stored_in_c = new List<SelectOption>{
					new SelectOption('', Label.none)
				};
				for (PicklistEntry e : Indus_Asset__c.Stored_in__c.getDescribe().getPicklistValues()) {
					if (e.isActive()) {
						valueOptions_Indus_Asset_c_Stored_in_c.add(new SelectOption(e.getValue(), e.getLabel()));
					}
				}
					
				Component24_val = lookupObjComponent56;	
				Component24_op = new SkyEditor2.TextHolder('eq');	
					
				queryMap.put(	
					'Component3',	
					new SkyEditor2.Query('Indus_Asset__c')
						.addField('Account__c')
						.addField('Amount__c')
						.addField('Asset_Type__c')
						.addField('Description__c')
						.addField('Name')
						.addField('Installed_At__c')
						.addField('Make__c')
						.addField('Next_service_Due__c')
						.addField('OwnerId')
						.addField('Purchased_On__c')
						.addField('Responsibility1__c')
						.addField('Stored_in__c')
						.addField('Vendor_Account__c')
						.limitRecords(500)	
						.addListener(new SkyEditor2.QueryWhereRegister(Component5_from, 'SkyEditor2__Text__c', 'Amount__c', new SkyEditor2.TextHolder('ge'), false, 0 )) 
						.addListener(new SkyEditor2.QueryWhereRegister(Component5_to, 'SkyEditor2__Text__c', 'Amount__c', new SkyEditor2.TextHolder('le'), false, 0 )) 
						.addListener(new SkyEditor2.QueryWhereRegister(Component9_from, 'SkyEditor2__Date__c', 'CreatedDate', new SkyEditor2.TextHolder('ge'), false, 0 )) 
						.addListener(new SkyEditor2.QueryWhereRegister(Component9_to, 'SkyEditor2__Date__c', 'CreatedDate', new SkyEditor2.TextHolder('le'), false, 0 )) 
						.addListener(new SkyEditor2.QueryWhereRegister(Component9_isNull, 'SkyEditor2__Date__c', 'CreatedDate', Component9_isNull_op, true,0,false )) 
						
						.addListener(new SkyEditor2.QueryWhereRegister(Component15_from, 'SkyEditor2__Date__c', 'Next_service_Due__c', new SkyEditor2.TextHolder('ge'), false, 0 )) 
						.addListener(new SkyEditor2.QueryWhereRegister(Component15_to, 'SkyEditor2__Date__c', 'Next_service_Due__c', new SkyEditor2.TextHolder('le'), false, 0 )) 
						.addListener(new SkyEditor2.QueryWhereRegister(Component15_isNull, 'SkyEditor2__Date__c', 'Next_service_Due__c', Component15_isNull_op, true,0,false )) 
						
						.addListener(new SkyEditor2.QueryWhereRegister(Component17_from, 'SkyEditor2__Date__c', 'Purchased_On__c', new SkyEditor2.TextHolder('ge'), false, 0 )) 
						.addListener(new SkyEditor2.QueryWhereRegister(Component17_to, 'SkyEditor2__Date__c', 'Purchased_On__c', new SkyEditor2.TextHolder('le'), false, 0 )) 
						.addListener(new SkyEditor2.QueryWhereRegister(Component17_isNull, 'SkyEditor2__Date__c', 'Purchased_On__c', Component17_isNull_op, true,0,false )) 
						
						.addListener(new SkyEditor2.QueryWhereRegister(Component8_val, 'SkyEditor2__Text__c', 'Asset_Type__c', Component8_op, true, 0, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component12_val, 'SkyEditor2__Text__c', 'Name', Component12_op, true, 0, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component14_val, 'SkyEditor2__Text__c', 'Installed_At__c', Component14_op, true, 0, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component20_val, 'Responsibility1__c', 'Responsibility1__c', Component20_op, true, 0, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component22_val, 'SkyEditor2__Text__c', 'Stored_in__c', Component22_op, true, 0, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component24_val, 'Vendor_Account__c', 'Vendor_Account__c', Component24_op, true, 0, false ))
				);	
					
					Component3 = new Component3(new List<Indus_Asset__c>(), new List<Component3Item>(), new List<Indus_Asset__c>(), null);
				listItemHolders.put('Component3', Component3);	
					
					
				recordTypeSelector = new SkyEditor2.RecordTypeSelector(Indus_Asset__c.SObjectType, true);
					
					
			p_showHeader = true;
			p_sidebar = true;
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
			
		public List<SelectOption> getOperatorOptions_Indus_Asset_c_Asset_Type_c() { 
			return getOperatorOptions('Indus_Asset__c', 'Asset_Type__c');	
		}	
		public List<SelectOption> getOperatorOptions_Indus_Asset_c_Name() { 
			return getOperatorOptions('Indus_Asset__c', 'Name');	
		}	
		public List<SelectOption> getOperatorOptions_Indus_Asset_c_Installed_At_c() { 
			return getOperatorOptions('Indus_Asset__c', 'Installed_At__c');	
		}	
		public List<SelectOption> getOperatorOptions_Indus_Asset_c_Responsibility1_c() { 
			return getOperatorOptions('Indus_Asset__c', 'Responsibility1__c');	
		}	
		public List<SelectOption> getOperatorOptions_Indus_Asset_c_Stored_in_c() { 
			return getOperatorOptions('Indus_Asset__c', 'Stored_in__c');	
		}	
		public List<SelectOption> getOperatorOptions_Indus_Asset_c_Vendor_Account_c() { 
			return getOperatorOptions('Indus_Asset__c', 'Vendor_Account__c');	
		}	
			
			
	global with sharing class Component3Item extends SkyEditor2.ListItem {
		public Indus_Asset__c record{get; private set;}
		@TestVisible
		Component3Item(Component3 holder, Indus_Asset__c record, SkyEditor2.RecordTypeSelector recordTypeSelector) {
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
	global with sharing  class Component3 extends SkyEditor2.ListItemHolder {
		public List<Component3Item> items{get; private set;}
		@TestVisible
			Component3(List<SObject> records, List<SkyEditor2.ListItem> items, List<SObject> deleteRecords, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(records, items, deleteRecords, recordTypeSelector);
			this.items = (List<Component3Item>)items;
		}
		global override SkyEditor2.ListItem create(SObject data) {
			return new Component3Item(this, (Indus_Asset__c)data, recordTypeSelector);
		}
		public void doDeleteSelectedItems(){deleteSelectedItems();}
	}

	public Indus_Asset__c Component3_table_Conversion { get { return new Indus_Asset__c();}}
	
	public String Component3_table_selectval { get; set; }
	
	
			
	}