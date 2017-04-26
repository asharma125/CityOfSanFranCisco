global with sharing class Rntd_p1 extends SkyEditor2.SkyEditorPageBaseWithSharing {
	
	public Rented_Formula__c record {get{return (Rented_Formula__c)mainRecord;}}
	public with sharing class CanvasException extends Exception {}

	public String Total_Value {get; set;}
	
	
	{
	setApiVersion(31.0);
	}
	public Rntd_p1(ApexPages.StandardController controller) {
		super(controller);


		SObjectField f;

		f = Rented_Formula__c.fields.Rent__c;
		f = Rented_Formula__c.fields.Percentage__c;

		List<RecordTypeInfo> recordTypes;
		try {
			mainSObjectType = Rented_Formula__c.SObjectType;
			setPageReferenceFactory(new PageReferenceFactory());
			
			mainQuery = new SkyEditor2.Query('Rented_Formula__c');
			mainQuery.addField('Rent__c');
			mainQuery.addField('Percentage__c');
			mainQuery.addFieldAsOutput('Name');
			mainQuery.addWhere('Id', mainRecord.Id, SkyEditor2.WhereOperator.Eq)
				.limitRecords(1);
			
			
			
			mode = SkyEditor2.LayoutMode.LayoutFree; 
			
			queryMap = new Map<String, SkyEditor2.Query>();
			SkyEditor2.Query query;
			
			
			p_showHeader = false;
			p_sidebar = false;
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