@isTest
private with sharing class Rntd_FindTest{
	private static testMethod void testPageMethods() {		Rntd_Find extension = new Rntd_Find(new ApexPages.StandardController(new Rented_Formula__c()));
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
	static testMethod void canvasTest() {

		SkyEditor2__SkyEditorDummy__c r = new SkyEditor2__SkyEditorDummy__c();
		Rntd_Find.Canvas c;
		Attachment a;

		c = new Rntd_Find.Canvas(r, '1');
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

		c = new Rntd_Find.Canvas(r, '1');
		c.text = '';
		System.assertEquals(null, c.getAttachment());
		c.text = 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAADUlEQVQImWNgYGBgAAAABQABh6FO1AAAAABJRU5ErkJggg==';
		System.assertNotEquals(null, c.getAttachment());
		try{
			Rntd_Find test = new Rntd_Find(new ApexPages.StandardController(new Rented_Formula__c()));
			test.doSave();
		}catch (Exception e){
		}


	}

}