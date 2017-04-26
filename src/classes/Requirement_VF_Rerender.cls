global with sharing class Requirement_VF_Rerender extends SkyEditor2.SkyEditorPageBaseWithSharing {
	
	public Requirement__c record {get{return (Requirement__c)mainRecord;}}
	public with sharing class CanvasException extends Exception {}

	public Boolean Component374_rendered {get{ return record.Share_Requirement__c==true;}}
	public Boolean Component144_rendered {get{ return record.Fill_Lease_Cheque_Details__c==true;}}
	public Boolean Component416_rendered {get{ return record.Security_Cheque_2__c!=null;}}
	public Boolean Component415_rendered {get{ return record.Security_Cheque_1__c>1;}}
	public Boolean Component163_rendered {get{ return record.Fill_Hire_Cheque_Details__c==true;}}
	public Boolean Component420_rendered {get{ return record.Hire_Security_Cheque_2__c!=null;}}
	public Boolean Component421_rendered {get{ return record.Hire_Security_Cheque_1__c>1;}}
	public Boolean Component182_rendered {get{ return record.Fill_Franchise_Amounts__c==true;}}
	public Boolean Component431_rendered {get{ return record.Slab_1__c!=null;}}
	public Boolean Component432_rendered {get{ return record.Slab_2__c!=null;}}
	public Boolean Component207_rendered {get{ return record.Fill_LOI_Details__c==true;}}
	public RequirementVF_myExtender getExtender() {return (RequirementVF_myExtender)extender;}
	
	
	public Component303 Component303 {get; private set;}
	public Component289 Component289 {get; private set;}
	public Component313 Component313 {get; private set;}
	public Component329 Component329 {get; private set;}
	public Component347 Component347 {get; private set;}
	{
	setApiVersion(31.0);
	}
	public Requirement_VF_Rerender(ApexPages.StandardController controller) {
		super(controller);


		SObjectField f;

		f = Requirement__c.fields.Name;
		f = Requirement__c.fields.Next_Contact_Date__c;
		f = Requirement__c.fields.Company__c;
		f = Requirement__c.fields.Priority__c;
		f = Requirement__c.fields.Contact_3__c;
		f = Requirement__c.fields.Req_Status__c;
		f = Requirement__c.fields.Contact_4__c;
		f = Requirement__c.fields.Contact_5__c;
		f = Requirement__c.fields.Ajay_temp_Hide__c;
		f = Requirement__c.fields.Contact_6__c;
		f = Requirement__c.fields.Last_Day__c;
		f = Requirement__c.fields.Aparna_Shared__c;
		f = Requirement__c.fields.Rana_Shared__c;
		f = Requirement__c.fields.Saloni_Shared__c;
		f = Requirement__c.fields.Pradeep_Shared__c;
		f = Requirement__c.fields.Circle_Rates__c;
		f = Requirement__c.fields.Stamp_Calculater__c;
		f = Requirement__c.fields.Status_Next_SMS_Number__c;
		f = Requirement__c.fields.Email_Status_Next_Step__c;
		f = Requirement__c.fields.Stage__c;
		f = Requirement__c.fields.Appu_N_Date__c;
		f = Requirement__c.fields.Deal_Status__c;
		f = Requirement__c.fields.Next_Step__c;
		f = Requirement__c.fields.Status__c;
		f = Requirement__c.fields.Deal_Marketing_Notes__c;
		f = Requirement__c.fields.Selected_Space__c;
		f = Requirement__c.fields.Agreement_Type__c;
		f = Requirement__c.fields.Rent_M_G__c;
		f = Requirement__c.fields.Notice_Period_Months__c;
		f = Requirement__c.fields.Hire_Amount__c;
		f = Requirement__c.fields.Stamp_Duty__c;
		f = Requirement__c.fields.Tenure_Yrs__c;
		f = Requirement__c.fields.Stamp_Duty_Cheque_given_by__c;
		f = Requirement__c.fields.Lease_Commencement__c;
		f = Requirement__c.fields.Signage_Structural_Changes__c;
		f = Requirement__c.fields.Security_Deposit__c;
		f = Requirement__c.fields.Power_Load__c;
		f = Requirement__c.fields.Escalation__c;
		f = Requirement__c.fields.Advance_Amount__c;
		f = Requirement__c.fields.Escalation_after_Yrs__c;
		f = Requirement__c.fields.Advance_adjusted_in_months__c;
		f = Requirement__c.fields.Rent_Free_Days__c;
		f = Requirement__c.fields.Lock_in__c;
		f = Requirement__c.fields.Yet_to_be_Settled__c;
		f = Requirement__c.fields.Fill_Franchise_Amounts__c;
		f = Requirement__c.fields.Fill_Lease_Cheque_Details__c;
		f = Requirement__c.fields.Fill_Hire_Cheque_Details__c;
		f = Requirement__c.fields.Fill_LOI_Details__c;
		f = Requirement__c.fields.Total_Security_Amount__c;
		f = Requirement__c.fields.Security_Cheque_1__c;
		f = Requirement__c.fields.Balance_Rent_Security_Amount__c;
		f = Requirement__c.fields.Security_Cheque_2__c;
		f = Requirement__c.fields.Security_Cheque_3__c;
		f = Requirement__c.fields.Security_Cheque_4__c;
		f = Requirement__c.fields.Cheque_Details_Rent__c;
		f = Requirement__c.fields.No_of_Adv_Rent_Cheques__c;
		f = Requirement__c.fields.Hire_Security_Amt__c;
		f = Requirement__c.fields.Hire_Security_Cheque_1__c;
		f = Requirement__c.fields.Balance_Hire_Security_Amount__c;
		f = Requirement__c.fields.Hire_Security_Cheque_2__c;
		f = Requirement__c.fields.Hire_Security_Cheque_3__c;
		f = Requirement__c.fields.Hire_Security_Cheque_4__c;
		f = Requirement__c.fields.Cheque_Details_Hire__c;
		f = Requirement__c.fields.No_of_Adv_Hire_Cheques__c;
		f = Requirement__c.fields.Discount_1__c;
		f = Requirement__c.fields.Minimum_Monthly_Sale__c;
		f = Requirement__c.fields.Slab_1__c;
		f = Requirement__c.fields.Min_Sale_after_1st_Escalation__c;
		f = Requirement__c.fields.Discount_2__c;
		f = Requirement__c.fields.Slab_2__c;
		f = Requirement__c.fields.Example_Sale__c;
		f = Requirement__c.fields.Discount_3__c;
		f = Requirement__c.fields.Shortfall_to_be_Paid__c;
		f = Requirement__c.fields.Landlord_Consitution__c;
		f = Requirement__c.fields.Brand_Name__c;
		f = Requirement__c.fields.Intending_Lessor__c;
		f = Requirement__c.fields.STRUCTURAL_MODIFICATIONS_CHANGES__c;
		f = Requirement__c.fields.Lessors_Address__c;
		f = Requirement__c.fields.Signage_Space__c;
		f = Requirement__c.fields.Authorised_Signatory_Lessor__c;
		f = Requirement__c.fields.Property_Usage__c;
		f = Requirement__c.fields.Tenant_s_Constitution__c;
		f = Requirement__c.fields.Legal_Due_Diligence_by__c;
		f = Requirement__c.fields.Intending_Lessee__c;
		f = Requirement__c.fields.Stamp_Papers_to_be_bought_by__c;
		f = Requirement__c.fields.Lessee_Address__c;
		f = Requirement__c.fields.Lease_to_be_Registered_by__c;
		f = Requirement__c.fields.Authorised_Signatory_Lessee__c;
		f = Requirement__c.fields.Fill_Stamp_Duty_Details__c;
		f = Requirement__c.fields.Stamp_Duty_Percentage__c;
		f = Requirement__c.fields.Total_Stamp_Duty_incl_Service_Tax__c;
		f = Requirement__c.fields.Lawyer_Charges__c;
		f = Requirement__c.fields.Sub_Registrar_Office__c;
		f = Requirement__c.fields.Cheque_in_Favour_of__c;
		f = Requirement__c.fields.OwnerId;
		f = Requirement__c.fields.Requirement_ID__c;
		f = Opportunity.fields.Name;
		f = Opportunity.fields.CloseDate;
		f = Shown_To__c.fields.Name;
		f = Shown_To__c.fields.Space_Location__c;
		f = Shown_To__c.fields.Intrest_Level__c;
		f = Shown_To__c.fields.Floor_wise_Area_Sq_Ft__c;
		f = Shown_To__c.fields.Rent_Month__c;
		f = Shown_To__c.fields.Rent_PSF_on_Covered_Area__c;
		f = Shown_To__c.fields.Frontage_Ft__c;
		f = Shown_To__c.fields.Entry_From__c;
		f = Shown_To__c.fields.Agreement_Type__c;
		f = Associate__c.fields.Name;
		f = Associate__c.fields.Power_Meter__c;
		f = Associate__c.fields.Dealer_Market_Comment__c;
		f = Associate__c.fields.Direct_Deal__c;
		f = Associate__c.fields.Preferred_Associate__c;
		f = Case.fields.CaseNumber;
		f = Case.fields.Subject;
		f = Case.fields.CreatedDate;
		f = Case.fields.Priority;
		f = Case.fields.Origin;
		f = Case.fields.Status;
		f = Case.fields.Type;
		f = Twilio_Call_Log__c.fields.Name;
		f = Twilio_Call_Log__c.fields.Call_Duration__c;
		f = Twilio_Call_Log__c.fields.Call_From_N__c;
		f = Twilio_Call_Log__c.fields.Call_Status__c;
		f = Twilio_Call_Log__c.fields.Caller_Id_N__c;
		f = Twilio_Call_Log__c.fields.Call_To_N__c;
		f = Twilio_Call_Log__c.fields.CreatedDate;
		f = Twilio_Call_Log__c.fields.Recording_URL__c;
		f = Requirement__c.fields.Share_Requirement__c;

		List<RecordTypeInfo> recordTypes;
		try {
			mainSObjectType = Requirement__c.SObjectType;
			setPageReferenceFactory(new PageReferenceFactory());
			
			mainQuery = new SkyEditor2.Query('Requirement__c');
			mainQuery.addField('Name');
			mainQuery.addField('Next_Contact_Date__c');
			mainQuery.addField('Company__c');
			mainQuery.addField('Priority__c');
			mainQuery.addField('Contact_3__c');
			mainQuery.addField('Req_Status__c');
			mainQuery.addField('Contact_4__c');
			mainQuery.addField('Contact_5__c');
			mainQuery.addField('Ajay_temp_Hide__c');
			mainQuery.addField('Contact_6__c');
			mainQuery.addField('Last_Day__c');
			mainQuery.addField('Aparna_Shared__c');
			mainQuery.addField('Rana_Shared__c');
			mainQuery.addField('Saloni_Shared__c');
			mainQuery.addField('Pradeep_Shared__c');
			mainQuery.addField('Circle_Rates__c');
			mainQuery.addField('Stamp_Calculater__c');
			mainQuery.addField('Status_Next_SMS_Number__c');
			mainQuery.addField('Email_Status_Next_Step__c');
			mainQuery.addField('Stage__c');
			mainQuery.addField('Appu_N_Date__c');
			mainQuery.addField('Deal_Status__c');
			mainQuery.addField('Next_Step__c');
			mainQuery.addField('Status__c');
			mainQuery.addField('Deal_Marketing_Notes__c');
			mainQuery.addField('Selected_Space__c');
			mainQuery.addField('Agreement_Type__c');
			mainQuery.addField('Rent_M_G__c');
			mainQuery.addField('Notice_Period_Months__c');
			mainQuery.addField('Hire_Amount__c');
			mainQuery.addField('Stamp_Duty__c');
			mainQuery.addField('Tenure_Yrs__c');
			mainQuery.addField('Stamp_Duty_Cheque_given_by__c');
			mainQuery.addField('Lease_Commencement__c');
			mainQuery.addField('Signage_Structural_Changes__c');
			mainQuery.addField('Security_Deposit__c');
			mainQuery.addField('Power_Load__c');
			mainQuery.addField('Escalation__c');
			mainQuery.addField('Advance_Amount__c');
			mainQuery.addField('Escalation_after_Yrs__c');
			mainQuery.addField('Advance_adjusted_in_months__c');
			mainQuery.addField('Rent_Free_Days__c');
			mainQuery.addField('Lock_in__c');
			mainQuery.addField('Yet_to_be_Settled__c');
			mainQuery.addField('Fill_Franchise_Amounts__c');
			mainQuery.addField('Fill_Lease_Cheque_Details__c');
			mainQuery.addField('Fill_Hire_Cheque_Details__c');
			mainQuery.addField('Fill_LOI_Details__c');
			mainQuery.addField('Security_Cheque_1__c');
			mainQuery.addField('Security_Cheque_2__c');
			mainQuery.addField('Security_Cheque_3__c');
			mainQuery.addField('Security_Cheque_4__c');
			mainQuery.addField('Cheque_Details_Rent__c');
			mainQuery.addField('No_of_Adv_Rent_Cheques__c');
			mainQuery.addField('Hire_Security_Cheque_1__c');
			mainQuery.addField('Hire_Security_Cheque_2__c');
			mainQuery.addField('Hire_Security_Cheque_3__c');
			mainQuery.addField('Hire_Security_Cheque_4__c');
			mainQuery.addField('Cheque_Details_Hire__c');
			mainQuery.addField('No_of_Adv_Hire_Cheques__c');
			mainQuery.addField('Discount_1__c');
			mainQuery.addField('Minimum_Monthly_Sale__c');
			mainQuery.addField('Slab_1__c');
			mainQuery.addField('Discount_2__c');
			mainQuery.addField('Slab_2__c');
			mainQuery.addField('Example_Sale__c');
			mainQuery.addField('Discount_3__c');
			mainQuery.addField('Shortfall_to_be_Paid__c');
			mainQuery.addField('Landlord_Consitution__c');
			mainQuery.addField('Brand_Name__c');
			mainQuery.addField('Intending_Lessor__c');
			mainQuery.addField('STRUCTURAL_MODIFICATIONS_CHANGES__c');
			mainQuery.addField('Lessors_Address__c');
			mainQuery.addField('Signage_Space__c');
			mainQuery.addField('Authorised_Signatory_Lessor__c');
			mainQuery.addField('Property_Usage__c');
			mainQuery.addField('Tenant_s_Constitution__c');
			mainQuery.addField('Legal_Due_Diligence_by__c');
			mainQuery.addField('Intending_Lessee__c');
			mainQuery.addField('Stamp_Papers_to_be_bought_by__c');
			mainQuery.addField('Lessee_Address__c');
			mainQuery.addField('Lease_to_be_Registered_by__c');
			mainQuery.addField('Authorised_Signatory_Lessee__c');
			mainQuery.addField('Fill_Stamp_Duty_Details__c');
			mainQuery.addField('Stamp_Duty_Percentage__c');
			mainQuery.addField('Lawyer_Charges__c');
			mainQuery.addField('Sub_Registrar_Office__c');
			mainQuery.addField('Cheque_in_Favour_of__c');
			mainQuery.addField('Share_Requirement__c');
			mainQuery.addFieldAsOutput('RecordTypeId');
			mainQuery.addFieldAsOutput('Total_Security_Amount__c');
			mainQuery.addFieldAsOutput('Balance_Rent_Security_Amount__c');
			mainQuery.addFieldAsOutput('Hire_Security_Amt__c');
			mainQuery.addFieldAsOutput('Balance_Hire_Security_Amount__c');
			mainQuery.addFieldAsOutput('Min_Sale_after_1st_Escalation__c');
			mainQuery.addFieldAsOutput('Total_Stamp_Duty_incl_Service_Tax__c');
			mainQuery.addFieldAsOutput('OwnerId');
			mainQuery.addFieldAsOutput('Requirement_ID__c');
			mainQuery.addWhere('Id', mainRecord.Id, SkyEditor2.WhereOperator.Eq)
				.limitRecords(1);
			
			
			
			mode = SkyEditor2.LayoutMode.LayoutSalesforce; 
			
			queryMap = new Map<String, SkyEditor2.Query>();
			SkyEditor2.Query query;
			
			Component303 = new Component303(new List<Opportunity>(), new List<Component303Item>(), new List<Opportunity>(), null);
			listItemHolders.put('Component303', Component303);
			query = new SkyEditor2.Query('Opportunity');
			query.addField('Name');
			query.addField('CloseDate');
			query.addWhere('Requirement__c', mainRecord.Id, SkyEditor2.WhereOperator.Eq);
			relationFields.put('Component303', 'Requirement__c');
			Component303.queryRelatedEvent = False;
			query.limitRecords(500);
			queryMap.put('Component303', query);
			
			Component289 = new Component289(new List<Shown_To__c>(), new List<Component289Item>(), new List<Shown_To__c>(), null);
			listItemHolders.put('Component289', Component289);
			query = new SkyEditor2.Query('Shown_To__c');
			query.addField('Name');
			query.addField('Intrest_Level__c');
			query.addFieldAsOutput('Space_Location__c');
			query.addFieldAsOutput('Floor_wise_Area_Sq_Ft__c');
			query.addFieldAsOutput('Rent_Month__c');
			query.addFieldAsOutput('Rent_PSF_on_Covered_Area__c');
			query.addFieldAsOutput('Frontage_Ft__c');
			query.addFieldAsOutput('Entry_From__c');
			query.addFieldAsOutput('Agreement_Type__c');
			query.addWhere('Requirement_2__c', mainRecord.Id, SkyEditor2.WhereOperator.Eq);
			relationFields.put('Component289', 'Requirement_2__c');
			Component289.queryRelatedEvent = False;
			query.limitRecords(500);
			queryMap.put('Component289', query);
			
			Component313 = new Component313(new List<Associate__c>(), new List<Component313Item>(), new List<Associate__c>(), null);
			listItemHolders.put('Component313', Component313);
			query = new SkyEditor2.Query('Associate__c');
			query.addField('Name');
			query.addField('Power_Meter__c');
			query.addField('Dealer_Market_Comment__c');
			query.addField('Direct_Deal__c');
			query.addField('Preferred_Associate__c');
			query.addWhere('Requirement__c', mainRecord.Id, SkyEditor2.WhereOperator.Eq);
			relationFields.put('Component313', 'Requirement__c');
			Component313.queryRelatedEvent = False;
			query.limitRecords(500);
			queryMap.put('Component313', query);
			
			Component329 = new Component329(new List<Case>(), new List<Component329Item>(), new List<Case>(), null);
			listItemHolders.put('Component329', Component329);
			query = new SkyEditor2.Query('Case');
			query.addField('Subject');
			query.addField('Priority');
			query.addField('Origin');
			query.addField('Status');
			query.addField('Type');
			query.addFieldAsOutput('CaseNumber');
			query.addFieldAsOutput('CreatedDate');
			query.addWhere('Requirement__c', mainRecord.Id, SkyEditor2.WhereOperator.Eq);
			relationFields.put('Component329', 'Requirement__c');
			Component329.queryRelatedEvent = False;
			query.limitRecords(500);
			queryMap.put('Component329', query);
			
			Component347 = new Component347(new List<Twilio_Call_Log__c>(), new List<Component347Item>(), new List<Twilio_Call_Log__c>(), null);
			listItemHolders.put('Component347', Component347);
			query = new SkyEditor2.Query('Twilio_Call_Log__c');
			query.addField('Call_Duration__c');
			query.addField('Call_From_N__c');
			query.addField('Call_Status__c');
			query.addField('Caller_Id_N__c');
			query.addField('Call_To_N__c');
			query.addField('Recording_URL__c');
			query.addFieldAsOutput('Name');
			query.addFieldAsOutput('CreatedDate');
			query.addWhere('Called_Requirement__c', mainRecord.Id, SkyEditor2.WhereOperator.Eq);
			relationFields.put('Component347', 'Called_Requirement__c');
			Component347.queryRelatedEvent = False;
			query.limitRecords(500);
			queryMap.put('Component347', query);
			
			registRelatedList('Opportunities__r', 'Component303');
			registRelatedList('Shown_To_Space__r', 'Component289');
			registRelatedList('Associates__r', 'Component313');
			registRelatedList('Cases__r', 'Component329');
			registRelatedList('Twilio_Call_Logs__r', 'Component347');
			
			p_showHeader = true;
			p_sidebar = true;
			addInheritParameter('RecordTypeId', 'RecordType');
			extender = new RequirementVF_myExtender(this);
			init();
			
			Component303.extender = this.extender;
			Component289.extender = this.extender;
			Component313.extender = this.extender;
			Component329.extender = this.extender;
			Component347.extender = this.extender;
			if (record.Id == null) {
				
				saveOldValues();
				
			}

			
			extender.init();
			
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

	global with sharing class Component303Item extends SkyEditor2.ListItem {
		public Opportunity record{get; private set;}
		@TestVisible
		Component303Item(Component303 holder, Opportunity record, SkyEditor2.RecordTypeSelector recordTypeSelector) {
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
	global with sharing  class Component303 extends SkyEditor2.ListItemHolder {
		public List<Component303Item> items{get; private set;}
		@TestVisible
			Component303(List<SObject> records, List<SkyEditor2.ListItem> items, List<SObject> deleteRecords, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(records, items, deleteRecords, recordTypeSelector);
			this.items = (List<Component303Item>)items;
		}
		global override SkyEditor2.ListItem create(SObject data) {
			return new Component303Item(this, (Opportunity)data, recordTypeSelector);
		}
		public void doDeleteSelectedItems(){deleteSelectedItems();}
	}
	global with sharing class Component289Item extends SkyEditor2.ListItem {
		public Shown_To__c record{get; private set;}
		@TestVisible
		Component289Item(Component289 holder, Shown_To__c record, SkyEditor2.RecordTypeSelector recordTypeSelector) {
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
	global with sharing  class Component289 extends SkyEditor2.ListItemHolder {
		public List<Component289Item> items{get; private set;}
		@TestVisible
			Component289(List<SObject> records, List<SkyEditor2.ListItem> items, List<SObject> deleteRecords, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(records, items, deleteRecords, recordTypeSelector);
			this.items = (List<Component289Item>)items;
		}
		global override SkyEditor2.ListItem create(SObject data) {
			return new Component289Item(this, (Shown_To__c)data, recordTypeSelector);
		}
		public void doDeleteSelectedItems(){deleteSelectedItems();}
	}
	global with sharing class Component313Item extends SkyEditor2.ListItem {
		public Associate__c record{get; private set;}
		@TestVisible
		Component313Item(Component313 holder, Associate__c record, SkyEditor2.RecordTypeSelector recordTypeSelector) {
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
	global with sharing  class Component313 extends SkyEditor2.ListItemHolder {
		public List<Component313Item> items{get; private set;}
		@TestVisible
			Component313(List<SObject> records, List<SkyEditor2.ListItem> items, List<SObject> deleteRecords, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(records, items, deleteRecords, recordTypeSelector);
			this.items = (List<Component313Item>)items;
		}
		global override SkyEditor2.ListItem create(SObject data) {
			return new Component313Item(this, (Associate__c)data, recordTypeSelector);
		}
		public void doDeleteSelectedItems(){deleteSelectedItems();}
	}
	global with sharing class Component329Item extends SkyEditor2.ListItem {
		public Case record{get; private set;}
		@TestVisible
		Component329Item(Component329 holder, Case record, SkyEditor2.RecordTypeSelector recordTypeSelector) {
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
	global with sharing  class Component329 extends SkyEditor2.ListItemHolder {
		public List<Component329Item> items{get; private set;}
		@TestVisible
			Component329(List<SObject> records, List<SkyEditor2.ListItem> items, List<SObject> deleteRecords, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(records, items, deleteRecords, recordTypeSelector);
			this.items = (List<Component329Item>)items;
		}
		global override SkyEditor2.ListItem create(SObject data) {
			return new Component329Item(this, (Case)data, recordTypeSelector);
		}
		public void doDeleteSelectedItems(){deleteSelectedItems();}
	}
	global with sharing class Component347Item extends SkyEditor2.ListItem {
		public Twilio_Call_Log__c record{get; private set;}
		@TestVisible
		Component347Item(Component347 holder, Twilio_Call_Log__c record, SkyEditor2.RecordTypeSelector recordTypeSelector) {
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
	global with sharing  class Component347 extends SkyEditor2.ListItemHolder {
		public List<Component347Item> items{get; private set;}
		@TestVisible
			Component347(List<SObject> records, List<SkyEditor2.ListItem> items, List<SObject> deleteRecords, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(records, items, deleteRecords, recordTypeSelector);
			this.items = (List<Component347Item>)items;
		}
		global override SkyEditor2.ListItem create(SObject data) {
			return new Component347Item(this, (Twilio_Call_Log__c)data, recordTypeSelector);
		}
		public void doDeleteSelectedItems(){deleteSelectedItems();}
	}
	with sharing class PageReferenceFactory implements SkyEditor2.PageReferenceFactory.Implementation {
		public PageReference newPageReference(String url) {
			return new PageReference(url);
		}
	}
}