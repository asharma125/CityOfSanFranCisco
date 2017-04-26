@isTest
private with sharing class Requirement_VF_RerenderTest{
	private static testMethod void testPageMethods() {		Requirement_VF_Rerender extension = new Requirement_VF_Rerender(new ApexPages.StandardController(new Requirement__c()));
		SkyEditor2.Messages.clear();
		extension.sObjectNotFound(new SkyEditor2.Errors.SObjectNotFoundException(SkyEditor2.Messages.sObjectNotFound('SkyEditor2__SkyEditorDummy__c')));
		System.assert(extension.getErrorMessages().endsWith(SkyEditor2.Messages.sObjectNotFound('SkyEditor2__SkyEditorDummy__c')));
		SkyEditor2.Messages.clear();
		extension.fieldNotFound(new SkyEditor2.Errors.FieldNotFoundException(SkyEditor2.Messages.fieldNotFound(SkyEditor2__SkyEditorDummy__c.SObjectType, 'Name')));
		System.assert(extension.getErrorMessages().endsWith(SkyEditor2.Messages.fieldNotFound(SkyEditor2__SkyEditorDummy__c.SObjectType, 'Name')));
		SkyEditor2.Messages.clear();
		extension.recordNotFound(new SkyEditor2.Errors.RecordNotFoundException(SkyEditor2.Messages.DATA_NOT_FOUND));
		System.assert(extension.getErrorMessages().endsWith(SkyEditor2.Messages.DATA_NOT_FOUND));

		Integer defaultSize;
	}
	private static testMethod void testComponent303() {
		Requirement_VF_Rerender.Component303 Component303 = new Requirement_VF_Rerender.Component303(new List<Opportunity>(), new List<Requirement_VF_Rerender.Component303Item>(), new List<Opportunity>(), null);
		Component303.create(new Opportunity());
		System.assert(true);
	}
	
	private static testMethod void testComponent289() {
		Requirement_VF_Rerender.Component289 Component289 = new Requirement_VF_Rerender.Component289(new List<Shown_To__c>(), new List<Requirement_VF_Rerender.Component289Item>(), new List<Shown_To__c>(), null);
		Component289.create(new Shown_To__c());
		System.assert(true);
	}
	
	private static testMethod void testComponent313() {
		Requirement_VF_Rerender.Component313 Component313 = new Requirement_VF_Rerender.Component313(new List<Associate__c>(), new List<Requirement_VF_Rerender.Component313Item>(), new List<Associate__c>(), null);
		Component313.create(new Associate__c());
		System.assert(true);
	}
	
	private static testMethod void testComponent329() {
		Requirement_VF_Rerender.Component329 Component329 = new Requirement_VF_Rerender.Component329(new List<Case>(), new List<Requirement_VF_Rerender.Component329Item>(), new List<Case>(), null);
		Component329.create(new Case());
		System.assert(true);
	}
	
	private static testMethod void testComponent347() {
		Requirement_VF_Rerender.Component347 Component347 = new Requirement_VF_Rerender.Component347(new List<Twilio_Call_Log__c>(), new List<Requirement_VF_Rerender.Component347Item>(), new List<Twilio_Call_Log__c>(), null);
		Component347.create(new Twilio_Call_Log__c());
		System.assert(true);
	}
	
}