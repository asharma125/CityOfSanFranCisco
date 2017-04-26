global with sharing class Space_Print_Layout extends SkyEditor2.SkyEditorPageBaseWithSharing {
	
	public Space_Options__c record {get{return (Space_Options__c)mainRecord;}}
	public with sharing class CanvasException extends Exception {}

	
	
	{
	setApiVersion(31.0);
	}
	public Space_Print_Layout(ApexPages.StandardController controller) {
		super(controller);


		SObjectField f;

		f = Space_Options__c.fields.Name;
		f = Space_Options__c.fields.Running_Restaurant__c;
		f = Space_Options__c.fields.Property_No__c;
		f = Space_Options__c.fields.Brand_Has_Bar__c;
		f = Space_Options__c.fields.Covered_Area_Sq_Ft__c;
		f = Space_Options__c.fields.Agreement_Type__c;
		f = Space_Options__c.fields.Carpet_Area__c;
		f = Space_Options__c.fields.Adv_Security_months__c;
		f = Space_Options__c.fields.Floorwise_Area__c;
		f = Space_Options__c.fields.Possession_Date__c;
		f = Space_Options__c.fields.Rent_Month__c;
		f = Space_Options__c.fields.May_Settle_Rent__c;
		f = Space_Options__c.fields.Frontage_Ft__c;
		f = Space_Options__c.fields.Entry_From__c;
		f = Space_Options__c.fields.Space_Notes_Lease__c;
		f = Space_Options__c.fields.Client_Remarks_Lease__c;

		List<RecordTypeInfo> recordTypes;
		try {
			mainSObjectType = Space_Options__c.SObjectType;
			setPageReferenceFactory(new PageReferenceFactory());
			
			mainQuery = new SkyEditor2.Query('Space_Options__c');
			mainQuery.addFieldAsOutput('RecordTypeId');
			mainQuery.addFieldAsOutput('Name');
			mainQuery.addFieldAsOutput('Running_Restaurant__c');
			mainQuery.addFieldAsOutput('Property_No__c');
			mainQuery.addFieldAsOutput('Brand_Has_Bar__c');
			mainQuery.addFieldAsOutput('Covered_Area_Sq_Ft__c');
			mainQuery.addFieldAsOutput('Agreement_Type__c');
			mainQuery.addFieldAsOutput('Carpet_Area__c');
			mainQuery.addFieldAsOutput('Adv_Security_months__c');
			mainQuery.addFieldAsOutput('Floorwise_Area__c');
			mainQuery.addFieldAsOutput('Possession_Date__c');
			mainQuery.addFieldAsOutput('Rent_Month__c');
			mainQuery.addFieldAsOutput('May_Settle_Rent__c');
			mainQuery.addFieldAsOutput('Frontage_Ft__c');
			mainQuery.addFieldAsOutput('Entry_From__c');
			mainQuery.addFieldAsOutput('Space_Notes_Lease__c');
			mainQuery.addFieldAsOutput('Client_Remarks_Lease__c');
			mainQuery.addWhere('Id', mainRecord.Id, SkyEditor2.WhereOperator.Eq)
				.limitRecords(1);
			
			
			
			mode = SkyEditor2.LayoutMode.LayoutSalesforce; 
			
			queryMap = new Map<String, SkyEditor2.Query>();
			SkyEditor2.Query query;
			
			
			p_showHeader = true;
			p_sidebar = true;
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