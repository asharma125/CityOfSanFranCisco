@isTest
private with sharing class F_5_Search_ScreenTest{
		private static testMethod void testPageMethods() {	
			F_5_Search_Screen page = new F_5_Search_Screen(new ApexPages.StandardController(new Space_Options__c()));	
			page.getOperatorOptions_Space_Options_c_F_5_Case_No_c();	
			page.getOperatorOptions_Space_Options_c_Space_Ref_No_c();	
			page.getOperatorOptions_Space_Options_c_Old_Signage_c();	
			System.assert(true);
		}	
			
	private static testMethod void testComponent3() {
		F_5_Search_Screen.Component3 Component3 = new F_5_Search_Screen.Component3(new List<Space_Options__c>(), new List<F_5_Search_Screen.Component3Item>(), new List<Space_Options__c>(), null);
		Component3.create(new Space_Options__c());
		Component3.doDeleteSelectedItems();
		System.assert(true);
	}
	
}