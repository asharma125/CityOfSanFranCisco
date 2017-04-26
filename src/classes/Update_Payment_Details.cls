global with sharing class Update_Payment_Details extends SkyEditor2.SkyEditorPageBaseWithSharing {
	
	public Invoice__c record {get{return (Invoice__c)mainRecord;}}
	public with sharing class CanvasException extends Exception {}

	
	
	{
	setApiVersion(31.0);
	}
	public Update_Payment_Details(ApexPages.StandardController controller) {
		super(controller);


		SObjectField f;

		f = Invoice__c.fields.Payment_Recieved_Details__c;
		f = Invoice__c.fields.Name;
		f = Invoice__c.fields.TDS_Deducted__c;
		f = Invoice__c.fields.Invoice_No__c;
		f = Invoice__c.fields.TDS_Deducted_Percent__c;
		f = Invoice__c.fields.Opportunity__c;
		f = Invoice__c.fields.Payment_Recieved_History__c;
		f = Invoice__c.fields.Account__c;
		f = Invoice__c.fields.OwnerId;
		f = Invoice__c.fields.Contact__c;
		f = Invoice__c.fields.Payment_Made__c;
		f = Invoice__c.fields.Payment_Recieved__c;
		f = Invoice__c.fields.Total__c;
		f = Invoice__c.fields.TDS_Amount__c;

		List<RecordTypeInfo> recordTypes;
		try {
			mainSObjectType = Invoice__c.SObjectType;
			setPageReferenceFactory(new PageReferenceFactory());
			
			mainQuery = new SkyEditor2.Query('Invoice__c');
			mainQuery.addField('Payment_Recieved_Details__c');
			mainQuery.addField('TDS_Deducted__c');
			mainQuery.addField('TDS_Deducted_Percent__c');
			mainQuery.addField('Payment_Recieved__c');
			mainQuery.addFieldAsOutput('Name');
			mainQuery.addFieldAsOutput('Invoice_No__c');
			mainQuery.addFieldAsOutput('Opportunity__c');
			mainQuery.addFieldAsOutput('Payment_Recieved_History__c');
			mainQuery.addFieldAsOutput('Account__c');
			mainQuery.addFieldAsOutput('OwnerId');
			mainQuery.addFieldAsOutput('Contact__c');
			mainQuery.addFieldAsOutput('Payment_Made__c');
			mainQuery.addFieldAsOutput('Total__c');
			mainQuery.addFieldAsOutput('TDS_Amount__c');
			mainQuery.addWhere('Id', mainRecord.Id, SkyEditor2.WhereOperator.Eq)
				.limitRecords(1);
			
			
			
			mode = SkyEditor2.LayoutMode.LayoutSalesforce; 
			
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