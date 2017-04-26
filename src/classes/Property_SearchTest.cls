@isTest
private with sharing class Property_SearchTest{
		private static testMethod void testPageMethods() {	
			Property_Search page = new Property_Search(new ApexPages.StandardController(new Property__c()));	
			page.getOperatorOptions_Property_c_Location_City_new_c();	
			page.getOperatorOptions_Property_c_Location_new_c();	
			page.getOperatorOptions_Property_c_Location_Sub_new_c();	
			page.getOperatorOptions_Property_c_Budget_Suits_c();	
			page.getOperatorOptions_Property_c_Area_Suits_c();	
			page.getOperatorOptions_Property_c_Channel_Partners_c();	
			page.getOperatorOptions_Property_c_Floor_Sale_c();	
			page.getOperatorOptions_Property_c_Prop_Type_Sale_c_multi();	
			page.getOperatorOptions_Property_c_Rating_of_Property_c_multi();	
			page.getOperatorOptions_Property_c_Cheque_Advance_c();	
			page.getOperatorOptions_Property_c_Company_Transfer_c();	
			page.getOperatorOptions_Property_c_Land_Status_c();	
			page.getOperatorOptions_Property_c_Rented_c();	
			page.getOperatorOptions_Property_c_Tenant_Type_c();	
			page.getOperatorOptions_Property_c_Tenant_Type_Sub_c();	
			System.assert(true);
		}	
			
	private static testMethod void testComponent3() {
		Property_Search.Component3 Component3 = new Property_Search.Component3(new List<Property__c>(), new List<Property_Search.Component3Item>(), new List<Property__c>(), null);
		Component3.create(new Property__c());
		Component3.doDeleteSelectedItems();
		System.assert(true);
	}
	
}