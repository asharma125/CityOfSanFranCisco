global with sharing class Print_SCHIL_view extends SkyEditor2.SkyEditorPageBaseWithSharing {
	
	public SHCIL_Form__c record {get{return (SHCIL_Form__c)mainRecord;}}
	public with sharing class CanvasException extends Exception {}

	
	
	{
	setApiVersion(31.0);
	}
	public Print_SCHIL_view(ApexPages.StandardController controller) {
		super(controller);


		SObjectField f;

		f = SHCIL_Form__c.fields.Service_Provided__c;
		f = SHCIL_Form__c.fields.Total_Stamp_Duty_incl_Service_Tax__c;
		f = SHCIL_Form__c.fields.First_Party__c;
		f = SHCIL_Form__c.fields.F_P_Address__c;
		f = SHCIL_Form__c.fields.PAN_Card_No_F_P__c;
		f = SHCIL_Form__c.fields.Second_Party__c;
		f = SHCIL_Form__c.fields.S_P_Address__c;
		f = SHCIL_Form__c.fields.S_P_Company_PAN_Card_No__c;
		f = SHCIL_Form__c.fields.UTR_No__c;
		f = SHCIL_Form__c.fields.Amount_in_Words__c;

		List<RecordTypeInfo> recordTypes;
		try {
			mainSObjectType = SHCIL_Form__c.SObjectType;
			setPageReferenceFactory(new PageReferenceFactory());
			
			mainQuery = new SkyEditor2.Query('SHCIL_Form__c');
			mainQuery.addFieldAsOutput('Name');
			mainQuery.addFieldAsOutput('Service_Provided__c');
			mainQuery.addFieldAsOutput('Total_Stamp_Duty_incl_Service_Tax__c');
			mainQuery.addFieldAsOutput('First_Party__c');
			mainQuery.addFieldAsOutput('F_P_Address__c');
			mainQuery.addFieldAsOutput('PAN_Card_No_F_P__c');
			mainQuery.addFieldAsOutput('Second_Party__c');
			mainQuery.addFieldAsOutput('S_P_Address__c');
			mainQuery.addFieldAsOutput('S_P_Company_PAN_Card_No__c');
			mainQuery.addFieldAsOutput('UTR_No__c');
			mainQuery.addFieldAsOutput('Amount_in_Words__c');
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
			p_pdfMargin = '';
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