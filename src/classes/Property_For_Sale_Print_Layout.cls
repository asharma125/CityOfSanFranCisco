global with sharing class Property_For_Sale_Print_Layout extends SkyEditor2.SkyEditorPageBaseWithSharing {
	
	public Property__c record {get{return (Property__c)mainRecord;}}
	public with sharing class CanvasException extends Exception {}

	public Boolean Component327_rendered {get{ return record.Rented__c==true;}}
	
	
	{
	setApiVersion(31.0);
	}
	public Property_For_Sale_Print_Layout(ApexPages.StandardController controller) {
		super(controller);


		SObjectField f;

		f = Property__c.fields.Property_Name__c;
		f = Property__c.fields.Property_Picture__c;
		f = Property__c.fields.Tenant_Sale__c;
		f = Property__c.fields.Address__c;
		f = Property__c.fields.DMD_Link__c;
		f = Property__c.fields.Location_new__c;
		f = Property__c.fields.Building_Sale__c;
		f = Property__c.fields.Sale_Price__c;
		f = Property__c.fields.Land_Status__c;
		f = Property__c.fields.Floor_Sale__c;
		f = Property__c.fields.May_Settle_Sale_Price__c;
		f = Property__c.fields.Construction_Status__c;
		f = Property__c.fields.Area_for_Sale__c;
		f = Property__c.fields.Cheque_Advance__c;
		f = Property__c.fields.Amenities__c;
		f = Property__c.fields.Built_Up_Area__c;
		f = Property__c.fields.Company_Transfer__c;
		f = Property__c.fields.Sale_Remarks__c;
		f = Property__c.fields.ROI__c;
		f = Property__c.fields.Total_Area_on_Lease__c;
		f = Property__c.fields.Rented_Remarks__c;
		f = Property__c.fields.Monthly_Rent__c;
		f = Property__c.fields.Lease_Date__c;
		f = Property__c.fields.Security_Deposit__c;
		f = Property__c.fields.Lease_Tenure__c;
		f = Property__c.fields.Rent_Escalation__c;
		f = Property__c.fields.Lock_In__c;
		f = Property__c.fields.Rented__c;

		List<RecordTypeInfo> recordTypes;
		try {
			mainSObjectType = Property__c.SObjectType;
			setPageReferenceFactory(new PageReferenceFactory());
			
			mainQuery = new SkyEditor2.Query('Property__c');
			mainQuery.addField('Company_Transfer__c');
			mainQuery.addField('Rented__c');
			mainQuery.addFieldAsOutput('Name');
			mainQuery.addFieldAsOutput('RecordTypeId');
			mainQuery.addFieldAsOutput('Property_Name__c');
			mainQuery.addFieldAsOutput('Property_Picture__c');
			mainQuery.addFieldAsOutput('Tenant_Sale__c');
			mainQuery.addFieldAsOutput('Address__c');
			mainQuery.addFieldAsOutput('DMD_Link__c');
			mainQuery.addFieldAsOutput('Location_new__c');
			mainQuery.addFieldAsOutput('Building_Sale__c');
			mainQuery.addFieldAsOutput('Sale_Price__c');
			mainQuery.addFieldAsOutput('Land_Status__c');
			mainQuery.addFieldAsOutput('Floor_Sale__c');
			mainQuery.addFieldAsOutput('May_Settle_Sale_Price__c');
			mainQuery.addFieldAsOutput('Construction_Status__c');
			mainQuery.addFieldAsOutput('Area_for_Sale__c');
			mainQuery.addFieldAsOutput('Cheque_Advance__c');
			mainQuery.addFieldAsOutput('Amenities__c');
			mainQuery.addFieldAsOutput('Built_Up_Area__c');
			mainQuery.addFieldAsOutput('Sale_Remarks__c');
			mainQuery.addFieldAsOutput('ROI__c');
			mainQuery.addFieldAsOutput('Total_Area_on_Lease__c');
			mainQuery.addFieldAsOutput('Rented_Remarks__c');
			mainQuery.addFieldAsOutput('Monthly_Rent__c');
			mainQuery.addFieldAsOutput('Lease_Date__c');
			mainQuery.addFieldAsOutput('Security_Deposit__c');
			mainQuery.addFieldAsOutput('Lease_Tenure__c');
			mainQuery.addFieldAsOutput('Rent_Escalation__c');
			mainQuery.addFieldAsOutput('Lock_In__c');
			mainQuery.addWhere('Id', mainRecord.Id, SkyEditor2.WhereOperator.Eq)
				.limitRecords(1);
			
			
			
			mode = SkyEditor2.LayoutMode.LayoutSalesforce; 
			
			queryMap = new Map<String, SkyEditor2.Query>();
			SkyEditor2.Query query;
			
			
			p_showHeader = false;
			p_sidebar = false;
			p_isPdf = true;
			p_pdfPageSize = 'A4';
			p_pdfOrientation = 'portrait';
			p_pdfMargin = '1.0cm';
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