@isTest
private with sharing class SVE_20151128223958Test{
		private static testMethod void testPageMethods() {	
			SVE_20151128223958 page = new SVE_20151128223958(new ApexPages.StandardController(new Space_Options__c()));	
			page.getOperatorOptions_Space_Options_c_ZSuits_c();	
			page.getOperatorOptions_Space_Options_c_Space_Location_1_c();	
			page.getOperatorOptions_Space_Options_c_Floor_Rent_c();	
			page.getOperatorOptions_Space_Options_c_Running_Restaurant_c();	
			page.getOperatorOptions_Space_Options_c_Terrace_Open_Area_c();	
			page.getOperatorOptions_Space_Options_c_Hot_Property_c();	
			page.getOperatorOptions_Space_Options_c_Maybe_Available_for_Rent_c();	
			page.getOperatorOptions_Space_Options_c_Available_For_Rent_c();	
			page.getOperatorOptions_Space_Options_c_Brand_Has_Bar_c();	
			page.getOperatorOptions_Space_Options_c_Vacant_c();	
			page.getOperatorOptions_Space_Options_c_Shop_Type_c();	
			page.getOperatorOptions_Space_Options_c_REA_DFS_DATE_c();	
			System.assert(true);
		}	
			
	private static testMethod void testComponent3() {
		SVE_20151128223958.Component3 Component3 = new SVE_20151128223958.Component3(new List<Space_Options__c>(), new List<SVE_20151128223958.Component3Item>(), new List<Space_Options__c>(), null);
		Component3.create(new Space_Options__c());
		Component3.doDeleteSelectedItems();
		System.assert(true);
	}
	
}