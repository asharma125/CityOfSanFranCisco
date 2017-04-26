global class SendReport
{
    webservice static string sendReporttoowner(string Locationname)
    {
    string updatesucessfull='Update successfully';
        List<Ownership__c> ownershiplistupdate= new List<Ownership__c>();
        List<Ownership__c> ownershiplist=[select Id,Ownership_Location__c from Ownership__c where Ownership_Location__c=:Locationname];
        for(Ownership__c owner:ownershiplist)
        {
            owner.Last_Courier_Sent_Date__c=system.today();
            ownershiplistupdate.add(owner);
        }
        
        if(!ownershiplistupdate.isempty())
        {
            try
            {
                update ownershiplistupdate;
            }
            catch(exception e)
            {
            updatesucessfull='updation failed';
            
            }
        }
        return updatesucessfull;
    }
    
    }