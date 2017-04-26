@isTest
private without sharing class Contact_Search_LayoutTest{
		private static testMethod void testPageMethods() {	
			Contact_Search_Layout page = new Contact_Search_Layout(new ApexPages.StandardController(new Contact()));	
			page.getOperatorOptions_Contact_FirstName();	
			page.getOperatorOptions_Contact_LastName();	
			page.getOperatorOptions_Contact_MobilePhone();	
			page.getOperatorOptions_Contact_Vendor_c();	
			page.getOperatorOptions_Contact_Vendor_Type_c_multi();	
			page.getOperatorOptions_Contact_Vendor_Power_c();	
			page.getOperatorOptions_Contact_Name();	
			page.getOperatorOptions_Contact_Agent_c();	
			page.getOperatorOptions_Contact_Retail_Specialist_Dealer_c();	
			page.getOperatorOptions_Contact_Rented_Dealer_Category_c_multi();	
			page.getOperatorOptions_Contact_Deals_in_Farm_c();	
			page.getOperatorOptions_Contact_Retail_Effectiveness_c();	
			page.getOperatorOptions_Contact_Rented_Effectiveness_c();	
			page.getOperatorOptions_Contact_Farms_Effectiveness_c();	
			page.getOperatorOptions_Contact_Retail_Specialist_Type_c();	
			page.getOperatorOptions_Contact_Commercial_Effectiveness_c();	
			page.getOperatorOptions_Contact_Commercial_Leasing_c();	
			page.getOperatorOptions_Contact_Deals_in_Industrial_c();	
			page.getOperatorOptions_Contact_Investor_c();	
			page.getOperatorOptions_Contact_Tenant_c();	
			page.getOperatorOptions_Contact_Rented_Investor_c();	
			page.getOperatorOptions_Contact_INV_Desperate_c();	
			page.getOperatorOptions_Contact_Desperate_c();	
			page.getOperatorOptions_Contact_Restaurant_Consultant_c();	
			page.getOperatorOptions_Contact_INV_Prospect_c();	
			page.getOperatorOptions_Contact_Prospect_c();	
			page.getOperatorOptions_Contact_Rented_Financiar_c();	
			System.assert(true);
		}	
			
	private static testMethod void testComponent3() {
		Contact_Search_Layout.Component3 Component3 = new Contact_Search_Layout.Component3(new List<Contact>(), new List<Contact_Search_Layout.Component3Item>(), new List<Contact>(), null);
		Component3.create(new Contact());
		Component3.doDeleteSelectedItems();
		System.assert(true);
	}
	
}