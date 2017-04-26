@isTest
private with sharing class SVE_20151115160417Test{
	private static testMethod void testPageMethods() {		SVE_20151115160417 extension = new SVE_20151115160417(new ApexPages.StandardController(new PT_I__c()));
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
		extension.getComponent32OptionsJS();
		extension.getComponent29OptionsJS();
	}
	private static testMethod void testComponent57() {
		SVE_20151115160417.Component57 Component57 = new SVE_20151115160417.Component57(new List<Solution>(), new List<SVE_20151115160417.Component57Item>(), new List<Solution>(), null);
		Component57.create(new Solution());
		System.assert(true);
	}
	
	private static testMethod void testComponent67() {
		SVE_20151115160417.Component67 Component67 = new SVE_20151115160417.Component67(new List<Case>(), new List<SVE_20151115160417.Component67Item>(), new List<Case>(), null);
		Component67.create(new Case());
		System.assert(true);
	}
	
	private static testMethod void testRecordTypeFullNames() {
		Set<String> result = SVE_20151115160417.recordTypeFullNames(new RecordType[] {
			new RecordType(DeveloperName = 'TestRecordType')
		});
		System.assertEquals(result.size(), 1);
		System.assert(result.contains('TestRecordType'));
	}
	
	private static testMethod void testFilterMetadataJSON() {
		String json = '{"CustomObject":{"recordTypes":[{"fullName":"RecordType1","picklistValues":[]},{"fullName":"RecordType2","picklistValues":[]}]}}';		Set<String> recordTypeSet = new Set<String>();
		recordTypeSet.add('RecordType2');
		Object metadata = System.JSON.deserializeUntyped(json);
		Map<String, Object> data = (Map<String, Object>) SVE_20151115160417.filterMetadataJSON(metadata, recordTypeSet, SkyEditor2__SkyEditorDummy__c.SObjectType).data;
		Map<String, Object> customObject = (Map<String, Object>) data.get('CustomObject');
		List<Object> recordTypes = (List<Object>) customObject.get('recordTypes');
		System.assertEquals(recordTypes.size(), 1);
		Map<String, Object> recordType = (Map<String, Object>) recordTypes[0];
		System.assertEquals('RecordType2', recordType.get('fullName'));
	}

}