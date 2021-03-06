global with sharing class Mobile_f5_Space_layout extends SkyEditor2.SkyEditorPageBaseWithSharing {	
			
		public Space_Options__c record{get;set;}	
			
	
		public Component3 Component3 {get; private set;}	
			
		public SkyEditor2.RecordTypeSelector recordTypeSelector {get; private set;}	
			
	public string Component4_pagename{get;set;}
	public string Component4_recordid{get;set;}
		public SkyEditor2__SkyEditorDummy__c Component8_val {get;set;}	
		public SkyEditor2.TextHolder Component8_op{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component10_val {get;set;}	
		public SkyEditor2.TextHolder Component10_op{get;set;}	
			
		public SkyEditor2__SkyEditorDummy__c Component12_val {get;set;}	
		public SkyEditor2.TextHolder Component12_op{get;set;}	
			
	public String recordTypeRecordsJSON_Space_Options_c {get; private set;}
	public String defaultRecordTypeId_Space_Options_c {get; private set;}
	public String metadataJSON_Space_Options_c {get; private set;}
	{
	setApiVersion(31.0);
	}
		public Mobile_f5_Space_layout(ApexPages.StandardController controller) {	
			super(controller);	

		SObjectField f;

		f = Space_Options__c.fields.Space_Ref_No__c;
		f = Space_Options__c.fields.F_5_Case_No__c;
		f = Space_Options__c.fields.Old_Signage__c;
		f = Space_Options__c.fields.Global_Search_Assistant__c;

		List<RecordTypeInfo> recordTypes;
			try {	
					
				mainRecord = null;	
				mainSObjectType = Space_Options__c.SObjectType;	
					
					
				mode = SkyEditor2.LayoutMode.TempSearch_01; 
					
				Component8_val = new SkyEditor2__SkyEditorDummy__c();	
				Component8_op = new SkyEditor2.TextHolder();	
					
				Component10_val = new SkyEditor2__SkyEditorDummy__c();	
				Component10_op = new SkyEditor2.TextHolder();	
					
				Component12_val = new SkyEditor2__SkyEditorDummy__c();	
				Component12_op = new SkyEditor2.TextHolder();	
					
				queryMap.put(	
					'Component3',	
					new SkyEditor2.Query('Space_Options__c')
						.addField('Global_Search_Assistant__c')
						.addFieldAsOutput('RecordTypeId')
						.limitRecords(500)	
						.addListener(new SkyEditor2.QueryWhereRegister(Component8_val, 'SkyEditor2__Text__c', 'Space_Ref_No__c', Component8_op, true, 0, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component10_val, 'SkyEditor2__Text__c', 'F_5_Case_No__c', Component10_op, true, 0, false ))
						.addListener(new SkyEditor2.QueryWhereRegister(Component12_val, 'SkyEditor2__Textarea__c', 'Old_Signage__c', Component12_op, true, 0, false ))
				);	
					
					Component3 = new Component3(new List<Space_Options__c>(), new List<Component3Item>(), new List<Space_Options__c>(), null);
				listItemHolders.put('Component3', Component3);	
					
					
				recordTypeSelector = new SkyEditor2.RecordTypeSelector(Space_Options__c.SObjectType, true);
					
					
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
			
		public List<SelectOption> getOperatorOptions_Space_Options_c_Space_Ref_No_c() { 
			return getOperatorOptions('Space_Options__c', 'Space_Ref_No__c');	
		}	
		public List<SelectOption> getOperatorOptions_Space_Options_c_F_5_Case_No_c() { 
			return getOperatorOptions('Space_Options__c', 'F_5_Case_No__c');	
		}	
		public List<SelectOption> getOperatorOptions_Space_Options_c_Old_Signage_c() { 
			return getOperatorOptions('Space_Options__c', 'Old_Signage__c');	
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