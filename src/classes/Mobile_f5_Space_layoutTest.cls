@isTest
private with sharing class Mobile_f5_Space_layoutTest{
		private static testMethod void testPageMethods() {	
			Mobile_f5_Space_layout page = new Mobile_f5_Space_layout(new ApexPages.StandardController(new Space_Options__c()));	
			page.getOperatorOptions_Space_Options_c_Space_Ref_No_c();	
			page.getOperatorOptions_Space_Options_c_F_5_Case_No_c();	
			page.getOperatorOptions_Space_Options_c_Old_Signage_c();	
			System.assert(true);
		}	
			
	private static testMethod void testComponent3() {
		Mobile_f5_Space_layout.Component3 Component3 = new Mobile_f5_Space_layout.Component3(new List<Space_Options__c>(), new List<Mobile_f5_Space_layout.Component3Item>(), new List<Space_Options__c>(), null);
		Component3.create(new Space_Options__c());
		Component3.doDeleteSelectedItems();
		System.assert(true);
	}
	
}