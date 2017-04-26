public class SpacefieldUpdate
{
    public static Space_Options__c updatespacefield(Space_Options__c spaceoption,F_5_Report__c freportobj )
    {
        Space_Options__c spaceobj=spaceoption;
        spaceobj.Available_For_Rent__c=false;
       
        spaceobj.Vacant__c=false;
        spaceobj.Full_Building__c=false;
        if(freportobj.Reno_25_Date__c!=null)
          {
               spaceobj.New_Lease_Commencement__c=freportobj.Reno_25_Date__c;
          }
         else if(freportobj.Reno_50_Date__c!=null)
          {
                spaceobj.New_Lease_Commencement__c=freportobj.Reno_50_Date__c;
          }
          else if(freportobj.Reno_75_Date__c!=null)
           {
               spaceobj.New_Lease_Commencement__c=freportobj.Reno_75_Date__c;
           }
          else if(freportobj.R_New_Brand_Date__c!=null)
           {
                          spaceobj.New_Lease_Commencement__c=freportobj.R_New_Brand_Date__c;
           }
           else 
           {
                  spaceobj.New_Lease_Commencement__c=system.today();
            }
       
        return spaceobj;

    }
    public static Task gettask(Space_Options__c spaceobj,F_5_Report__c freportobj,string brandname)
    {
                 Task taskobj= new Task();
                  taskobj.WhatId=spaceobj.id;
                  if(freportobj.Owner__c!=null)
                  {
                      taskobj.WhoId=freportobj.Owner__c;
                  }
                  taskobj.Subject='Escalation Due on '+brandname;
                  if(spaceobj.Property_No__c!=null)
                  {
                     taskobj.Subject=taskobj.Subject+'-'+spaceobj.Property_No__c;
                  }
                   if(spaceobj.Floor_Rent__c!=null)
                  {
                     taskobj.Subject=taskobj.Subject+'-'+spaceobj.Floor_Rent__c;
                  }
                   if(spaceobj.Space_Location_1__c!=null)
                  {
                     taskobj.Subject=taskobj.Subject+'-'+spaceobj.Space_Location_1__c;
                  }
                    if(spaceobj.Current_Lease_Commencement__c!=null && spaceobj.Lease_Expiry__c!=null)
                  {
                     taskobj.Subject=taskobj.Subject+'('+spaceobj.Current_Lease_Commencement__c.format()+' -  '+spaceobj.Lease_Expiry__c.format()+')';
                  }
                    if(spaceobj.Current_Lease_Commencement__c!=null && spaceobj.Lease_Expiry__c==null )
                  {
                     taskobj.Subject=taskobj.Subject+'('+spaceobj.Current_Lease_Commencement__c.format()+')';
                  }
                   if(spaceobj.Current_Lease_Commencement__c==null && spaceobj.Lease_Expiry__c!=null )
                  {
                     taskobj.Subject=taskobj.Subject+'('+spaceobj.Lease_Expiry__c.format()+')';
                  }
                 
                  
                  if(freportobj.Reno_25_Date__c!=null)
                  {
                      taskobj.ActivityDate=freportobj.Reno_25_Date__c.addmonths(33);
                  }
                  else if(freportobj.Reno_50_Date__c!=null)
                  {
                      taskobj.ActivityDate=freportobj.Reno_50_Date__c.addmonths(33);
                  }
                  else if(freportobj.Reno_75_Date__c!=null)
                  {
                      taskobj.ActivityDate=freportobj.Reno_75_Date__c.addmonths(33);
                  }
                   else if(freportobj.R_New_Brand_Date__c!=null)
                  {
                      taskobj.ActivityDate=freportobj.R_New_Brand_Date__c;
                  }
                 taskobj.Priority='High';
                 taskobj.Task_Type__c='Call';
                 taskobj.Type='Call';
                 taskobj.Sub_Task__c='Escalation & Tenure End Call';
                
                
                return taskobj;
    }
}