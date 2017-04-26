global with sharing class Requirement_LOI_Details extends SkyEditor2.SkyEditorPageBaseWithSharing {
	
	public Requirement__c record {get{return (Requirement__c)mainRecord;}}
	public with sharing class CanvasException extends Exception {}

	
	
	{
	setApiVersion(31.0);
	}
	public Requirement_LOI_Details(ApexPages.StandardController controller) {
		super(controller);


		SObjectField f;

		f = Requirement__c.fields.Name;
		f = Requirement__c.fields.Contact_3__c;
		f = Requirement__c.fields.Company__c;
		f = Requirement__c.fields.Contact_4__c;
		f = Requirement__c.fields.Selected_Space__c;
		f = Requirement__c.fields.Contact_5__c;
		f = Requirement__c.fields.Contact_6__c;
		f = Requirement__c.fields.Rent_M_G__c;
		f = Requirement__c.fields.Escalation__c;
		f = Requirement__c.fields.Power_Load__c;
		f = Requirement__c.fields.Tenure_Yrs__c;
		f = Requirement__c.fields.Escalation_after_Yrs__c;
		f = Requirement__c.fields.Stamp_Duty__c;
		f = Requirement__c.fields.Security_Deposit__c;
		f = Requirement__c.fields.Lock_in__c;
		f = Requirement__c.fields.Stamp_Duty_Cheque_given_by__c;
		f = Requirement__c.fields.Lease_Commencement__c;
		f = Requirement__c.fields.Notice_Period_Months__c;
		f = Requirement__c.fields.Landlord_Consitution__c;
		f = Requirement__c.fields.Tenant_s_Constitution__c;
		f = Requirement__c.fields.Intending_Lessor__c;
		f = Requirement__c.fields.Intending_Lessee__c;
		f = Requirement__c.fields.Lessors_Address__c;
		f = Requirement__c.fields.Lessee_Address__c;
		f = Requirement__c.fields.Authorised_Signatory_Lessor__c;
		f = Requirement__c.fields.Authorised_Signatory_Lessee__c;
		f = Requirement__c.fields.Brand_Name__c;
		f = Requirement__c.fields.Property_Usage__c;
		f = Requirement__c.fields.Signage_Space__c;
		f = Requirement__c.fields.Legal_Due_Diligence_by__c;
		f = Requirement__c.fields.STRUCTURAL_MODIFICATIONS_CHANGES__c;
		f = Requirement__c.fields.Stamp_Papers_to_be_bought_by__c;
		f = Requirement__c.fields.Lease_to_be_Registered_by__c;

		List<RecordTypeInfo> recordTypes;
		try {
			mainSObjectType = Requirement__c.SObjectType;
			setPageReferenceFactory(new PageReferenceFactory());
			
			mainQuery = new SkyEditor2.Query('Requirement__c');
			mainQuery.addField('Name');
			mainQuery.addField('Contact_3__c');
			mainQuery.addField('Company__c');
			mainQuery.addField('Contact_4__c');
			mainQuery.addField('Contact_5__c');
			mainQuery.addField('Contact_6__c');
			mainQuery.addField('Escalation__c');
			mainQuery.addField('Power_Load__c');
			mainQuery.addField('Escalation_after_Yrs__c');
			mainQuery.addField('Stamp_Duty__c');
			mainQuery.addField('Security_Deposit__c');
			mainQuery.addField('Lock_in__c');
			mainQuery.addField('Stamp_Duty_Cheque_given_by__c');
			mainQuery.addField('Lease_Commencement__c');
			mainQuery.addField('Notice_Period_Months__c');
			mainQuery.addField('Tenant_s_Constitution__c');
			mainQuery.addField('Intending_Lessee__c');
			mainQuery.addField('Lessee_Address__c');
			mainQuery.addField('Authorised_Signatory_Lessee__c');
			mainQuery.addField('Brand_Name__c');
			mainQuery.addField('Property_Usage__c');
			mainQuery.addField('Signage_Space__c');
			mainQuery.addField('Legal_Due_Diligence_by__c');
			mainQuery.addField('STRUCTURAL_MODIFICATIONS_CHANGES__c');
			mainQuery.addField('Stamp_Papers_to_be_bought_by__c');
			mainQuery.addField('Lease_to_be_Registered_by__c');
			mainQuery.addFieldAsOutput('RecordTypeId');
			mainQuery.addFieldAsOutput('Selected_Space__c');
			mainQuery.addFieldAsOutput('Rent_M_G__c');
			mainQuery.addFieldAsOutput('Tenure_Yrs__c');
			mainQuery.addFieldAsOutput('Landlord_Consitution__c');
			mainQuery.addFieldAsOutput('Intending_Lessor__c');
			mainQuery.addFieldAsOutput('Lessors_Address__c');
			mainQuery.addFieldAsOutput('Authorised_Signatory_Lessor__c');
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

	with sharing class PageReferenceFactory implements SkyEditor2.PageReferenceFactory.Implementation {
		public PageReference newPageReference(String url) {
			return new PageReference(url);
		}
	}
}