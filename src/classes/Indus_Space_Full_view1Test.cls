@isTest
private with sharing class Indus_Space_Full_view1Test{
	private static testMethod void testPageMethods() {		Indus_Space_Full_view1 extension = new Indus_Space_Full_view1(new ApexPages.StandardController(new Space_Options__c()));
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
		extension.getComponent221OptionsJS();
		extension.getComponent227OptionsJS();
		extension.getComponent171OptionsJS();
	}
	static testMethod void canvasTest() {

		SkyEditor2__SkyEditorDummy__c r = new SkyEditor2__SkyEditorDummy__c();
		Indus_Space_Full_view1.Canvas c;
		Attachment a;

		c = new Indus_Space_Full_view1.Canvas(r, '1');
		c.toggle();
		c.toggle();
		c.text = 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAADUlEQVQImWNgYGBgAAAABQABh6FO1AAAAABJRU5ErkJggg==';
		c.toggle();
		insert r;   
		a = c.getAttachment();
		System.assertEquals('1', a.Name);
		System.assertNotEquals(null, a.Body);

		a.ParentId = r.Id;
		insert a;

		c = new Indus_Space_Full_view1.Canvas(r, '1');
		c.text = '';
		System.assertEquals(null, c.getAttachment());
		c.text = 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAADUlEQVQImWNgYGBgAAAABQABh6FO1AAAAABJRU5ErkJggg==';
		System.assertNotEquals(null, c.getAttachment());
		try{
			Indus_Space_Full_view1 test = new Indus_Space_Full_view1(new ApexPages.StandardController(new Space_Options__c()));
			test.doSave();
		}catch (Exception e){
		}


	}

	private static testMethod void testRecordTypeFullNames() {
		Set<String> result = Indus_Space_Full_view1.recordTypeFullNames(new RecordType[] {
			new RecordType(DeveloperName = 'TestRecordType')
		});
		System.assertEquals(result.size(), 1);
		System.assert(result.contains('TestRecordType'));
	}
	
	private static testMethod void testFilterMetadataJSON() {
		String json = '{"CustomObject":{"recordTypes":[{"fullName":"RecordType1","picklistValues":[]},{"fullName":"RecordType2","picklistValues":[]}]}}';		Set<String> recordTypeSet = new Set<String>();
		recordTypeSet.add('RecordType2');
		Object metadata = System.JSON.deserializeUntyped(json);
		Map<String, Object> data = (Map<String, Object>) Indus_Space_Full_view1.filterMetadataJSON(metadata, recordTypeSet, SkyEditor2__SkyEditorDummy__c.SObjectType).data;
		Map<String, Object> customObject = (Map<String, Object>) data.get('CustomObject');
		List<Object> recordTypes = (List<Object>) customObject.get('recordTypes');
		System.assertEquals(recordTypes.size(), 1);
		Map<String, Object> recordType = (Map<String, Object>) recordTypes[0];
		System.assertEquals('RecordType2', recordType.get('fullName'));
	}

}