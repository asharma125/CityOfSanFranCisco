@isTest
private with sharing class rented_vivek_layoutTest{
	private static testMethod void testPageMethods() {		rented_vivek_layout extension = new rented_vivek_layout(new ApexPages.StandardController(new Property__c()));
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
	private static testMethod void testComponent267() {
		rented_vivek_layout.Component267 Component267 = new rented_vivek_layout.Component267(new List<Ownership__c>(), new List<rented_vivek_layout.Component267Item>(), new List<Ownership__c>(), null);
		Component267.create(new Ownership__c());
		System.assert(true);
	}
	
	private static testMethod void testComponent319() {
		rented_vivek_layout.Component319 Component319 = new rented_vivek_layout.Component319(new List<Requirement__c>(), new List<rented_vivek_layout.Component319Item>(), new List<Requirement__c>(), null);
		Component319.create(new Requirement__c());
		System.assert(true);
	}
	
	private static testMethod void testComponent311() {
		rented_vivek_layout.Component311 Component311 = new rented_vivek_layout.Component311(new List<Shown_To__c>(), new List<rented_vivek_layout.Component311Item>(), new List<Shown_To__c>(), null);
		Component311.create(new Shown_To__c());
		System.assert(true);
	}
	
	private static testMethod void testComponent283() {
		rented_vivek_layout.Component283 Component283 = new rented_vivek_layout.Component283(new List<Associate__c>(), new List<rented_vivek_layout.Component283Item>(), new List<Associate__c>(), null);
		Component283.create(new Associate__c());
		System.assert(true);
	}
	
}