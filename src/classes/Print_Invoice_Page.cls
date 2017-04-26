global with sharing class Print_Invoice_Page extends SkyEditor2.SkyEditorPageBaseWithSharing {
	
	public Invoice__c record {get{return (Invoice__c)mainRecord;}}
	public with sharing class CanvasException extends Exception {}

	
	
	{
	setApiVersion(31.0);
	}
	public Print_Invoice_Page(ApexPages.StandardController controller) {
		super(controller);


		SObjectField f;

		f = Invoice__c.fields.INV_No__c;
		f = Invoice__c.fields.Billed_to_Contact_Name__c;
		f = Invoice__c.fields.Account__c;
		f = Invoice__c.fields.Billing_Address__c;
		f = Invoice__c.fields.Invoice_Date__c;
		f = Invoice__c.fields.Terms__c;
		f = Invoice__c.fields.Due_Date__c;
		f = Invoice__c.fields.Item_1__c;
		f = Invoice__c.fields.Description_1__c;
		f = Invoice__c.fields.Amount_1__c;
		f = Invoice__c.fields.Item_2__c;
		f = Invoice__c.fields.Description_2__c;
		f = Invoice__c.fields.Amount_2__c;
		f = Invoice__c.fields.Sub_Total__c;
		f = Invoice__c.fields.Total_Service_Tax_Amount__c;
		f = Invoice__c.fields.Service_Tax__c;
		f = Invoice__c.fields.Sub_Total_Incl_Service_Tax__c;
		f = Invoice__c.fields.Late_Fee__c;
		f = Invoice__c.fields.Payment_Made__c;
		f = Invoice__c.fields.TDS_Amount__c;
		f = Invoice__c.fields.Total__c;

		List<RecordTypeInfo> recordTypes;
		try {
			mainSObjectType = Invoice__c.SObjectType;
			setPageReferenceFactory(new PageReferenceFactory());
			
			mainQuery = new SkyEditor2.Query('Invoice__c');
			mainQuery.addField('Description_1__c');
			mainQuery.addField('Description_2__c');
			mainQuery.addFieldAsOutput('Name');
			mainQuery.addFieldAsOutput('INV_No__c');
			mainQuery.addFieldAsOutput('Billed_to_Contact_Name__c');
			mainQuery.addFieldAsOutput('Account__c');
			mainQuery.addFieldAsOutput('Billing_Address__c');
			mainQuery.addFieldAsOutput('Invoice_Date__c');
			mainQuery.addFieldAsOutput('Terms__c');
			mainQuery.addFieldAsOutput('Due_Date__c');
			mainQuery.addFieldAsOutput('Item_1__c');
			mainQuery.addFieldAsOutput('Amount_1__c');
			mainQuery.addFieldAsOutput('Item_2__c');
			mainQuery.addFieldAsOutput('Amount_2__c');
			mainQuery.addFieldAsOutput('Sub_Total__c');
			mainQuery.addFieldAsOutput('Total_Service_Tax_Amount__c');
			mainQuery.addFieldAsOutput('Service_Tax__c');
			mainQuery.addFieldAsOutput('Sub_Total_Incl_Service_Tax__c');
			mainQuery.addFieldAsOutput('Late_Fee__c');
			mainQuery.addFieldAsOutput('Payment_Made__c');
			mainQuery.addFieldAsOutput('TDS_Amount__c');
			mainQuery.addFieldAsOutput('Total__c');
			mainQuery.addWhere('Id', mainRecord.Id, SkyEditor2.WhereOperator.Eq)
				.limitRecords(1);
			
			
			
			mode = SkyEditor2.LayoutMode.LayoutFree; 
			
			queryMap = new Map<String, SkyEditor2.Query>();
			SkyEditor2.Query query;
			
			
			p_showHeader = true;
			p_sidebar = true;
			p_isPdf = true;
			p_pdfPageSize = 'A4';
			p_pdfOrientation = 'portrait';
			p_pdfMargin = '0.5cm';
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