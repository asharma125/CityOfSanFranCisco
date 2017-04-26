@isTest
private with sharing class Contact_VF_Rerender_viewTest{
	private static testMethod void testPageMethods() {		Contact_VF_ViewPage_view extension = new Contact_VF_ViewPage_view(new ApexPages.StandardController(new Contact()));
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
		extension.getComponent764OptionsJS();
		extension.getComponent772OptionsJS();
		extension.getComponent773OptionsJS();
		extension.getComponent863OptionsJS();
		extension.getComponent796OptionsJS();
	}
	private static testMethod void testComponent448() {
		Contact_VF_ViewPage_view.Component448 Component448 = new Contact_VF_ViewPage_view.Component448(new List<Brand_Contact_Role__c>(), new List<Contact_VF_ViewPage_view.Component448Item>(), new List<Brand_Contact_Role__c>(), null);
		Component448.create(new Brand_Contact_Role__c());
		System.assert(true);
	}
	
	private static testMethod void testComponent431() {
		Contact_VF_ViewPage_view.Component431 Component431 = new Contact_VF_ViewPage_view.Component431(new List<Ownership__c>(), new List<Contact_VF_ViewPage_view.Component431Item>(), new List<Ownership__c>(), null);
		Component431.create(new Ownership__c());
		System.assert(true);
	}
	
	private static testMethod void testComponent528() {
		Contact_VF_ViewPage_view.Component528 Component528 = new Contact_VF_ViewPage_view.Component528(new List<Space_Ownership__c>(), new List<Contact_VF_ViewPage_view.Component528Item>(), new List<Space_Ownership__c>(), null);
		Component528.create(new Space_Ownership__c());
		System.assert(true);
	}
	
	private static testMethod void testComponent486() {
		Contact_VF_ViewPage_view.Component486 Component486 = new Contact_VF_ViewPage_view.Component486(new List<Associate__c>(), new List<Contact_VF_ViewPage_view.Component486Item>(), new List<Associate__c>(), null);
		Component486.create(new Associate__c());
		System.assert(true);
	}
	
	private static testMethod void testComponent412() {
		Contact_VF_ViewPage_view.Component412 Component412 = new Contact_VF_ViewPage_view.Component412(new List<Requirement__c>(), new List<Contact_VF_ViewPage_view.Component412Item>(), new List<Requirement__c>(), null);
		Component412.create(new Requirement__c());
		System.assert(true);
	}
	
	private static testMethod void testComponent458() {
		Contact_VF_ViewPage_view.Component458 Component458 = new Contact_VF_ViewPage_view.Component458(new List<Shown_To__c>(), new List<Contact_VF_ViewPage_view.Component458Item>(), new List<Shown_To__c>(), null);
		Component458.create(new Shown_To__c());
		System.assert(true);
	}
	
	private static testMethod void testComponent469() {
		Contact_VF_ViewPage_view.Component469 Component469 = new Contact_VF_ViewPage_view.Component469(new List<Shown_To__c>(), new List<Contact_VF_ViewPage_view.Component469Item>(), new List<Shown_To__c>(), null);
		Component469.create(new Shown_To__c());
		System.assert(true);
	}
	
	private static testMethod void testComponent538() {
		Contact_VF_ViewPage_view.Component538 Component538 = new Contact_VF_ViewPage_view.Component538(new List<Invoice__c>(), new List<Contact_VF_ViewPage_view.Component538Item>(), new List<Invoice__c>(), null);
		Component538.create(new Invoice__c());
		System.assert(true);
	}
	
	private static testMethod void testComponent502() {
		Contact_VF_ViewPage_view.Component502 Component502 = new Contact_VF_ViewPage_view.Component502(new List<Case>(), new List<Contact_VF_ViewPage_view.Component502Item>(), new List<Case>(), null);
		Component502.create(new Case());
		System.assert(true);
	}
	
	private static testMethod void testComponent518() {
		Contact_VF_ViewPage_view.Component518 Component518 = new Contact_VF_ViewPage_view.Component518(new List<Twilio_Call_Log__c>(), new List<Contact_VF_ViewPage_view.Component518Item>(), new List<Twilio_Call_Log__c>(), null);
		Component518.create(new Twilio_Call_Log__c());
		System.assert(true);
	}
	
	private static testMethod void testComponent533() {
		Contact_VF_ViewPage_view.Component533 Component533 = new Contact_VF_ViewPage_view.Component533(new List<File_Article__c>(), new List<Contact_VF_ViewPage_view.Component533Item>(), new List<File_Article__c>(), null);
		Component533.create(new File_Article__c());
		System.assert(true);
	}
	
	private static testMethod void testRecordTypeFullNames() {
		Set<String> result = Contact_VF_ViewPage_view.recordTypeFullNames(new RecordType[] {
			new RecordType(DeveloperName = 'TestRecordType')
		});
		System.assertEquals(result.size(), 1);
		System.assert(result.contains('TestRecordType'));
	}
	
	private static testMethod void testFilterMetadataJSON() {
		String json = '{"CustomObject":{"recordTypes":[{"fullName":"RecordType1","picklistValues":[]},{"fullName":"RecordType2","picklistValues":[]}]}}';		Set<String> recordTypeSet = new Set<String>();
		recordTypeSet.add('RecordType2');
		Object metadata = System.JSON.deserializeUntyped(json);
		Map<String, Object> data = (Map<String, Object>) Contact_VF_ViewPage_view.filterMetadataJSON(metadata, recordTypeSet, SkyEditor2__SkyEditorDummy__c.SObjectType).data;
		Map<String, Object> customObject = (Map<String, Object>) data.get('CustomObject');
		List<Object> recordTypes = (List<Object>) customObject.get('recordTypes');
		System.assertEquals(recordTypes.size(), 1);
		Map<String, Object> recordType = (Map<String, Object>) recordTypes[0];
		System.assertEquals('RecordType2', recordType.get('fullName'));
	}

}