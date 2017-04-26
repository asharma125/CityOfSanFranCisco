@isTest
private with sharing class Space_Availability_Fill_FormTest{
	private static testMethod void testPageMethods() {		Space_Availability_Fill_Form extension = new Space_Availability_Fill_Form(new ApexPages.StandardController(new Space_Options__c()));
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
		extension.getComponent466OptionsJS();
		extension.getComponent469OptionsJS();
		extension.getComponent96OptionsJS();
		extension.getComponent108OptionsJS();
		extension.getComponent102OptionsJS();
		extension.getComponent541OptionsJS();
		extension.getComponent124OptionsJS();
		extension.getComponent164OptionsJS();
		extension.getComponent130OptionsJS();
		extension.getComponent93OptionsJS();
	}
	private static testMethod void testRecordTypeFullNames() {
		Set<String> result = Space_Availability_Fill_Form.recordTypeFullNames(new RecordType[] {
			new RecordType(DeveloperName = 'TestRecordType')
		});
		System.assertEquals(result.size(), 1);
		System.assert(result.contains('TestRecordType'));
	}
	
	private static testMethod void testFilterMetadataJSON() {
		String json = '{"CustomObject":{"recordTypes":[{"fullName":"RecordType1","picklistValues":[]},{"fullName":"RecordType2","picklistValues":[]}]}}';		Set<String> recordTypeSet = new Set<String>();
		recordTypeSet.add('RecordType2');
		Object metadata = System.JSON.deserializeUntyped(json);
		Map<String, Object> data = (Map<String, Object>) Space_Availability_Fill_Form.filterMetadataJSON(metadata, recordTypeSet, SkyEditor2__SkyEditorDummy__c.SObjectType).data;
		Map<String, Object> customObject = (Map<String, Object>) data.get('CustomObject');
		List<Object> recordTypes = (List<Object>) customObject.get('recordTypes');
		System.assertEquals(recordTypes.size(), 1);
		Map<String, Object> recordType = (Map<String, Object>) recordTypes[0];
		System.assertEquals('RecordType2', recordType.get('fullName'));
	}

}