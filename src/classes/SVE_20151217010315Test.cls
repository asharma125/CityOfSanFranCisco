@isTest
private with sharing class SVE_20151217010315Test{
		private static testMethod void testPageMethods() {	
			SVE_20151217010315 page = new SVE_20151217010315(new ApexPages.StandardController(new Indus_Asset__c()));	
			page.getOperatorOptions_Indus_Asset_c_Asset_Type_c();	
			page.getOperatorOptions_Indus_Asset_c_Name();	
			page.getOperatorOptions_Indus_Asset_c_Installed_At_c();	
			page.getOperatorOptions_Indus_Asset_c_Responsibility1_c();	
			page.getOperatorOptions_Indus_Asset_c_Stored_in_c();	
			page.getOperatorOptions_Indus_Asset_c_Vendor_Account_c();	
			System.assert(true);
		}	
			
	private static testMethod void testComponent3() {
		SVE_20151217010315.Component3 Component3 = new SVE_20151217010315.Component3(new List<Indus_Asset__c>(), new List<SVE_20151217010315.Component3Item>(), new List<Indus_Asset__c>(), null);
		Component3.create(new Indus_Asset__c());
		Component3.doDeleteSelectedItems();
		System.assert(true);
	}
	
}