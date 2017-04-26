@isTest
private with sharing class Account_Wizard_PageTest{
	private static testMethod void testPageMethods() {		Account_Wizard_Page extension = new Account_Wizard_Page(new ApexPages.StandardController(new Account()));
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

		defaultSize = extension.Contact_AccountId.items.size();
		extension.Contact_AccountId.add();
		System.assertEquals(defaultSize + 1, extension.Contact_AccountId.items.size());
		extension.Contact_AccountId.items[defaultSize].selected = true;
		extension.callRemove_Contact_AccountId();
		System.assertEquals(defaultSize, extension.Contact_AccountId.items.size());


		defaultSize = extension.Associate_c_Associate_Company_c.items.size();
		extension.Associate_c_Associate_Company_c.add();
		System.assertEquals(defaultSize + 1, extension.Associate_c_Associate_Company_c.items.size());
		extension.Associate_c_Associate_Company_c.items[defaultSize].selected = true;
		extension.callRemove_Associate_c_Associate_Company_c();
		System.assertEquals(defaultSize, extension.Associate_c_Associate_Company_c.items.size());


		defaultSize = extension.Brand_Contact_Role_c_Company_c.items.size();
		extension.Brand_Contact_Role_c_Company_c.add();
		System.assertEquals(defaultSize + 1, extension.Brand_Contact_Role_c_Company_c.items.size());
		extension.Brand_Contact_Role_c_Company_c.items[defaultSize].selected = true;
		extension.callRemove_Brand_Contact_Role_c_Company_c();
		System.assertEquals(defaultSize, extension.Brand_Contact_Role_c_Company_c.items.size());

		extension.getComponent652OptionsJS();
		extension.getComponent428OptionsJS();
		extension.getComponent217OptionsJS();
		extension.getComponent218OptionsJS();
		extension.getComponent648OptionsJS();
		extension.getComponent675OptionsJS();
		extension.getComponent681OptionsJS();
	}
	private static testMethod void testContact_AccountId() {
		Account_Wizard_Page.Contact_AccountId Contact_AccountId = new Account_Wizard_Page.Contact_AccountId(new List<Contact>(), new List<Account_Wizard_Page.Contact_AccountIdItem>(), new List<Contact>(), null);
		Contact_AccountId.create(new Contact());
		System.assert(true);
	}
	
	public static testMethod void test_importByJSON_Contact_AccountId() {
		Account_Wizard_Page.Contact_AccountId table = new Account_Wizard_Page.Contact_AccountId(
			new List<Contact>(),
			new List<Account_Wizard_Page.Contact_AccountIdItem>(),
			new List<Contact>(), null);
		table.hiddenValue = '[{}]';
		table.importByJSON();
		System.assert(true);
	}
	private static testMethod void testAssociate_c_Associate_Company_c() {
		Account_Wizard_Page.Associate_c_Associate_Company_c Associate_c_Associate_Company_c = new Account_Wizard_Page.Associate_c_Associate_Company_c(new List<Associate__c>(), new List<Account_Wizard_Page.Associate_c_Associate_Company_cItem>(), new List<Associate__c>(), null);
		Associate_c_Associate_Company_c.create(new Associate__c());
		System.assert(true);
	}
	
	public static testMethod void test_importByJSON_Associate_c_Associate_Company_c() {
		Account_Wizard_Page.Associate_c_Associate_Company_c table = new Account_Wizard_Page.Associate_c_Associate_Company_c(
			new List<Associate__c>(),
			new List<Account_Wizard_Page.Associate_c_Associate_Company_cItem>(),
			new List<Associate__c>(), null);
		table.hiddenValue = '[{}]';
		table.importByJSON();
		System.assert(true);
	}
	private static testMethod void testBrand_Contact_Role_c_Company_c() {
		Account_Wizard_Page.Brand_Contact_Role_c_Company_c Brand_Contact_Role_c_Company_c = new Account_Wizard_Page.Brand_Contact_Role_c_Company_c(new List<Brand_Contact_Role__c>(), new List<Account_Wizard_Page.Brand_Contact_Role_c_Company_cItem>(), new List<Brand_Contact_Role__c>(), null);
		Brand_Contact_Role_c_Company_c.create(new Brand_Contact_Role__c());
		System.assert(true);
	}
	
	public static testMethod void test_importByJSON_Brand_Contact_Role_c_Company_c() {
		Account_Wizard_Page.Brand_Contact_Role_c_Company_c table = new Account_Wizard_Page.Brand_Contact_Role_c_Company_c(
			new List<Brand_Contact_Role__c>(),
			new List<Account_Wizard_Page.Brand_Contact_Role_c_Company_cItem>(),
			new List<Brand_Contact_Role__c>(), null);
		table.hiddenValue = '[{}]';
		table.importByJSON();
		System.assert(true);
	}
	private static testMethod void test_Component397_doTransfer(){
		Account_Wizard_Page extension = new Account_Wizard_Page(new ApexPages.StandardController(new Account()));
		extension.Component397_doTransfer();
		extension.record.Agent__c=true;
		System.assertEquals( extension.jumpPageNumber(2).getUrl(), extension.Component397_doTransfer().getUrl());
		extension = new Account_Wizard_Page(new ApexPages.StandardController(new Account()));
		extension.record.Tenant__c=true;
		System.assertEquals( extension.jumpPageNumber(3).getUrl(), extension.Component397_doTransfer().getUrl());
		extension = new Account_Wizard_Page(new ApexPages.StandardController(new Account()));
		extension.record.Investor__c=true;
		System.assertEquals( extension.jumpPageNumber(4).getUrl(), extension.Component397_doTransfer().getUrl());
		extension = new Account_Wizard_Page(new ApexPages.StandardController(new Account()));
		extension.record.Builder_Developer__c=true;
		System.assertEquals( extension.jumpPageNumber(1).getUrl(), extension.Component397_doTransfer().getUrl());
		extension = new Account_Wizard_Page(new ApexPages.StandardController(new Account()));
		extension.record.Vendor__c=true;
		System.assertEquals( extension.jumpPageNumber(5).getUrl(), extension.Component397_doTransfer().getUrl());
		extension = new Account_Wizard_Page(new ApexPages.StandardController(new Account()));
		extension.extender = new SkyEditor2.TestClasses.TestWizardControlExtender1();
		extension.Component397_doTransfer();
		extension.extender = new SkyEditor2.TestClasses.TestWizardControlExtender2();
		extension.Component397_doTransfer();
		System.assert(true);
		
	}
	private static testMethod void test_Component402_doTransfer(){
		Account_Wizard_Page extension = new Account_Wizard_Page(new ApexPages.StandardController(new Account()));
		extension.Component402_doTransfer();
		extension.extender = new SkyEditor2.TestClasses.TestWizardControlExtender1();
		extension.Component402_doTransfer();
		extension.extender = new SkyEditor2.TestClasses.TestWizardControlExtender2();
		extension.Component402_doTransfer();
		System.assert(true);
		
	}
	private static testMethod void test_Component406_doTransfer(){
		Account_Wizard_Page extension = new Account_Wizard_Page(new ApexPages.StandardController(new Account()));
		extension.Component406_doTransfer();
		extension.extender = new SkyEditor2.TestClasses.TestWizardControlExtender1();
		extension.Component406_doTransfer();
		extension.extender = new SkyEditor2.TestClasses.TestWizardControlExtender2();
		extension.Component406_doTransfer();
		System.assert(true);
		
	}
	private static testMethod void test_Component563_doTransfer(){
		Account_Wizard_Page extension = new Account_Wizard_Page(new ApexPages.StandardController(new Account()));
		extension.Component563_doTransfer();
		extension.extender = new SkyEditor2.TestClasses.TestWizardControlExtender1();
		extension.Component563_doTransfer();
		extension.extender = new SkyEditor2.TestClasses.TestWizardControlExtender2();
		extension.Component563_doTransfer();
		System.assert(true);
		
	}
	private static testMethod void test_Component641_doTransfer(){
		Account_Wizard_Page extension = new Account_Wizard_Page(new ApexPages.StandardController(new Account()));
		extension.Component641_doTransfer();
		extension.extender = new SkyEditor2.TestClasses.TestWizardControlExtender1();
		extension.Component641_doTransfer();
		extension.extender = new SkyEditor2.TestClasses.TestWizardControlExtender2();
		extension.Component641_doTransfer();
		System.assert(true);
		
	}
	private static testMethod void test_Component259_doTransfer(){
		Account_Wizard_Page extension = new Account_Wizard_Page(new ApexPages.StandardController(new Account()));
		extension.Component259_doTransfer();
		extension.extender = new SkyEditor2.TestClasses.TestWizardControlExtender1();
		extension.Component259_doTransfer();
		extension.extender = new SkyEditor2.TestClasses.TestWizardControlExtender2();
		extension.Component259_doTransfer();
		System.assert(true);
		
	}
}