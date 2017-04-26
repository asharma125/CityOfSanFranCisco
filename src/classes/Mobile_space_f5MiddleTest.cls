@isTest
private with sharing class Mobile_space_f5MiddleTest{
	private static testMethod void testPageMethods() {		Mobile_space_f5Middle extension = new Mobile_space_f5Middle(new ApexPages.StandardController(new Space_Options__c()));
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
	private static testMethod void testComponent34() {
		Mobile_space_f5Middle.Component34 Component34 = new Mobile_space_f5Middle.Component34(new List<F_5_Report__c>(), new List<Mobile_space_f5Middle.Component34Item>(), new List<F_5_Report__c>(), null);
		Component34.create(new F_5_Report__c());
		System.assert(true);
	}
	
}