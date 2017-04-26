trigger UpdateContact on Account (after update) 
{

map<Id,Account> accountidsetmap= new map<Id,Account>();
List<Contact> contactlist= new List<Contact>();
    for(Account acc:trigger.new)
    {
        accountidsetmap.put(acc.id,acc);
    }
    for(Contact con:[select id,AccountId,Agent__c,Investor__c,Tenant__c,Vendor__c from Contact 
                where AccountId IN:accountidsetmap.keyset()])
    {
        if(accountidsetmap.containskey(con.AccountId))
        {
        Account acc=accountidsetmap.get(con.AccountId);
           con.Agent__c=acc.Agent__c;
            con.Investor__c=acc.Investor__c;
             con.Tenant__c=acc.Tenant__c;
              con.Vendor__c=acc.Vendor__c;
            
         contactlist.add(con);
        }
    
       
    }
    if(!contactlist.isempty())
    {
        try
        {
            upsert contactlist;
        }
        catch(Exception e)
        {
        
        }
    }

}