global with sharing class Contact_VF_ViewPage_view extends SkyEditor2.SkyEditorPageBaseWithSharing {
	
	public Contact record {get{return (Contact)mainRecord;}}
	public with sharing class CanvasException extends Exception {}

	public String recordTypeRecordsJSON_Contact {get; private set;}
	public String defaultRecordTypeId_Contact {get; private set;}
	public String metadataJSON_Contact {get; private set;}
	public String picklistValuesJSON_Contact_Rquirement_Type_c {get; private set;}
	public String picklistValuesJSON_Contact_Rented_Dealer_Category_c {get; private set;}
	public String picklistValuesJSON_Contact_Dealer_Closeness_c {get; private set;}
	public String picklistValuesJSON_Contact_INV_Property_Type_c {get; private set;}
	public String picklistValuesJSON_Contact_Advance_Cheque_c {get; private set;}
	public String Component764_hidden { get; set; }
	public String Component796_hidden { get; set; }
	
	
	public Component448 Component448 {get; private set;}
	public Component431 Component431 {get; private set;}
	public Component528 Component528 {get; private set;}
	public Component486 Component486 {get; private set;}
	public Component412 Component412 {get; private set;}
	public Component458 Component458 {get; private set;}
	public Component469 Component469 {get; private set;}
	public Component538 Component538 {get; private set;}
	public Component502 Component502 {get; private set;}
	public Component518 Component518 {get; private set;}
	public Component533 Component533 {get; private set;}
	{
	setApiVersion(31.0);
	}
	public Contact_VF_ViewPage_view(ApexPages.StandardController controller) {
		super(controller);


		SObjectField f;

		f = Contact.fields.LastName;
		f = Contact.fields.Contact__c;
		f = Contact.fields.FirstName;
		f = Contact.fields.Contact_Verified_Date__c;
		f = Contact.fields.Salutation;
		f = Contact.fields.REA_Teams__c;
		f = Contact.fields.True_Caller_Name__c;
		f = Contact.fields.AccountId;
		f = Contact.fields.REA_SMS_GROUP__c;
		f = Contact.fields.Secondary_Account__c;
		f = Contact.fields.REA_COURIER_GROUP__c;
		f = Contact.fields.Greeting__c;
		f = Contact.fields.Title;
		f = Contact.fields.HNI__c;
		f = Contact.fields.Department;
		f = Contact.fields.OwnerId;
		f = Contact.fields.MailingCountry;
		f = Contact.fields.ReportsToId;
		f = Contact.fields.MailingPostalCode;
		f = Contact.fields.Addl_Website__c;
		f = Contact.fields.MailingState;
		f = Contact.fields.Birthdate__c;
		f = Contact.fields.MailingCity;
		f = Contact.fields.DoNotCall;
		f = Contact.fields.MailingStreet;
		f = Contact.fields.Do_nor_Email__c;
		f = Contact.fields.MobilePhone;
		f = Contact.fields.Do_Not_SMS__c;
		f = Contact.fields.Mobile_2__c;
		f = Contact.fields.Do_not_Mail__c;
		f = Contact.fields.Land_Line_No__c;
		f = Contact.fields.Fax;
		f = Contact.fields.Email;
		f = Contact.fields.Share_with_Channel_Partner__c;
		f = Contact.fields.Personal_Email_Id__c;
		f = Contact.fields.Rana_Shared__c;
		f = Contact.fields.Pradeep_Shared__c;
		f = Contact.fields.Vivek_Shared__c;
		f = Contact.fields.Ankur_Shared__c;
		f = Contact.fields.visible_2_days__c;
		f = Contact.fields.F_4_Ticket__c;
		f = Contact.fields.Fill_Registration_Info__c;
		f = Contact.fields.AA_Contacts_to_be_maintained__c;
		f = Contact.fields.Relation__c;
		f = Contact.fields.Driving_License_No__c;
		f = Contact.fields.Name_of_Relation__c;
		f = Contact.fields.Adhar_Card_No__c;
		f = Contact.fields.Residence_Address__c;
		f = Contact.fields.PAN_Card_No__c;
		f = Contact.fields.ELECTION_CARD__c;
		f = Contact.fields.Passport_No__c;
		f = Contact.fields.Service_Tax_No__c;
		f = Contact.fields.Personal_Profile_Notes__c;
		f = Contact.fields.Tenant__c;
		f = Contact.fields.Agent__c;
		f = Contact.fields.Investor__c;
		f = Contact.fields.Vendor__c;
		f = Contact.fields.Vendor_Type__c;
		f = Contact.fields.Vendor_Power__c;
		f = Contact.fields.Create_BCR__c;
		f = Contact.fields.Brand_Handling__c;
		f = Contact.fields.Brand_Decision_Maker__c;
		f = Contact.fields.Brand_Category__c;
		f = Contact.fields.Incorrect_BCR__c;
		f = Contact.fields.Brand_Handled_Sub_Category__c;
		f = Contact.fields.CREATE_TENANT_RF__c;
		f = Contact.fields.Min_Area__c;
		f = Contact.fields.Floor_Preferred__c;
		f = Contact.fields.Max_Area_Sq_Ft__c;
		f = Contact.fields.Rquirement_Type__c;
		f = Contact.fields.Min_Budget_Rs__c;
		f = Contact.fields.Running_Restaurant_Takeover__c;
		f = Contact.fields.Max_Budget__c;
		f = Contact.fields.Suspect__c;
		f = Contact.fields.RF_CAR_Notes__c;
		f = Contact.fields.Prospect__c;
		f = Contact.fields.Desperate__c;
		f = Contact.fields.RF_Desperate_Updated_on__c;
		f = Contact.fields.Appu_Despos__c;
		f = Contact.fields.CAR_Notes_Updated_On__c;
		f = Contact.fields.Rented_Dealer_Category__c;
		f = Contact.fields.Agent_Area_s__c;
		f = Contact.fields.Dealer_Closeness__c;
		f = Contact.fields.Commercial_Leasing__c;
		f = Contact.fields.Rented_Effectiveness__c;
		f = Contact.fields.Commercial_Effectiveness__c;
		f = Contact.fields.Dealer_Comment__c;
		f = Contact.fields.Farms_Effectiveness__c;
		f = Contact.fields.Dealer_Company__c;
		f = Contact.fields.Deals_in_Industrial__c;
		f = Contact.fields.Retail_Specialist_Dealer__c;
		f = Contact.fields.Industrial_Effectiveness__c;
		f = Contact.fields.Retail_Specialist_Type__c;
		f = Contact.fields.Retail_Effectiveness__c;
		f = Contact.fields.Rented_Financiar__c;
		f = Contact.fields.Restaurant_Consultant__c;
		f = Contact.fields.Rented_Investor__c;
		f = Contact.fields.CREATE_INV_RF__c;
		f = Contact.fields.INV_Property_Type__c;
		f = Contact.fields.Min_Area_Req_Sq_Ft__c;
		f = Contact.fields.INV_Property_Sub_Type__c;
		f = Contact.fields.Max_Area_Req_Sq_Ft__c;
		f = Contact.fields.INV_Desperate__c;
		f = Contact.fields.INV_Min_Budget__c;
		f = Contact.fields.INV_Prospect__c;
		f = Contact.fields.INV_Max_Budget__c;
		f = Contact.fields.Plot_Area_Req_Min__c;
		f = Contact.fields.INV_CAR_Notes__c;
		f = Contact.fields.Plot_Area_Req_Max__c;
		f = Contact.fields.Advance_Cheque__c;
		f = Contact.fields.INV_Desperate_Updated_On__c;
		f = Contact.fields.ROI__c;
		f = Contact.fields.INV_CAR_Notes_Updated_On__c;
		f = Contact.fields.No_of_Bedrooms__c;
		f = Contact.fields.REA_Notes__c;
		f = Brand_Contact_Role__c.fields.Name;
		f = Brand_Contact_Role__c.fields.Designation__c;
		f = Brand_Contact_Role__c.fields.Incorrect_BCR__c;
		f = Brand_Contact_Role__c.fields.Brand_Category__c;
		f = Brand_Contact_Role__c.fields.Sub_Category__c;
		f = Brand_Contact_Role__c.fields.Notes__c;
		f = Ownership__c.fields.Name;
		f = Ownership__c.fields.Available_Spaces__c;
		f = Ownership__c.fields.UnAvailable_Space__c;
		f = Ownership__c.fields.Notes__c;
		f = Ownership__c.fields.Decision_Maker__c;
		f = Ownership__c.fields.Send_Courier_to_Both_Addresses__c;
		f = Ownership__c.fields.Courier_Above_Only__c;
		f = Ownership__c.fields.Courier_Showroom_Only__c;
		f = Space_Ownership__c.fields.Name;
		f = Space_Ownership__c.fields.Space__c;
		f = Space_Ownership__c.fields.Decision_Maker__c;
		f = Space_Ownership__c.fields.Last_CPCM_Mail_Sent_on__c;
		f = Associate__c.fields.Name;
		f = Associate__c.fields.Dealer_Market_Comment__c;
		f = Associate__c.fields.Preferred_Associate__c;
		f = Associate__c.fields.Direct_Deal__c;
		f = Associate__c.fields.Disclosure__c;
		f = Associate__c.fields.Power_Meter__c;
		f = Associate__c.fields.CreatedDate;
		f = Requirement__c.fields.Name;
		f = Requirement__c.fields.Requirement_Age__c;
		f = Requirement__c.fields.Deal_Marketing_Notes__c;
		f = Shown_To__c.fields.Name;
		f = Shown_To__c.fields.Date__c;
		f = Shown_To__c.fields.Intrest_Level__c;
		f = Shown_To__c.fields.Disclosed_Via__c;
		f = Shown_To__c.fields.Don_t_Propose__c;
		f = Shown_To__c.fields.T_D_Status__c;
		f = Shown_To__c.fields.T_D_Notes__c;
		f = Invoice__c.fields.Name;
		f = Invoice__c.fields.Opportunity__c;
		f = Invoice__c.fields.Item_1__c;
		f = Invoice__c.fields.Invoice_Date__c;
		f = Invoice__c.fields.INVOICE_STATUS__c;
		f = Invoice__c.fields.Payment_Made__c;
		f = Case.fields.CaseNumber;
		f = Case.fields.Subject;
		f = Case.fields.Priority;
		f = Case.fields.CreatedDate;
		f = Case.fields.Status;
		f = Twilio_Call_Log__c.fields.Name;
		f = Twilio_Call_Log__c.fields.Call_Duration__c;
		f = Twilio_Call_Log__c.fields.Call_From_N__c;
		f = Twilio_Call_Log__c.fields.Call_To_N__c;
		f = Twilio_Call_Log__c.fields.Recording_URL__c;
		f = Twilio_Call_Log__c.fields.CreatedDate;
		f = File_Article__c.fields.Name;

		List<RecordTypeInfo> recordTypes;
		FilterMetadataResult filterResult;
		List<RecordType> recordTypeRecords_Contact = [SELECT Id, DeveloperName, NamespacePrefix FROM RecordType WHERE SobjectType = 'Contact'];
		Map<Id, RecordType> recordTypeMap_Contact = new Map<Id, RecordType>(recordTypeRecords_Contact);
		List<RecordType> availableRecordTypes_Contact = new List<RecordType>();
		recordTypes = SObjectType.Contact.getRecordTypeInfos();

		for (RecordTypeInfo t: recordTypes) {
			if (t.isDefaultRecordTypeMapping()) {
				defaultRecordTypeId_Contact = t.getRecordTypeId();
			}
			if (t.isAvailable()) {
				RecordType rtype = recordTypeMap_Contact.get(t.getRecordTypeId());
				if (rtype != null) {
					availableRecordTypes_Contact.add(rtype);
				}
			}
		}
		recordTypeRecordsJSON_Contact = System.JSON.serialize(availableRecordTypes_Contact);
		filterResult = filterMetadataJSON(
			System.JSON.deserializeUntyped('{"CustomObject":{"recordTypes":[]}}'),
			recordTypeFullNames(availableRecordTypes_Contact),
			Contact.SObjectType
		);
		metadataJSON_Contact = System.JSON.serialize(filterResult.data);
		picklistValuesJSON_Contact_Rquirement_Type_c = System.JSON.serialize(filterPricklistEntries(Contact.SObjectType.Rquirement_Type__c.getDescribe(), filterResult));
		picklistValuesJSON_Contact_Rented_Dealer_Category_c = System.JSON.serialize(filterPricklistEntries(Contact.SObjectType.Rented_Dealer_Category__c.getDescribe(), filterResult));
		picklistValuesJSON_Contact_Dealer_Closeness_c = System.JSON.serialize(filterPricklistEntries(Contact.SObjectType.Dealer_Closeness__c.getDescribe(), filterResult));
		picklistValuesJSON_Contact_INV_Property_Type_c = System.JSON.serialize(filterPricklistEntries(Contact.SObjectType.INV_Property_Type__c.getDescribe(), filterResult));
		picklistValuesJSON_Contact_Advance_Cheque_c = System.JSON.serialize(filterPricklistEntries(Contact.SObjectType.Advance_Cheque__c.getDescribe(), filterResult));
		try {
			mainSObjectType = Contact.SObjectType;
			setPageReferenceFactory(new PageReferenceFactory());
			
			mainQuery = new SkyEditor2.Query('Contact');
			mainQuery.addField('INV_Property_Type__c');
			mainQuery.addField('INV_Property_Sub_Type__c');
			mainQuery.addFieldAsOutput('Name');
			mainQuery.addFieldAsOutput('LastName');
			mainQuery.addFieldAsOutput('Contact__c');
			mainQuery.addFieldAsOutput('FirstName');
			mainQuery.addFieldAsOutput('Contact_Verified_Date__c');
			mainQuery.addFieldAsOutput('Salutation');
			mainQuery.addFieldAsOutput('REA_Teams__c');
			mainQuery.addFieldAsOutput('True_Caller_Name__c');
			mainQuery.addFieldAsOutput('AccountId');
			mainQuery.addFieldAsOutput('REA_SMS_GROUP__c');
			mainQuery.addFieldAsOutput('Secondary_Account__c');
			mainQuery.addFieldAsOutput('REA_COURIER_GROUP__c');
			mainQuery.addFieldAsOutput('Greeting__c');
			mainQuery.addFieldAsOutput('Title');
			mainQuery.addFieldAsOutput('HNI__c');
			mainQuery.addFieldAsOutput('Department');
			mainQuery.addFieldAsOutput('OwnerId');
			mainQuery.addFieldAsOutput('MailingCountry');
			mainQuery.addFieldAsOutput('ReportsToId');
			mainQuery.addFieldAsOutput('MailingPostalCode');
			mainQuery.addFieldAsOutput('Addl_Website__c');
			mainQuery.addFieldAsOutput('MailingState');
			mainQuery.addFieldAsOutput('Birthdate__c');
			mainQuery.addFieldAsOutput('MailingCity');
			mainQuery.addFieldAsOutput('DoNotCall');
			mainQuery.addFieldAsOutput('MailingStreet');
			mainQuery.addFieldAsOutput('Do_nor_Email__c');
			mainQuery.addFieldAsOutput('MobilePhone');
			mainQuery.addFieldAsOutput('Do_Not_SMS__c');
			mainQuery.addFieldAsOutput('Mobile_2__c');
			mainQuery.addFieldAsOutput('Do_not_Mail__c');
			mainQuery.addFieldAsOutput('Land_Line_No__c');
			mainQuery.addFieldAsOutput('Fax');
			mainQuery.addFieldAsOutput('Email');
			mainQuery.addFieldAsOutput('Share_with_Channel_Partner__c');
			mainQuery.addFieldAsOutput('Personal_Email_Id__c');
			mainQuery.addFieldAsOutput('Rana_Shared__c');
			mainQuery.addFieldAsOutput('Pradeep_Shared__c');
			mainQuery.addFieldAsOutput('Vivek_Shared__c');
			mainQuery.addFieldAsOutput('Ankur_Shared__c');
			mainQuery.addFieldAsOutput('visible_2_days__c');
			mainQuery.addFieldAsOutput('F_4_Ticket__c');
			mainQuery.addFieldAsOutput('Fill_Registration_Info__c');
			mainQuery.addFieldAsOutput('AA_Contacts_to_be_maintained__c');
			mainQuery.addFieldAsOutput('Relation__c');
			mainQuery.addFieldAsOutput('Driving_License_No__c');
			mainQuery.addFieldAsOutput('Name_of_Relation__c');
			mainQuery.addFieldAsOutput('Adhar_Card_No__c');
			mainQuery.addFieldAsOutput('Residence_Address__c');
			mainQuery.addFieldAsOutput('PAN_Card_No__c');
			mainQuery.addFieldAsOutput('ELECTION_CARD__c');
			mainQuery.addFieldAsOutput('Passport_No__c');
			mainQuery.addFieldAsOutput('Service_Tax_No__c');
			mainQuery.addFieldAsOutput('Personal_Profile_Notes__c');
			mainQuery.addFieldAsOutput('Tenant__c');
			mainQuery.addFieldAsOutput('Agent__c');
			mainQuery.addFieldAsOutput('Investor__c');
			mainQuery.addFieldAsOutput('Vendor__c');
			mainQuery.addFieldAsOutput('Vendor_Type__c');
			mainQuery.addFieldAsOutput('Vendor_Power__c');
			mainQuery.addFieldAsOutput('Create_BCR__c');
			mainQuery.addFieldAsOutput('Brand_Handling__c');
			mainQuery.addFieldAsOutput('Brand_Decision_Maker__c');
			mainQuery.addFieldAsOutput('Brand_Category__c');
			mainQuery.addFieldAsOutput('Incorrect_BCR__c');
			mainQuery.addFieldAsOutput('Brand_Handled_Sub_Category__c');
			mainQuery.addFieldAsOutput('CREATE_TENANT_RF__c');
			mainQuery.addFieldAsOutput('Min_Area__c');
			mainQuery.addFieldAsOutput('Floor_Preferred__c');
			mainQuery.addFieldAsOutput('Max_Area_Sq_Ft__c');
			mainQuery.addFieldAsOutput('Rquirement_Type__c');
			mainQuery.addFieldAsOutput('Min_Budget_Rs__c');
			mainQuery.addFieldAsOutput('Running_Restaurant_Takeover__c');
			mainQuery.addFieldAsOutput('Max_Budget__c');
			mainQuery.addFieldAsOutput('Suspect__c');
			mainQuery.addFieldAsOutput('RF_CAR_Notes__c');
			mainQuery.addFieldAsOutput('Prospect__c');
			mainQuery.addFieldAsOutput('Desperate__c');
			mainQuery.addFieldAsOutput('RF_Desperate_Updated_on__c');
			mainQuery.addFieldAsOutput('Appu_Despos__c');
			mainQuery.addFieldAsOutput('CAR_Notes_Updated_On__c');
			mainQuery.addFieldAsOutput('Rented_Dealer_Category__c');
			mainQuery.addFieldAsOutput('Agent_Area_s__c');
			mainQuery.addFieldAsOutput('Dealer_Closeness__c');
			mainQuery.addFieldAsOutput('Commercial_Leasing__c');
			mainQuery.addFieldAsOutput('Rented_Effectiveness__c');
			mainQuery.addFieldAsOutput('Commercial_Effectiveness__c');
			mainQuery.addFieldAsOutput('Dealer_Comment__c');
			mainQuery.addFieldAsOutput('Farms_Effectiveness__c');
			mainQuery.addFieldAsOutput('Dealer_Company__c');
			mainQuery.addFieldAsOutput('Deals_in_Industrial__c');
			mainQuery.addFieldAsOutput('Retail_Specialist_Dealer__c');
			mainQuery.addFieldAsOutput('Industrial_Effectiveness__c');
			mainQuery.addFieldAsOutput('Retail_Specialist_Type__c');
			mainQuery.addFieldAsOutput('Retail_Effectiveness__c');
			mainQuery.addFieldAsOutput('Rented_Financiar__c');
			mainQuery.addFieldAsOutput('Restaurant_Consultant__c');
			mainQuery.addFieldAsOutput('Rented_Investor__c');
			mainQuery.addFieldAsOutput('CREATE_INV_RF__c');
			mainQuery.addFieldAsOutput('Min_Area_Req_Sq_Ft__c');
			mainQuery.addFieldAsOutput('Max_Area_Req_Sq_Ft__c');
			mainQuery.addFieldAsOutput('INV_Desperate__c');
			mainQuery.addFieldAsOutput('INV_Min_Budget__c');
			mainQuery.addFieldAsOutput('INV_Prospect__c');
			mainQuery.addFieldAsOutput('INV_Max_Budget__c');
			mainQuery.addFieldAsOutput('Plot_Area_Req_Min__c');
			mainQuery.addFieldAsOutput('INV_CAR_Notes__c');
			mainQuery.addFieldAsOutput('Plot_Area_Req_Max__c');
			mainQuery.addFieldAsOutput('Advance_Cheque__c');
			mainQuery.addFieldAsOutput('INV_Desperate_Updated_On__c');
			mainQuery.addFieldAsOutput('ROI__c');
			mainQuery.addFieldAsOutput('INV_CAR_Notes_Updated_On__c');
			mainQuery.addFieldAsOutput('No_of_Bedrooms__c');
			mainQuery.addFieldAsOutput('REA_Notes__c');
			mainQuery.addWhere('Id', mainRecord.Id, SkyEditor2.WhereOperator.Eq)
				.limitRecords(1);
			
			
			
			mode = SkyEditor2.LayoutMode.LayoutSalesforce; 
			
			queryMap = new Map<String, SkyEditor2.Query>();
			SkyEditor2.Query query;
			
			Component448 = new Component448(new List<Brand_Contact_Role__c>(), new List<Component448Item>(), new List<Brand_Contact_Role__c>(), null);
			listItemHolders.put('Component448', Component448);
			query = new SkyEditor2.Query('Brand_Contact_Role__c');
			query.addFieldAsOutput('Name');
			query.addFieldAsOutput('Designation__c');
			query.addFieldAsOutput('Incorrect_BCR__c');
			query.addFieldAsOutput('Brand_Category__c');
			query.addFieldAsOutput('Sub_Category__c');
			query.addFieldAsOutput('Notes__c');
			query.addWhere('Contact__c', mainRecord.Id, SkyEditor2.WhereOperator.Eq);
			relationFields.put('Component448', 'Contact__c');
			Component448.queryRelatedEvent = False;
			query.limitRecords(500);
			queryMap.put('Component448', query);
			
			Component431 = new Component431(new List<Ownership__c>(), new List<Component431Item>(), new List<Ownership__c>(), null);
			listItemHolders.put('Component431', Component431);
			query = new SkyEditor2.Query('Ownership__c');
			query.addFieldAsOutput('Name');
			query.addFieldAsOutput('Available_Spaces__c');
			query.addFieldAsOutput('UnAvailable_Space__c');
			query.addFieldAsOutput('Notes__c');
			query.addFieldAsOutput('Decision_Maker__c');
			query.addFieldAsOutput('Send_Courier_to_Both_Addresses__c');
			query.addFieldAsOutput('Courier_Above_Only__c');
			query.addFieldAsOutput('Courier_Showroom_Only__c');
			query.addWhere('Contact__c', mainRecord.Id, SkyEditor2.WhereOperator.Eq);
			relationFields.put('Component431', 'Contact__c');
			Component431.queryRelatedEvent = False;
			query.limitRecords(500);
			queryMap.put('Component431', query);
			
			Component528 = new Component528(new List<Space_Ownership__c>(), new List<Component528Item>(), new List<Space_Ownership__c>(), null);
			listItemHolders.put('Component528', Component528);
			query = new SkyEditor2.Query('Space_Ownership__c');
			query.addFieldAsOutput('Name');
			query.addFieldAsOutput('Space__c');
			query.addFieldAsOutput('Decision_Maker__c');
			query.addFieldAsOutput('Last_CPCM_Mail_Sent_on__c');
			query.addWhere('Contact__c', mainRecord.Id, SkyEditor2.WhereOperator.Eq);
			relationFields.put('Component528', 'Contact__c');
			Component528.queryRelatedEvent = False;
			query.limitRecords(500);
			queryMap.put('Component528', query);
			
			Component486 = new Component486(new List<Associate__c>(), new List<Component486Item>(), new List<Associate__c>(), null);
			listItemHolders.put('Component486', Component486);
			query = new SkyEditor2.Query('Associate__c');
			query.addFieldAsOutput('Name');
			query.addFieldAsOutput('Dealer_Market_Comment__c');
			query.addFieldAsOutput('Preferred_Associate__c');
			query.addFieldAsOutput('Direct_Deal__c');
			query.addFieldAsOutput('Disclosure__c');
			query.addFieldAsOutput('Power_Meter__c');
			query.addFieldAsOutput('CreatedDate');
			query.addWhere('Associate_Name__c', mainRecord.Id, SkyEditor2.WhereOperator.Eq);
			relationFields.put('Component486', 'Associate_Name__c');
			Component486.queryRelatedEvent = False;
			query.limitRecords(500);
			queryMap.put('Component486', query);
			
			Component412 = new Component412(new List<Requirement__c>(), new List<Component412Item>(), new List<Requirement__c>(), null);
			listItemHolders.put('Component412', Component412);
			query = new SkyEditor2.Query('Requirement__c');
			query.addFieldAsOutput('Name');
			query.addFieldAsOutput('Requirement_Age__c');
			query.addFieldAsOutput('Deal_Marketing_Notes__c');
			query.addFieldAsOutput('RecordTypeId');
			query.addWhere('Authorised_Signatory_Lessee__c', mainRecord.Id, SkyEditor2.WhereOperator.Eq);
			relationFields.put('Component412', 'Authorised_Signatory_Lessee__c');
			Component412.queryRelatedEvent = False;
			query.limitRecords(500);
			queryMap.put('Component412', query);
			
			Component458 = new Component458(new List<Shown_To__c>(), new List<Component458Item>(), new List<Shown_To__c>(), null);
			listItemHolders.put('Component458', Component458);
			query = new SkyEditor2.Query('Shown_To__c');
			query.addFieldAsOutput('Name');
			query.addFieldAsOutput('Date__c');
			query.addFieldAsOutput('Intrest_Level__c');
			query.addFieldAsOutput('Disclosed_Via__c');
			query.addFieldAsOutput('Don_t_Propose__c');
			query.addFieldAsOutput('T_D_Status__c');
			query.addFieldAsOutput('T_D_Notes__c');
			query.addWhere('Channel_Partner__c', mainRecord.Id, SkyEditor2.WhereOperator.Eq);
			relationFields.put('Component458', 'Channel_Partner__c');
			Component458.queryRelatedEvent = False;
			query.limitRecords(500);
			queryMap.put('Component458', query);
			
			Component469 = new Component469(new List<Shown_To__c>(), new List<Component469Item>(), new List<Shown_To__c>(), null);
			listItemHolders.put('Component469', Component469);
			query = new SkyEditor2.Query('Shown_To__c');
			query.addFieldAsOutput('Name');
			query.addFieldAsOutput('Date__c');
			query.addFieldAsOutput('Intrest_Level__c');
			query.addFieldAsOutput('T_D_Notes__c');
			query.addFieldAsOutput('Don_t_Propose__c');
			query.addFieldAsOutput('Disclosed_Via__c');
			query.addFieldAsOutput('T_D_Status__c');
			query.addWhere('Channel_Partner__c', mainRecord.Id, SkyEditor2.WhereOperator.Eq);
			relationFields.put('Component469', 'Channel_Partner__c');
			Component469.queryRelatedEvent = False;
			query.limitRecords(500);
			queryMap.put('Component469', query);
			
			Component538 = new Component538(new List<Invoice__c>(), new List<Component538Item>(), new List<Invoice__c>(), null);
			listItemHolders.put('Component538', Component538);
			query = new SkyEditor2.Query('Invoice__c');
			query.addFieldAsOutput('Name');
			query.addFieldAsOutput('Opportunity__c');
			query.addFieldAsOutput('Item_1__c');
			query.addFieldAsOutput('Invoice_Date__c');
			query.addFieldAsOutput('INVOICE_STATUS__c');
			query.addFieldAsOutput('Payment_Made__c');
			query.addWhere('Contact__c', mainRecord.Id, SkyEditor2.WhereOperator.Eq);
			relationFields.put('Component538', 'Contact__c');
			Component538.queryRelatedEvent = False;
			query.limitRecords(500);
			queryMap.put('Component538', query);
			
			Component502 = new Component502(new List<Case>(), new List<Component502Item>(), new List<Case>(), null);
			listItemHolders.put('Component502', Component502);
			query = new SkyEditor2.Query('Case');
			query.addFieldAsOutput('CaseNumber');
			query.addFieldAsOutput('Subject');
			query.addFieldAsOutput('Priority');
			query.addFieldAsOutput('CreatedDate');
			query.addFieldAsOutput('Status');
			query.addWhere('ContactId', mainRecord.Id, SkyEditor2.WhereOperator.Eq);
			relationFields.put('Component502', 'ContactId');
			Component502.queryRelatedEvent = False;
			query.limitRecords(500);
			queryMap.put('Component502', query);
			
			Component518 = new Component518(new List<Twilio_Call_Log__c>(), new List<Component518Item>(), new List<Twilio_Call_Log__c>(), null);
			listItemHolders.put('Component518', Component518);
			query = new SkyEditor2.Query('Twilio_Call_Log__c');
			query.addFieldAsOutput('Name');
			query.addFieldAsOutput('Call_Duration__c');
			query.addFieldAsOutput('Call_From_N__c');
			query.addFieldAsOutput('Call_To_N__c');
			query.addFieldAsOutput('Recording_URL__c');
			query.addFieldAsOutput('CreatedDate');
			query.addWhere('Called_Person__c', mainRecord.Id, SkyEditor2.WhereOperator.Eq);
			relationFields.put('Component518', 'Called_Person__c');
			Component518.queryRelatedEvent = False;
			query.limitRecords(500);
			queryMap.put('Component518', query);
			
			Component533 = new Component533(new List<File_Article__c>(), new List<Component533Item>(), new List<File_Article__c>(), null);
			listItemHolders.put('Component533', Component533);
			query = new SkyEditor2.Query('File_Article__c');
			query.addFieldAsOutput('Name');
			query.addWhere('Contact__c', mainRecord.Id, SkyEditor2.WhereOperator.Eq);
			relationFields.put('Component533', 'Contact__c');
			Component533.queryRelatedEvent = False;
			query.limitRecords(500);
			queryMap.put('Component533', query);
			
			registRelatedList('Brand_Contact_Roles__r', 'Component448');
			registRelatedList('Ownerships__r', 'Component431');
			registRelatedList('Space_Ownerships__r', 'Component528');
			registRelatedList('Associates__r', 'Component486');
			registRelatedList('Requirements_Authorised_Signatory_Lessee__r', 'Component412');
			registRelatedList('Shown_To1__r', 'Component458');
			registRelatedList('Shown_To1__r', 'Component469');
			registRelatedList('Invoices__r', 'Component538');
			registRelatedList('Cases', 'Component502');
			registRelatedList('Twilio_Call_Logs__r', 'Component518');
			registRelatedList('Files_Articles__r', 'Component533');
			
			p_showHeader = true;
			p_sidebar = true;
			init();
			
			Component448.extender = this.extender;
			Component431.extender = this.extender;
			Component528.extender = this.extender;
			Component486.extender = this.extender;
			Component412.extender = this.extender;
			Component458.extender = this.extender;
			Component469.extender = this.extender;
			Component538.extender = this.extender;
			Component502.extender = this.extender;
			Component518.extender = this.extender;
			Component533.extender = this.extender;
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

	global with sharing class Component448Item extends SkyEditor2.ListItem {
		public Brand_Contact_Role__c record{get; private set;}
		@TestVisible
		Component448Item(Component448 holder, Brand_Contact_Role__c record, SkyEditor2.RecordTypeSelector recordTypeSelector) {
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
	global with sharing  class Component448 extends SkyEditor2.ListItemHolder {
		public List<Component448Item> items{get; private set;}
		@TestVisible
			Component448(List<SObject> records, List<SkyEditor2.ListItem> items, List<SObject> deleteRecords, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(records, items, deleteRecords, recordTypeSelector);
			this.items = (List<Component448Item>)items;
		}
		global override SkyEditor2.ListItem create(SObject data) {
			return new Component448Item(this, (Brand_Contact_Role__c)data, recordTypeSelector);
		}
		public void doDeleteSelectedItems(){deleteSelectedItems();}
	}
	global with sharing class Component431Item extends SkyEditor2.ListItem {
		public Ownership__c record{get; private set;}
		@TestVisible
		Component431Item(Component431 holder, Ownership__c record, SkyEditor2.RecordTypeSelector recordTypeSelector) {
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
	global with sharing  class Component431 extends SkyEditor2.ListItemHolder {
		public List<Component431Item> items{get; private set;}
		@TestVisible
			Component431(List<SObject> records, List<SkyEditor2.ListItem> items, List<SObject> deleteRecords, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(records, items, deleteRecords, recordTypeSelector);
			this.items = (List<Component431Item>)items;
		}
		global override SkyEditor2.ListItem create(SObject data) {
			return new Component431Item(this, (Ownership__c)data, recordTypeSelector);
		}
		public void doDeleteSelectedItems(){deleteSelectedItems();}
	}
	global with sharing class Component528Item extends SkyEditor2.ListItem {
		public Space_Ownership__c record{get; private set;}
		@TestVisible
		Component528Item(Component528 holder, Space_Ownership__c record, SkyEditor2.RecordTypeSelector recordTypeSelector) {
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
	global with sharing  class Component528 extends SkyEditor2.ListItemHolder {
		public List<Component528Item> items{get; private set;}
		@TestVisible
			Component528(List<SObject> records, List<SkyEditor2.ListItem> items, List<SObject> deleteRecords, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(records, items, deleteRecords, recordTypeSelector);
			this.items = (List<Component528Item>)items;
		}
		global override SkyEditor2.ListItem create(SObject data) {
			return new Component528Item(this, (Space_Ownership__c)data, recordTypeSelector);
		}
		public void doDeleteSelectedItems(){deleteSelectedItems();}
	}
	global with sharing class Component486Item extends SkyEditor2.ListItem {
		public Associate__c record{get; private set;}
		@TestVisible
		Component486Item(Component486 holder, Associate__c record, SkyEditor2.RecordTypeSelector recordTypeSelector) {
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
	global with sharing  class Component486 extends SkyEditor2.ListItemHolder {
		public List<Component486Item> items{get; private set;}
		@TestVisible
			Component486(List<SObject> records, List<SkyEditor2.ListItem> items, List<SObject> deleteRecords, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(records, items, deleteRecords, recordTypeSelector);
			this.items = (List<Component486Item>)items;
		}
		global override SkyEditor2.ListItem create(SObject data) {
			return new Component486Item(this, (Associate__c)data, recordTypeSelector);
		}
		public void doDeleteSelectedItems(){deleteSelectedItems();}
	}
	global with sharing class Component412Item extends SkyEditor2.ListItem {
		public Requirement__c record{get; private set;}
		@TestVisible
		Component412Item(Component412 holder, Requirement__c record, SkyEditor2.RecordTypeSelector recordTypeSelector) {
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
	global with sharing  class Component412 extends SkyEditor2.ListItemHolder {
		public List<Component412Item> items{get; private set;}
		@TestVisible
			Component412(List<SObject> records, List<SkyEditor2.ListItem> items, List<SObject> deleteRecords, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(records, items, deleteRecords, recordTypeSelector);
			this.items = (List<Component412Item>)items;
		}
		global override SkyEditor2.ListItem create(SObject data) {
			return new Component412Item(this, (Requirement__c)data, recordTypeSelector);
		}
		public void doDeleteSelectedItems(){deleteSelectedItems();}
	}
	global with sharing class Component458Item extends SkyEditor2.ListItem {
		public Shown_To__c record{get; private set;}
		@TestVisible
		Component458Item(Component458 holder, Shown_To__c record, SkyEditor2.RecordTypeSelector recordTypeSelector) {
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
	global with sharing  class Component458 extends SkyEditor2.ListItemHolder {
		public List<Component458Item> items{get; private set;}
		@TestVisible
			Component458(List<SObject> records, List<SkyEditor2.ListItem> items, List<SObject> deleteRecords, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(records, items, deleteRecords, recordTypeSelector);
			this.items = (List<Component458Item>)items;
		}
		global override SkyEditor2.ListItem create(SObject data) {
			return new Component458Item(this, (Shown_To__c)data, recordTypeSelector);
		}
		public void doDeleteSelectedItems(){deleteSelectedItems();}
	}
	global with sharing class Component469Item extends SkyEditor2.ListItem {
		public Shown_To__c record{get; private set;}
		@TestVisible
		Component469Item(Component469 holder, Shown_To__c record, SkyEditor2.RecordTypeSelector recordTypeSelector) {
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
	global with sharing  class Component469 extends SkyEditor2.ListItemHolder {
		public List<Component469Item> items{get; private set;}
		@TestVisible
			Component469(List<SObject> records, List<SkyEditor2.ListItem> items, List<SObject> deleteRecords, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(records, items, deleteRecords, recordTypeSelector);
			this.items = (List<Component469Item>)items;
		}
		global override SkyEditor2.ListItem create(SObject data) {
			return new Component469Item(this, (Shown_To__c)data, recordTypeSelector);
		}
		public void doDeleteSelectedItems(){deleteSelectedItems();}
	}
	global with sharing class Component538Item extends SkyEditor2.ListItem {
		public Invoice__c record{get; private set;}
		@TestVisible
		Component538Item(Component538 holder, Invoice__c record, SkyEditor2.RecordTypeSelector recordTypeSelector) {
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
	global with sharing  class Component538 extends SkyEditor2.ListItemHolder {
		public List<Component538Item> items{get; private set;}
		@TestVisible
			Component538(List<SObject> records, List<SkyEditor2.ListItem> items, List<SObject> deleteRecords, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(records, items, deleteRecords, recordTypeSelector);
			this.items = (List<Component538Item>)items;
		}
		global override SkyEditor2.ListItem create(SObject data) {
			return new Component538Item(this, (Invoice__c)data, recordTypeSelector);
		}
		public void doDeleteSelectedItems(){deleteSelectedItems();}
	}
	global with sharing class Component502Item extends SkyEditor2.ListItem {
		public Case record{get; private set;}
		@TestVisible
		Component502Item(Component502 holder, Case record, SkyEditor2.RecordTypeSelector recordTypeSelector) {
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
	global with sharing  class Component502 extends SkyEditor2.ListItemHolder {
		public List<Component502Item> items{get; private set;}
		@TestVisible
			Component502(List<SObject> records, List<SkyEditor2.ListItem> items, List<SObject> deleteRecords, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(records, items, deleteRecords, recordTypeSelector);
			this.items = (List<Component502Item>)items;
		}
		global override SkyEditor2.ListItem create(SObject data) {
			return new Component502Item(this, (Case)data, recordTypeSelector);
		}
		public void doDeleteSelectedItems(){deleteSelectedItems();}
	}
	global with sharing class Component518Item extends SkyEditor2.ListItem {
		public Twilio_Call_Log__c record{get; private set;}
		@TestVisible
		Component518Item(Component518 holder, Twilio_Call_Log__c record, SkyEditor2.RecordTypeSelector recordTypeSelector) {
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
	global with sharing  class Component518 extends SkyEditor2.ListItemHolder {
		public List<Component518Item> items{get; private set;}
		@TestVisible
			Component518(List<SObject> records, List<SkyEditor2.ListItem> items, List<SObject> deleteRecords, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(records, items, deleteRecords, recordTypeSelector);
			this.items = (List<Component518Item>)items;
		}
		global override SkyEditor2.ListItem create(SObject data) {
			return new Component518Item(this, (Twilio_Call_Log__c)data, recordTypeSelector);
		}
		public void doDeleteSelectedItems(){deleteSelectedItems();}
	}
	global with sharing class Component533Item extends SkyEditor2.ListItem {
		public File_Article__c record{get; private set;}
		@TestVisible
		Component533Item(Component533 holder, File_Article__c record, SkyEditor2.RecordTypeSelector recordTypeSelector) {
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
	global with sharing  class Component533 extends SkyEditor2.ListItemHolder {
		public List<Component533Item> items{get; private set;}
		@TestVisible
			Component533(List<SObject> records, List<SkyEditor2.ListItem> items, List<SObject> deleteRecords, SkyEditor2.RecordTypeSelector recordTypeSelector) {
			super(records, items, deleteRecords, recordTypeSelector);
			this.items = (List<Component533Item>)items;
		}
		global override SkyEditor2.ListItem create(SObject data) {
			return new Component533Item(this, (File_Article__c)data, recordTypeSelector);
		}
		public void doDeleteSelectedItems(){deleteSelectedItems();}
	}
	public String getComponent764OptionsJS() {
		return SkyEditor2.JSON.stringify(SkyEditor2.PicklistValueSelector.getEntries(
		Contact.getSObjectType(),
		SObjectType.Contact.fields.Rquirement_Type__c.getSObjectField()
		));
		}
	public String getComponent772OptionsJS() {
		return SkyEditor2.JSON.stringify(SkyEditor2.PicklistValueSelector.getEntries(
		Contact.getSObjectType(),
		SObjectType.Contact.fields.Rented_Dealer_Category__c.getSObjectField()
		));
		}
	public String getComponent773OptionsJS() {
		return SkyEditor2.JSON.stringify(SkyEditor2.PicklistValueSelector.getEntries(
		Contact.getSObjectType(),
		SObjectType.Contact.fields.Dealer_Closeness__c.getSObjectField()
		));
		}
	public String getComponent863OptionsJS() {
		return SkyEditor2.JSON.stringify(SkyEditor2.PicklistValueSelector.getEntries(
		Contact.getSObjectType(),
		SObjectType.Contact.fields.INV_Property_Type__c.getSObjectField()
		));
		}
	public String getComponent796OptionsJS() {
		return SkyEditor2.JSON.stringify(SkyEditor2.PicklistValueSelector.getEntries(
		Contact.getSObjectType(),
		SObjectType.Contact.fields.Advance_Cheque__c.getSObjectField()
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