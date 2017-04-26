@isTest
private with sharing class Contact_Detail_PageTest{
	private static testMethod void testPageMethods() {		Contact_Detail_Page extension = new Contact_Detail_Page(new ApexPages.StandardController(new Contact()));
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
	private static testMethod void testComponent412() {
		Contact_Detail_Page.Component412 Component412 = new Contact_Detail_Page.Component412(new List<Requirement__c>(), new List<Contact_Detail_Page.Component412Item>(), new List<Requirement__c>(), null);
		Component412.create(new Requirement__c());
		System.assert(true);
	}
	
	private static testMethod void testComponent431() {
		Contact_Detail_Page.Component431 Component431 = new Contact_Detail_Page.Component431(new List<Ownership__c>(), new List<Contact_Detail_Page.Component431Item>(), new List<Ownership__c>(), null);
		Component431.create(new Ownership__c());
		System.assert(true);
	}
	
	private static testMethod void testComponent448() {
		Contact_Detail_Page.Component448 Component448 = new Contact_Detail_Page.Component448(new List<Brand_Contact_Role__c>(), new List<Contact_Detail_Page.Component448Item>(), new List<Brand_Contact_Role__c>(), null);
		Component448.create(new Brand_Contact_Role__c());
		System.assert(true);
	}
	
	private static testMethod void testComponent458() {
		Contact_Detail_Page.Component458 Component458 = new Contact_Detail_Page.Component458(new List<Shown_To__c>(), new List<Contact_Detail_Page.Component458Item>(), new List<Shown_To__c>(), null);
		Component458.create(new Shown_To__c());
		System.assert(true);
	}
	
	private static testMethod void testComponent469() {
		Contact_Detail_Page.Component469 Component469 = new Contact_Detail_Page.Component469(new List<Shown_To__c>(), new List<Contact_Detail_Page.Component469Item>(), new List<Shown_To__c>(), null);
		Component469.create(new Shown_To__c());
		System.assert(true);
	}
	
	private static testMethod void testComponent486() {
		Contact_Detail_Page.Component486 Component486 = new Contact_Detail_Page.Component486(new List<Associate__c>(), new List<Contact_Detail_Page.Component486Item>(), new List<Associate__c>(), null);
		Component486.create(new Associate__c());
		System.assert(true);
	}
	
}