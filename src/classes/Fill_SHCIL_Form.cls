global with sharing class Fill_SHCIL_Form extends SkyEditor2.SkyEditorPageBaseWithSharing {
	
	public SHCIL_Form__c record {get{return (SHCIL_Form__c)mainRecord;}}
	public with sharing class CanvasException extends Exception {}

	
	
	{
	setApiVersion(31.0);
	}
	public Fill_SHCIL_Form(ApexPages.StandardController controller) {
		super(controller);


		SObjectField f;

		f = SHCIL_Form__c.fields.Registrable__c;
		f = SHCIL_Form__c.fields.Non_Registerable__c;
		f = SHCIL_Form__c.fields.Date__c;
		f = SHCIL_Form__c.fields.Service_Provided__c;
		f = SHCIL_Form__c.fields.Total_Stamp_Duty_incl_Service_Tax__c;
		f = SHCIL_Form__c.fields.Property_Details__c;
		f = SHCIL_Form__c.fields.Consideration_of_Property__c;
		f = SHCIL_Form__c.fields.First_Party__c;
		f = SHCIL_Form__c.fields.F_P_Address__c;
		f = SHCIL_Form__c.fields.PAN_Card_No_F_P__c;
		f = SHCIL_Form__c.fields.Second_Party__c;
		f = SHCIL_Form__c.fields.S_P_Address__c;
		f = SHCIL_Form__c.fields.S_P_Company_PAN_Card_No__c;
		f = SHCIL_Form__c.fields.Stamp_Duty_Paid_Party_Name__c;
		f = SHCIL_Form__c.fields.Cash__c;
		f = SHCIL_Form__c.fields.Cheque__c;
		f = SHCIL_Form__c.fields.DD__c;
		f = SHCIL_Form__c.fields.Pay_Order__c;
		f = SHCIL_Form__c.fields.NEFT__c;
		f = SHCIL_Form__c.fields.Stamp_Duty_Paid_By_F_P__c;
		f = SHCIL_Form__c.fields.Stamp_duty_Paid_By_S_P__c;
		f = SHCIL_Form__c.fields.RTGS__c;
		f = SHCIL_Form__c.fields.Account_to_Account_Transfer__c;
		f = SHCIL_Form__c.fields.Male__c;
		f = SHCIL_Form__c.fields.Female__c;
		f = SHCIL_Form__c.fields.Jointly_Paid_By_Male_Female__c;
		f = SHCIL_Form__c.fields.Others__c;
		f = SHCIL_Form__c.fields.Cash_Deposit_1000__c;
		f = SHCIL_Form__c.fields.Rs_1000_Total__c;
		f = SHCIL_Form__c.fields.Bank_Name__c;
		f = SHCIL_Form__c.fields.Branch__c;
		f = SHCIL_Form__c.fields.UTR_No__c;
		f = SHCIL_Form__c.fields.Rs_500_Total__c;
		f = SHCIL_Form__c.fields.Cash_Deposit_500__c;
		f = SHCIL_Form__c.fields.Rs_100_Total__c;
		f = SHCIL_Form__c.fields.Cash_Deposit_100__c;
		f = SHCIL_Form__c.fields.Rs_50_Total__c;
		f = SHCIL_Form__c.fields.Cash_Deposit_50__c;
		f = SHCIL_Form__c.fields.Rs_20_Total__c;
		f = SHCIL_Form__c.fields.Cash_Deposit_20__c;
		f = SHCIL_Form__c.fields.Rs_10_Total__c;
		f = SHCIL_Form__c.fields.Cash_Deposit_10__c;
		f = SHCIL_Form__c.fields.Rs_5_Total__c;
		f = SHCIL_Form__c.fields.Cash_Deposit_5__c;
		f = SHCIL_Form__c.fields.Amount_in_Words__c;
		f = SHCIL_Form__c.fields.Cash_Deposit_2__c;
		f = SHCIL_Form__c.fields.Rs_2_Total__c;
		f = SHCIL_Form__c.fields.Rs_1_Total__c;
		f = SHCIL_Form__c.fields.Cash_Deposit_1__c;
		f = SHCIL_Form__c.fields.Total_Amount__c;

		List<RecordTypeInfo> recordTypes;
		try {
			mainSObjectType = SHCIL_Form__c.SObjectType;
			setPageReferenceFactory(new PageReferenceFactory());
			
			mainQuery = new SkyEditor2.Query('SHCIL_Form__c');
			mainQuery.addField('Registrable__c');
			mainQuery.addField('Non_Registerable__c');
			mainQuery.addField('Date__c');
			mainQuery.addField('Service_Provided__c');
			mainQuery.addField('Property_Details__c');
			mainQuery.addField('Consideration_of_Property__c');
			mainQuery.addField('First_Party__c');
			mainQuery.addField('F_P_Address__c');
			mainQuery.addField('PAN_Card_No_F_P__c');
			mainQuery.addField('Second_Party__c');
			mainQuery.addField('S_P_Address__c');
			mainQuery.addField('S_P_Company_PAN_Card_No__c');
			mainQuery.addField('Stamp_Duty_Paid_Party_Name__c');
			mainQuery.addField('Cash__c');
			mainQuery.addField('Cheque__c');
			mainQuery.addField('DD__c');
			mainQuery.addField('Pay_Order__c');
			mainQuery.addField('NEFT__c');
			mainQuery.addField('Stamp_Duty_Paid_By_F_P__c');
			mainQuery.addField('Stamp_duty_Paid_By_S_P__c');
			mainQuery.addField('RTGS__c');
			mainQuery.addField('Account_to_Account_Transfer__c');
			mainQuery.addField('Male__c');
			mainQuery.addField('Female__c');
			mainQuery.addField('Jointly_Paid_By_Male_Female__c');
			mainQuery.addField('Others__c');
			mainQuery.addField('Cash_Deposit_1000__c');
			mainQuery.addField('Bank_Name__c');
			mainQuery.addField('Branch__c');
			mainQuery.addField('UTR_No__c');
			mainQuery.addField('Cash_Deposit_500__c');
			mainQuery.addField('Cash_Deposit_100__c');
			mainQuery.addField('Cash_Deposit_50__c');
			mainQuery.addField('Cash_Deposit_20__c');
			mainQuery.addField('Cash_Deposit_10__c');
			mainQuery.addField('Cash_Deposit_5__c');
			mainQuery.addField('Amount_in_Words__c');
			mainQuery.addField('Cash_Deposit_2__c');
			mainQuery.addField('Cash_Deposit_1__c');
			mainQuery.addFieldAsOutput('Name');
			mainQuery.addFieldAsOutput('Total_Stamp_Duty_incl_Service_Tax__c');
			mainQuery.addFieldAsOutput('Rs_1000_Total__c');
			mainQuery.addFieldAsOutput('Rs_500_Total__c');
			mainQuery.addFieldAsOutput('Rs_100_Total__c');
			mainQuery.addFieldAsOutput('Rs_50_Total__c');
			mainQuery.addFieldAsOutput('Rs_20_Total__c');
			mainQuery.addFieldAsOutput('Rs_10_Total__c');
			mainQuery.addFieldAsOutput('Rs_5_Total__c');
			mainQuery.addFieldAsOutput('Rs_2_Total__c');
			mainQuery.addFieldAsOutput('Rs_1_Total__c');
			mainQuery.addFieldAsOutput('Total_Amount__c');
			mainQuery.addFieldAsOutput('Stamp_Duty_Paid_By_F_P__c');
			mainQuery.addFieldAsOutput('Stamp_duty_Paid_By_S_P__c');
			mainQuery.addFieldAsOutput('Cash__c');
			mainQuery.addFieldAsOutput('Cheque__c');
			mainQuery.addFieldAsOutput('DD__c');
			mainQuery.addFieldAsOutput('Pay_Order__c');
			mainQuery.addFieldAsOutput('NEFT__c');
			mainQuery.addFieldAsOutput('RTGS__c');
			mainQuery.addFieldAsOutput('Account_to_Account_Transfer__c');
			mainQuery.addFieldAsOutput('UTR_No__c');
			mainQuery.addFieldAsOutput('Date__c');
			mainQuery.addFieldAsOutput('Bank_Name__c');
			mainQuery.addFieldAsOutput('Branch__c');
			mainQuery.addFieldAsOutput('Stamp_Duty_Paid_Party_Name__c');
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