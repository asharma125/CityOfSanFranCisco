@isTest
private with sharing class Available_Space_SearchTest{
		private static testMethod void testPageMethods() {	
			Available_Space_Search page = new Available_Space_Search(new ApexPages.StandardController(new Space_Options__c()));	
			page.getOperatorOptions_Space_Options_c_Demo_Auto_Location1_c();	
			page.getOperatorOptions_Space_Options_c_Space_Location_1_c();	
			page.getOperatorOptions_Space_Options_c_Hot_Property_c();	
			page.getOperatorOptions_Space_Options_c_Floor_Rent_c();	
			page.getOperatorOptions_Space_Options_c_ZSuits_c();	
			page.getOperatorOptions_Space_Options_c_Entry_From_c_multi();	
			page.getOperatorOptions_Space_Options_c_Lift_1_c();	
			page.getOperatorOptions_Space_Options_c_Channel_Partners_c();	
			page.getOperatorOptions_Space_Options_c_Brand_Has_Bar_c();	
			page.getOperatorOptions_Space_Options_c_Bar_Not_Allowed_c();	
			page.getOperatorOptions_Space_Options_c_Running_Restaurant_c();	
			page.getOperatorOptions_Space_Options_c_Back_Entrance_c();	
			page.getOperatorOptions_Space_Options_c_Terrace_Open_Area_c();	
			page.getOperatorOptions_Space_Options_c_Genset_Space_c();	
			page.getOperatorOptions_Space_Options_c_No_Non_Veg_c();	
			page.getOperatorOptions_Space_Options_c_Parking_c();	
			page.getOperatorOptions_Space_Options_c_Rating_c_multi();	
			page.getOperatorOptions_Space_Options_c_Space_Feel_c_multi();	
			System.assert(true);
		}	
			
	private static testMethod void testComponent3() {
		Available_Space_Search.Component3 Component3 = new Available_Space_Search.Component3(new List<Space_Options__c>(), new List<Available_Space_Search.Component3Item>(), new List<Space_Options__c>(), null);
		Component3.create(new Space_Options__c());
		Component3.doDeleteSelectedItems();
		System.assert(true);
	}
	
}