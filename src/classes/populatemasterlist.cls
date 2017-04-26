public class populatemasterlist
{

    public static void updatelistfield(List<opportunity> opplist)
    {
    
        for(Opportunity opp:opplist)
        {
            string masterlistlandlord=null;
            string masterlisttenant=null;
            string smalllistlandlord=null;
            string smalllisttenant=null;
            
            if(opp.Landlord_Constitution__c!=null)
            {
                if('Company'.equals(opp.Landlord_Constitution__c))
                {
                masterlistlandlord=getsmalllist(Applicationconstants.getComapnylist().values());
                masterlistlandlord+='9. '+'Last Electricity Bill \n';
                masterlistlandlord+='10. '+'Last Water Bill \n';
                masterlistlandlord+='11. '+'Last House Tax Paid Receipt \n';
                masterlistlandlord+='12. '+'Title Papers \n';
                if(opp.Second_Party__c!=null && opp.Amount_to_be_Re_imbursed__c!=null && opp.Total_Registration_Charges__c!=null)
                {
                    masterlistlandlord+='13. '+ 'Please issue a cheque in favour of '+ '"'+ opp.Second_Party__c+'"'+ ' for Rs. '+ opp.Amount_to_be_Re_imbursed__c+ ' towards 50% cost of Registration Charges ='+ opp.Total_Registration_Charges__c;
                }
            }
            else if('Partnership'.equals(opp.Landlord_Constitution__c))
            {
                 masterlistlandlord=getsmalllist(Applicationconstants.getPartnershiplist().values());
                masterlistlandlord+='9. '+'Last Electricity Bill \n';
                masterlistlandlord+='10. '+'Last Water Bill \n';
                masterlistlandlord+='11. '+'Last House Tax Paid Receipt \n';
                masterlistlandlord+='12. '+'Title Papers \n';
                if(opp.Second_Party__c!=null && opp.Amount_to_be_Re_imbursed__c!=null && opp.Total_Registration_Charges__c!=null)
                {
                masterlistlandlord+='13. '+ 'Please issue a cheque in favour of '+ '"'+ opp.Second_Party__c+'"'+ ' for Rs. '+ opp.Amount_to_be_Re_imbursed__c+ ' towards 50% cost of Registration Charges ='+ opp.Total_Registration_Charges__c;
                }
            }
             else if('HUF'.equals(opp.Landlord_Constitution__c))
            {
                 masterlistlandlord=getsmalllist(Applicationconstants.getHUFlist().values());
                masterlistlandlord+='8. '+'Last Electricity Bill \n';
                masterlistlandlord+='9. '+'Last Water Bill \n';
                masterlistlandlord+='10. '+'Last House Tax Paid Receipt \n';
                masterlistlandlord+='11. '+'Title Papers \n';
                if(opp.Second_Party__c!=null && opp.Amount_to_be_Re_imbursed__c!=null && opp.Total_Registration_Charges__c!=null)
                {
                masterlistlandlord+='12. '+ 'Please issue a cheque in favour of '+ '"'+ opp.Second_Party__c+'"'+ ' for Rs. '+ opp.Amount_to_be_Re_imbursed__c+ ' towards 50% cost of Registration Charges ='+ opp.Total_Registration_Charges__c;
                }
            }
            else if('Individual'.equals(opp.Landlord_Constitution__c))
            {
                 masterlistlandlord=getsmalllist(Applicationconstants.getIndividuallist().values());
                masterlistlandlord+='5. '+'Last Electricity Bill \n';
                masterlistlandlord+='6. '+'Last Water Bill \n';
                masterlistlandlord+='7. '+'Last House Tax Paid Receipt \n';
                masterlistlandlord+='8. '+'Title Papers \n';
                if(opp.Second_Party__c!=null && opp.Amount_to_be_Re_imbursed__c!=null && opp.Total_Registration_Charges__c!=null)
                {
                masterlistlandlord+='9. '+ 'Please issue a cheque in favour of '+ '"'+ opp.Second_Party__c+'"'+ ' for Rs. '+ opp.Amount_to_be_Re_imbursed__c+ ' towards 50% cost of Registration Charges ='+ opp.Total_Registration_Charges__c;
                }
            
            }
            opp.Master_List_Landlord__c=masterlistlandlord;
            }
            //
            if(opp.Tenant_Constitution__c!=null)
            {
               if('Company'.equals(opp.Tenant_Constitution__c))
                {
                masterlisttenant=getsmalllist(Applicationconstants.getComapnylist().values());
                if(opp.First_Party__c!=null && opp.Balance_Security_Amount__c!=null)
                {
                    masterlisttenant+='8. '+'Balance Security Deposit in Favour of '+ +'"'+ opp.First_Party__c +'"'+ ' '+ opp.Balance_Security_Amount__c +'/-'+ ' \n';
                }
                if(opp.Total_Security_Paid__c!=null)
                {
                  masterlisttenant+='9. '+  '(Till now security paid is '+opp.Total_Security_Paid__c+ ')'+'\n';
                }
                 if(opp.First_Party__c!=null)
                {
                     masterlisttenant+='10. '+'Advance Cheques in favour of'+ opp.First_Party__c+ ' \n';
                     if(opp.Adv_Rent_Cheques__c!=null)
                     {
                                          masterlisttenant+='a. '+' Rent - '+ opp.Adv_Rent_Cheques__c+ ' \n';
                     }
                     if(opp.Adv_Hire_Cheques__c!=null)
                     {
                                          masterlisttenant+='b. '+' Hire- '+ opp.Adv_Hire_Cheques__c+ ' \n';
                     }
                 }
                 if(opp.Total_Stamp_Duty_incl_Service_Tax__c!=null && opp.RTGS_Account__c!=null)
                 {
                    masterlisttenant+='11. '+ 'RTGS  of RS.'+opp.Total_Stamp_Duty_incl_Service_Tax__c+ ' towards '+opp.RTGS_Account__c+'\n';
                 }
                 if(opp.DD_in_Favour_of__c!=null)
                 {
                                         masterlisttenant+='12. '+  'DD in favour of  '+opp.DD_in_Favour_of__c+'\n';
                 }
                 masterlisttenant+='13.'+ ' Rs. 5000/- in cash or Cheque in favour of '+'"'+'Indus Franchise & Showrooms Consultants Pvt. Ltd.'+'"' +'towards Lawyer and Miscellaneous charges.'+'\n';
               
                }
               else if('Partnership'.equals(opp.Tenant_Constitution__c))
                {
                    masterlisttenant=getsmalllist(Applicationconstants.getPartnershiplist().values());
                if(opp.First_Party__c!=null && opp.Balance_Security_Amount__c!=null)
   
                {
                    masterlisttenant+='9. '+'Balance Security Deposit in Favour of '+'"'+ opp.First_Party__c +'"'+ ' Rs '+ opp.Balance_Security_Amount__c +'/-'+ ' \n';
                }
                if(opp.Total_Security_Paid__c!=null)
                {
                  masterlisttenant+='(Till now security paid is '+opp.Total_Security_Paid__c+ ')'+'\n';
                }
                 if(opp.First_Party__c!=null)
                {
                     masterlisttenant+='10. '+'Advance Cheques in favour of '+ opp.First_Party__c+ ' \n';
                     if(opp.Adv_Rent_Cheques__c!=null)
                     {
                                          masterlisttenant+='a. '+' Rent -'+ opp.Adv_Rent_Cheques__c+ ' \n';
                     }
                     if(opp.Adv_Hire_Cheques__c!=null)
                     {
                                          masterlisttenant+='b. '+' Hire-'+ opp.Adv_Hire_Cheques__c+ ' \n';
                     }
                 }
                 if(opp.Total_Stamp_Duty_incl_Service_Tax__c!=null && opp.RTGS_Account__c!=null)
                 {
                    masterlisttenant+='11. '+  'RTGS  of Rs.'+opp.Total_Stamp_Duty_incl_Service_Tax__c+ ' towards '+opp.RTGS_Account__c+'\n';
                 }
                 if(opp.DD_in_Favour_of__c!=null)
                 {
                                         masterlisttenant+='12. '+  'DD in favour of  '+opp.DD_in_Favour_of__c+'\n';
                 }
                 masterlisttenant+='13.'+ ' Rs. 5000/- in cash or Cheque in favour of '+'"'+'Indus Franchise & Showrooms Consultants Pvt. Ltd.'+'"' +'towards Lawyer and Miscellaneous charges.'+'\n';
               
                }
                 else if('HUF'.equals(opp.Tenant_Constitution__c))
                {
                masterlisttenant=getsmalllist(Applicationconstants.getHUFlist().values());
                if(opp.First_Party__c!=null && opp.Balance_Security_Amount__c!=null)
                {
                    masterlisttenant+='8. '+'Balance Security Deposit in Favour of '+'"'+ opp.First_Party__c+'"'+ ' '+opp.Balance_Security_Amount__c+'/-'+ ' \n';
                }
                if(opp.Total_Security_Paid__c!=null)
                {
                  masterlisttenant+='9. '+  '(Till now security paid is '+opp.Total_Security_Paid__c+ ')'+'\n';
                }
                 if(opp.First_Party__c!=null)
                {
                     masterlisttenant+='10. '+' Advance Cheques in favour of'+ opp.First_Party__c + ' Rs'+ opp.Balance_Security_Amount__c +'/'+ ' \n';
                     if(opp.Adv_Rent_Cheques__c!=null)
                     {
                          masterlisttenant+='a. '+' Rent - '+ opp.Adv_Rent_Cheques__c+ ' \n';
                     }
                     if(opp.Adv_Hire_Cheques__c!=null)
                     {
                        masterlisttenant+='b. '+' Hire- '+ opp.Adv_Hire_Cheques__c+ ' \n';
                     }
                 }
                 if(opp.Total_Stamp_Duty_incl_Service_Tax__c!=null && opp.RTGS_Account__c!=null)
                 {
                    masterlisttenant+='11. '+ 'RTGS  of Rs.'+opp.Total_Stamp_Duty_incl_Service_Tax__c+ ' towards '+opp.RTGS_Account__c+'\n';
                 }
                 if(opp.DD_in_Favour_of__c!=null)
                 {
                   masterlisttenant+='12. '+  'DD in favour of  '+opp.DD_in_Favour_of__c+'\n';
                 }
                 masterlisttenant+= '13. '+'Rs. 5000/- in cash or Cheque in favour of '+'"'+'Indus Franchise & Showrooms Consultants Pvt. Ltd.'+'"' +'towards Lawyer and Miscellaneous charges.'+'\n';
               
                }
                 else if('Individual'.equals(opp.Tenant_Constitution__c))
                {
                masterlisttenant=getsmalllist(Applicationconstants.getIndividuallist().values());
                if(opp.First_Party__c!=null && opp.Balance_Security_Amount__c!=null)
                {
                    masterlisttenant+='5.'+'Balance Security Deposit in Favour of'+ opp.First_Party__c + ' '+ opp.Balance_Security_Amount__c + ' \n';
                }
                if(opp.Total_Security_Paid__c!=null)
                {
                  masterlisttenant+='6. '+  '(Till now security paid is '+opp.Total_Security_Paid__c+ ')'+'\n';
                }
                 if(opp.First_Party__c!=null)
                {
                     masterlisttenant+='7. '+'Advance Cheques in favour of '+ opp.First_Party__c+ ' \n';
                     if(opp.Adv_Rent_Cheques__c!=null)
                     {
                                          masterlisttenant+='a. '+' Rent - '+ opp.Adv_Rent_Cheques__c+ ' \n';
                     }
                     if(opp.Adv_Hire_Cheques__c!=null)
                     {
                                          masterlisttenant+='b. '+' Hire - '+ opp.Adv_Hire_Cheques__c+ ' \n';
                     }
                 }
                 if(opp.Total_Stamp_Duty_incl_Service_Tax__c!=null && opp.RTGS_Account__c!=null)
                 {
                    masterlisttenant+='8. '+ 'RTGS  of Rs.'+opp.Total_Stamp_Duty_incl_Service_Tax__c+ ' towards '+opp.RTGS_Account__c+'\n';
                 }
                 if(opp.DD_in_Favour_of__c!=null)
                 {
                                         masterlisttenant+='9. '+  'DD in favour of  '+opp.DD_in_Favour_of__c+'\n';
                 }
                 masterlisttenant+='10.'+ ' Rs. 5000/- in cash or Cheque in favour of '+'"'+'Indus Franchise & Showrooms Consultants Pvt. Ltd.'+'"' +' towards Lawyer and Miscellaneous charges.'+'\n';
               
                }
                opp.Master_List_Tenant__c=masterlisttenant;
            }
            
            
        }
    
    }
    public static string getsmalllist(List<string> stringlist)
    {
        string smalllist=null;
        Integer totallist=0;
        for(string str:stringlist)
        {
            totallist++;
            if(smalllist==null)
            {
                smalllist= totallist+'.'+str+'\n';
            }
            else
            {
                smalllist+= totallist+'.'+str+'\n';
            }
            
        
        }
        return smalllist;
    }
}