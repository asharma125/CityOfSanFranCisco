@isTest
private with sharing class Account_Detail_Fill_PageTest{
	private static testMethod void testPageMethods() {		Account_Detail_Fill_Page extension = new Account_Detail_Fill_Page(new ApexPages.StandardController(new Account()));
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
		extension.getComponent322OptionsJS();
		extension.getComponent386OptionsJS();
	}
	private static testMethod void testComponent249() {
		Account_Detail_Fill_Page.Component249 Component249 = new Account_Detail_Fill_Page.Component249(new List<Contact>(), new List<Account_Detail_Fill_Page.Component249Item>(), new List<Contact>(), null);
		Component249.create(new Contact());
		System.assert(true);
	}
	
	private static testMethod void testComponent209() {
		Account_Detail_Fill_Page.Component209 Component209 = new Account_Detail_Fill_Page.Component209(new List<Brand_Contact_Role__c>(), new List<Account_Detail_Fill_Page.Component209Item>(), new List<Brand_Contact_Role__c>(), null);
		Component209.create(new Brand_Contact_Role__c());
		System.assert(true);
	}
	
	private static testMethod void testComponent183() {
		Account_Detail_Fill_Page.Component183 Component183 = new Account_Detail_Fill_Page.Component183(new List<Opportunity>(), new List<Account_Detail_Fill_Page.Component183Item>(), new List<Opportunity>(), null);
		Component183.create(new Opportunity());
		System.assert(true);
	}
	
	private static testMethod void testComponent198() {
		Account_Detail_Fill_Page.Component198 Component198 = new Account_Detail_Fill_Page.Component198(new List<Case>(), new List<Account_Detail_Fill_Page.Component198Item>(), new List<Case>(), null);
		Component198.create(new Case());
		System.assert(true);
	}
	
	private static testMethod void testComponent226() {
		Account_Detail_Fill_Page.Component226 Component226 = new Account_Detail_Fill_Page.Component226(new List<Requirement__c>(), new List<Account_Detail_Fill_Page.Component226Item>(), new List<Requirement__c>(), null);
		Component226.create(new Requirement__c());
		System.assert(true);
	}
	
	private static testMethod void testComponent216() {
		Account_Detail_Fill_Page.Component216 Component216 = new Account_Detail_Fill_Page.Component216(new List<Location__c>(), new List<Account_Detail_Fill_Page.Component216Item>(), new List<Location__c>(), null);
		Component216.create(new Location__c());
		System.assert(true);
	}
	
	private static testMethod void testComponent236() {
		Account_Detail_Fill_Page.Component236 Component236 = new Account_Detail_Fill_Page.Component236(new List<Associate__c>(), new List<Account_Detail_Fill_Page.Component236Item>(), new List<Associate__c>(), null);
		Component236.create(new Associate__c());
		System.assert(true);
	}
	
	private static testMethod void testComponent263() {
		Account_Detail_Fill_Page.Component263 Component263 = new Account_Detail_Fill_Page.Component263(new List<Indus_Asset__c>(), new List<Account_Detail_Fill_Page.Component263Item>(), new List<Indus_Asset__c>(), null);
		Component263.create(new Indus_Asset__c());
		System.assert(true);
	}
	
	private static testMethod void testComponent382() {
		Account_Detail_Fill_Page.Component382 Component382 = new Account_Detail_Fill_Page.Component382(new List<Brand_Contact_Role__c>(), new List<Account_Detail_Fill_Page.Component382Item>(), new List<Brand_Contact_Role__c>(), null);
		Component382.create(new Brand_Contact_Role__c());
		System.assert(true);
	}
	
	private static testMethod void testRecordTypeFullNames() {
		Set<String> result = Account_Detail_Fill_Page.recordTypeFullNames(new RecordType[] {
			new RecordType(DeveloperName = 'TestRecordType')
		});
		System.assertEquals(result.size(), 1);
		System.assert(result.contains('TestRecordType'));
	}
	
	private static testMethod void testFilterMetadataJSON() {
		String json = '{"CustomObject":{"recordTypes":[{"fullName":"RecordType1","picklistValues":[]},{"fullName":"RecordType2","picklistValues":[]}]}}';		Set<String> recordTypeSet = new Set<String>();
		recordTypeSet.add('RecordType2');
		Object metadata = System.JSON.deserializeUntyped(json);
		Map<String, Object> data = (Map<String, Object>) Account_Detail_Fill_Page.filterMetadataJSON(metadata, recordTypeSet, SkyEditor2__SkyEditorDummy__c.SObjectType).data;
		Map<String, Object> customObject = (Map<String, Object>) data.get('CustomObject');
		List<Object> recordTypes = (List<Object>) customObject.get('recordTypes');
		System.assertEquals(recordTypes.size(), 1);
		Map<String, Object> recordType = (Map<String, Object>) recordTypes[0];
		System.assertEquals('RecordType2', recordType.get('fullName'));
	}

}