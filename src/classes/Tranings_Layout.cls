global with sharing class Tranings_Layout extends SkyEditor2.SkyEditorPageBaseWithSharing {
	
	public Trainings__c record {get{return (Trainings__c)mainRecord;}}
	public with sharing class CanvasException extends Exception {}

	
	
	{
	setApiVersion(31.0);
	}
	public Tranings_Layout(ApexPages.StandardController controller) {
		super(controller);


		SObjectField f;

		f = Trainings__c.fields.Name;
		f = Trainings__c.fields.OwnerId;
		f = Trainings__c.fields.Start_Date__c;
		f = Trainings__c.fields.Training_Type__c;
		f = Trainings__c.fields.End_Date__c;
		f = Trainings__c.fields.Training_Responsibility__c;
		f = Trainings__c.fields.PT_I__c;
		f = Trainings__c.fields.Training_Suitable_for__c;
		f = Trainings__c.fields.Topic_1__c;
		f = Trainings__c.fields.Link_1__c;
		f = Trainings__c.fields.Topic_2__c;
		f = Trainings__c.fields.Link_2__c;
		f = Trainings__c.fields.Topic_3__c;
		f = Trainings__c.fields.Link_3__c;
		f = Trainings__c.fields.CreatedDate;
		f = Trainings__c.fields.LastModifiedDate;
		f = Trainings__c.fields.SystemModstamp;

		List<RecordTypeInfo> recordTypes;
		try {
			mainSObjectType = Trainings__c.SObjectType;
			setPageReferenceFactory(new PageReferenceFactory());
			
			mainQuery = new SkyEditor2.Query('Trainings__c');
			mainQuery.addField('Name');
			mainQuery.addField('OwnerId');
			mainQuery.addField('Start_Date__c');
			mainQuery.addField('Training_Type__c');
			mainQuery.addField('End_Date__c');
			mainQuery.addField('Training_Responsibility__c');
			mainQuery.addField('PT_I__c');
			mainQuery.addField('Training_Suitable_for__c');
			mainQuery.addField('Topic_1__c');
			mainQuery.addField('Link_1__c');
			mainQuery.addField('Topic_2__c');
			mainQuery.addField('Link_2__c');
			mainQuery.addField('Topic_3__c');
			mainQuery.addField('Link_3__c');
			mainQuery.addFieldAsOutput('CreatedDate');
			mainQuery.addFieldAsOutput('LastModifiedDate');
			mainQuery.addFieldAsOutput('SystemModstamp');
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