global with sharing class Space_Detail_Page extends SkyEditor2.SkyEditorPageBaseWithSharing {
	
	public Space_Options__c record {get{return (Space_Options__c)mainRecord;}}
	public with sharing class CanvasException extends Exception {}

	
	
	{
	setApiVersion(31.0);
	}
	public Space_Detail_Page(ApexPages.StandardController controller) {
		super(controller);


		SObjectField f;

		f = Space_Options__c.fields.Name;
		f = Space_Options__c.fields.Rating__c;
		f = Space_Options__c.fields.Agreement_Type__c;
		f = Space_Options__c.fields.Property_No__c;
		f = Space_Options__c.fields.Rent_Month__c;
		f = Space_Options__c.fields.Adv_Security_months__c;
		f = Space_Options__c.fields.Covered_Area_Sq_Ft__c;
		f = Space_Options__c.fields.May_Settle_Rent__c;
		f = Space_Options__c.fields.Last_Spoken_On__c;
		f = Space_Options__c.fields.Carpet_Area__c;
		f = Space_Options__c.fields.Rent_PSF_on_Covered_Area__c;
		f = Space_Options__c.fields.Possession_Date__c;
		f = Space_Options__c.fields.Floorwise_Area__c;
		f = Space_Options__c.fields.Last_Tenant__c;
		f = Space_Options__c.fields.Frontage_Ft__c;
		f = Space_Options__c.fields.Entry_From__c;
		f = Space_Options__c.fields.Running_Restaurant__c;
		f = Space_Options__c.fields.No_Non_Veg__c;
		f = Space_Options__c.fields.Genset_Space__c;
		f = Space_Options__c.fields.Space_Feel__c;
		f = Space_Options__c.fields.Brand_Has_Bar__c;
		f = Space_Options__c.fields.Back_Entrance__c;
		f = Space_Options__c.fields.Genset_Load_KVA_K_Watt__c;
		f = Space_Options__c.fields.Stair_Evaluation_Remarks__c;
		f = Space_Options__c.fields.Bar_Not_Allowed__c;
		f = Space_Options__c.fields.Water_Tank__c;
		f = Space_Options__c.fields.Space_Notes_Lease__c;
		f = Space_Options__c.fields.Client_Remarks_Lease__c;

		List<RecordTypeInfo> recordTypes;
		try {
			mainSObjectType = Space_Options__c.SObjectType;
			setPageReferenceFactory(new PageReferenceFactory());
			
			mainQuery = new SkyEditor2.Query('Space_Options__c');
			mainQuery.addField('Name');
			mainQuery.addField('Rating__c');
			mainQuery.addField('Agreement_Type__c');
			mainQuery.addField('Rent_Month__c');
			mainQuery.addField('Adv_Security_months__c');
			mainQuery.addField('Covered_Area_Sq_Ft__c');
			mainQuery.addField('May_Settle_Rent__c');
			mainQuery.addField('Last_Spoken_On__c');
			mainQuery.addField('Carpet_Area__c');
			mainQuery.addField('Possession_Date__c');
			mainQuery.addField('Floorwise_Area__c');
			mainQuery.addField('Last_Tenant__c');
			mainQuery.addField('Frontage_Ft__c');
			mainQuery.addField('Entry_From__c');
			mainQuery.addField('Running_Restaurant__c');
			mainQuery.addField('No_Non_Veg__c');
			mainQuery.addField('Genset_Space__c');
			mainQuery.addField('Space_Feel__c');
			mainQuery.addField('Brand_Has_Bar__c');
			mainQuery.addField('Back_Entrance__c');
			mainQuery.addField('Genset_Load_KVA_K_Watt__c');
			mainQuery.addField('Stair_Evaluation_Remarks__c');
			mainQuery.addField('Bar_Not_Allowed__c');
			mainQuery.addField('Water_Tank__c');
			mainQuery.addField('Space_Notes_Lease__c');
			mainQuery.addField('Client_Remarks_Lease__c');
			mainQuery.addFieldAsOutput('RecordTypeId');
			mainQuery.addFieldAsOutput('Property_No__c');
			mainQuery.addFieldAsOutput('Rent_PSF_on_Covered_Area__c');
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