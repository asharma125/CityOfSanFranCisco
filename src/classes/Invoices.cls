global with sharing class Invoices extends SkyEditor2.SkyEditorPageBaseWithSharing {
	
	public Invoice__c record {get{return (Invoice__c)mainRecord;}}
	public with sharing class CanvasException extends Exception {}

	
	
	{
	setApiVersion(31.0);
	}
	public Invoices(ApexPages.StandardController controller) {
		super(controller);


		SObjectField f;

		f = Invoice__c.fields.INVOICE_STATUS__c;
		f = Invoice__c.fields.Bill_to_Contact_Address__c;
		f = Invoice__c.fields.Bill_to_Account_Address__c;
		f = Invoice__c.fields.Contact__c;
		f = Invoice__c.fields.Account__c;
		f = Invoice__c.fields.Billing_Address__c;
		f = Invoice__c.fields.Invoice_Date__c;
		f = Invoice__c.fields.Terms__c;
		f = Invoice__c.fields.Due_Date__c;
		f = Invoice__c.fields.Amount_1__c;
		f = Invoice__c.fields.Item_1__c;
		f = Invoice__c.fields.Description_1__c;
		f = Invoice__c.fields.Item_2__c;
		f = Invoice__c.fields.Description_2__c;
		f = Invoice__c.fields.Amount_2__c;
		f = Invoice__c.fields.Sub_Total__c;
		f = Invoice__c.fields.Total_Service_Tax_Amount__c;
		f = Invoice__c.fields.Service_Tax__c;
		f = Invoice__c.fields.Sub_Total_Incl_Service_Tax__c;
		f = Invoice__c.fields.Late_Fee__c;
		f = Invoice__c.fields.Payment_Made__c;
		f = Invoice__c.fields.Total__c;
		f = Invoice__c.fields.TDS_Deducted__c;
		f = Invoice__c.fields.TDS_Deducted_Percent__c;
		f = Invoice__c.fields.INV_No__c;

		List<RecordTypeInfo> recordTypes;
		try {
			mainSObjectType = Invoice__c.SObjectType;
			setPageReferenceFactory(new PageReferenceFactory());
			
			mainQuery = new SkyEditor2.Query('Invoice__c');
			mainQuery.addField('INVOICE_STATUS__c');
			mainQuery.addField('Bill_to_Contact_Address__c');
			mainQuery.addField('Bill_to_Account_Address__c');
			mainQuery.addField('Contact__c');
			mainQuery.addField('Account__c');
			mainQuery.addField('Billing_Address__c');
			mainQuery.addField('Invoice_Date__c');
			mainQuery.addField('Terms__c');
			mainQuery.addField('Due_Date__c');
			mainQuery.addField('Amount_1__c');
			mainQuery.addField('Item_1__c');
			mainQuery.addField('Description_1__c');
			mainQuery.addField('Item_2__c');
			mainQuery.addField('Description_2__c');
			mainQuery.addField('Amount_2__c');
			mainQuery.addField('Service_Tax__c');
			mainQuery.addField('Late_Fee__c');
			mainQuery.addField('Payment_Made__c');
			mainQuery.addField('TDS_Deducted__c');
			mainQuery.addField('TDS_Deducted_Percent__c');
			mainQuery.addFieldAsOutput('Name');
			mainQuery.addFieldAsOutput('Amount_1__c');
			mainQuery.addFieldAsOutput('Amount_2__c');
			mainQuery.addFieldAsOutput('Sub_Total__c');
			mainQuery.addFieldAsOutput('Total_Service_Tax_Amount__c');
			mainQuery.addFieldAsOutput('Sub_Total_Incl_Service_Tax__c');
			mainQuery.addFieldAsOutput('Total__c');
			mainQuery.addFieldAsOutput('INV_No__c');
			mainQuery.addWhere('Id', mainRecord.Id, SkyEditor2.WhereOperator.Eq)
				.limitRecords(1);
			
			
			
			mode = SkyEditor2.LayoutMode.LayoutFree; 
			
			queryMap = new Map<String, SkyEditor2.Query>();
			SkyEditor2.Query query;
			
			
			p_showHeader = true;
			p_sidebar = true;
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