global with sharing class Acres_99_Fill_up_form extends SkyEditor2.SkyEditorPageBaseWithSharing {
	
	public Property__c record {get{return (Property__c)mainRecord;}}
	public with sharing class CanvasException extends Exception {}

	public Boolean Component122_rendered {get{ return record.Rented__c==true;}}
	
	
	{
	setApiVersion(31.0);
	}
	public Acres_99_Fill_up_form(ApexPages.StandardController controller) {
		super(controller);


		SObjectField f;

		f = Property__c.fields.Tenant_Sale__c;
		f = Property__c.fields.Send_to_Website__c;
		f = Property__c.fields.For_Sale__c;
		f = Property__c.fields.Property_Name__c;
		f = Property__c.fields.Location_City_new__c;
		f = Property__c.fields.Rented__c;
		f = Property__c.fields.Property_No__c;
		f = Property__c.fields.Location_new__c;
		f = Property__c.fields.Address__c;
		f = Property__c.fields.Location_Sub_new__c;
		f = Property__c.fields.Type_of_Property__c;
		f = Property__c.fields.Property_Topic__c;
		f = Property__c.fields.Sale_Price__c;
		f = Property__c.fields.Type_of_Commercial_Residential_Property__c;
		f = Property__c.fields.Area_for_Sale__c;
		f = Property__c.fields.Transaction_Type__c;
		f = Property__c.fields.Plot_Area_Yards__c;
		f = Property__c.fields.Land_Status__c;
		f = Property__c.fields.Construction_Status__c;
		f = Property__c.fields.Possession_Handover__c;
		f = Property__c.fields.No_of_Units__c;
		f = Property__c.fields.Total_Area_on_Lease__c;
		f = Property__c.fields.Lock_In__c;
		f = Property__c.fields.Floor_Sale__c;
		f = Property__c.fields.Monthly_Rent__c;
		f = Property__c.fields.Lease_Date__c;
		f = Property__c.fields.Built_Up_Area__c;
		f = Property__c.fields.Security_Deposit__c;
		f = Property__c.fields.Lease_Tenure__c;
		f = Property__c.fields.ROI__c;
		f = Property__c.fields.Rent_Escalation__c;
		f = Property__c.fields.May_Settle_Sale_Price__c;
		f = Property__c.fields.Sale_Remarks__c;
		f = Property__c.fields.Budget_Suits__c;
		f = Property__c.fields.Rented_Remarks__c;
		f = Property__c.fields.Area_Suits__c;
		f = Property__c.fields.ROI_Calculator_Link__c;

		List<RecordTypeInfo> recordTypes;
		try {
			mainSObjectType = Property__c.SObjectType;
			setPageReferenceFactory(new PageReferenceFactory());
			
			mainQuery = new SkyEditor2.Query('Property__c');
			mainQuery.addField('Tenant_Sale__c');
			mainQuery.addField('Send_to_Website__c');
			mainQuery.addField('For_Sale__c');
			mainQuery.addField('Property_Name__c');
			mainQuery.addField('Location_City_new__c');
			mainQuery.addField('Rented__c');
			mainQuery.addField('Property_No__c');
			mainQuery.addField('Location_new__c');
			mainQuery.addField('Address__c');
			mainQuery.addField('Location_Sub_new__c');
			mainQuery.addField('Type_of_Property__c');
			mainQuery.addField('Property_Topic__c');
			mainQuery.addField('Sale_Price__c');
			mainQuery.addField('Type_of_Commercial_Residential_Property__c');
			mainQuery.addField('Area_for_Sale__c');
			mainQuery.addField('Transaction_Type__c');
			mainQuery.addField('Plot_Area_Yards__c');
			mainQuery.addField('Land_Status__c');
			mainQuery.addField('Construction_Status__c');
			mainQuery.addField('Possession_Handover__c');
			mainQuery.addField('No_of_Units__c');
			mainQuery.addField('Total_Area_on_Lease__c');
			mainQuery.addField('Lock_In__c');
			mainQuery.addField('Floor_Sale__c');
			mainQuery.addField('Monthly_Rent__c');
			mainQuery.addField('Lease_Date__c');
			mainQuery.addField('Built_Up_Area__c');
			mainQuery.addField('Security_Deposit__c');
			mainQuery.addField('Lease_Tenure__c');
			mainQuery.addField('ROI__c');
			mainQuery.addField('Rent_Escalation__c');
			mainQuery.addField('May_Settle_Sale_Price__c');
			mainQuery.addField('Sale_Remarks__c');
			mainQuery.addField('Budget_Suits__c');
			mainQuery.addField('Rented_Remarks__c');
			mainQuery.addField('Area_Suits__c');
			mainQuery.addFieldAsOutput('Name');
			mainQuery.addFieldAsOutput('RecordTypeId');
			mainQuery.addFieldAsOutput('ROI_Calculator_Link__c');
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
				
				record.Send_to_Website__c = true;
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