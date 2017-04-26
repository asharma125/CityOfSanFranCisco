@isTest
private with sharing class Mobile_f5_layoutTest{
	private static testMethod void testPageMethods() {		Mobile_f5_layout extension = new Mobile_f5_layout(new ApexPages.StandardController(new F_5_Report__c()));
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
		extension.getComponent54OptionsJS();
	}
	private static testMethod void testComponent41() {
		Mobile_f5_layout.Component41 Component41 = new Mobile_f5_layout.Component41(new List<Space_Options__c>(), new List<Mobile_f5_layout.Component41Item>(), new List<Space_Options__c>(), null);
		Component41.create(new Space_Options__c());
		System.assert(true);
	}
	
	private static testMethod void testRecordTypeFullNames() {
		Set<String> result = Mobile_f5_layout.recordTypeFullNames(new RecordType[] {
			new RecordType(DeveloperName = 'TestRecordType')
		});
		System.assertEquals(result.size(), 1);
		System.assert(result.contains('TestRecordType'));
	}
	
	private static testMethod void testFilterMetadataJSON() {
		String json = '{"CustomObject":{"recordTypes":[{"fullName":"RecordType1","picklistValues":[]},{"fullName":"RecordType2","picklistValues":[]}]}}';		Set<String> recordTypeSet = new Set<String>();
		recordTypeSet.add('RecordType2');
		Object metadata = System.JSON.deserializeUntyped(json);
		Map<String, Object> data = (Map<String, Object>) Mobile_f5_layout.filterMetadataJSON(metadata, recordTypeSet, SkyEditor2__SkyEditorDummy__c.SObjectType).data;
		Map<String, Object> customObject = (Map<String, Object>) data.get('CustomObject');
		List<Object> recordTypes = (List<Object>) customObject.get('recordTypes');
		System.assertEquals(recordTypes.size(), 1);
		Map<String, Object> recordType = (Map<String, Object>) recordTypes[0];
		System.assertEquals('RecordType2', recordType.get('fullName'));
	}

}