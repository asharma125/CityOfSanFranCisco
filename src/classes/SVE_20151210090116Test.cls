@isTest
private with sharing class SVE_20151210090116Test{
	private static testMethod void testPageMethods() {		SVE_20151210090116 extension = new SVE_20151210090116(new ApexPages.StandardController(new PT_I__c()));
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
	private static testMethod void testComponent72() {
		SVE_20151210090116.Component72 Component72 = new SVE_20151210090116.Component72(new List<Solution>(), new List<SVE_20151210090116.Component72Item>(), new List<Solution>(), null);
		Component72.create(new Solution());
		System.assert(true);
	}
	
	private static testMethod void testComponent82() {
		SVE_20151210090116.Component82 Component82 = new SVE_20151210090116.Component82(new List<Case>(), new List<SVE_20151210090116.Component82Item>(), new List<Case>(), null);
		Component82.create(new Case());
		System.assert(true);
	}
	
}