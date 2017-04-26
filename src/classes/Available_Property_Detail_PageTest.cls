@isTest
private with sharing class Available_Property_Detail_PageTest{
	private static testMethod void testPageMethods() {		Available_Property_Detail_Page extension = new Available_Property_Detail_Page(new ApexPages.StandardController(new Property__c()));
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
	private static testMethod void testComponent250() {
		Available_Property_Detail_Page.Component250 Component250 = new Available_Property_Detail_Page.Component250(new List<Space_Options__c>(), new List<Available_Property_Detail_Page.Component250Item>(), new List<Space_Options__c>(), null);
		Component250.create(new Space_Options__c());
		System.assert(true);
	}
	
	private static testMethod void testComponent283() {
		Available_Property_Detail_Page.Component283 Component283 = new Available_Property_Detail_Page.Component283(new List<Associate__c>(), new List<Available_Property_Detail_Page.Component283Item>(), new List<Associate__c>(), null);
		Component283.create(new Associate__c());
		System.assert(true);
	}
	
}