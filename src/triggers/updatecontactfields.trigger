trigger updatecontactfields on Contact (before insert,before update)
{

    set<Id> accountid= new set<Id>();
    Map<Id,account> accountidmap= new Map<Id,account>(); 
    for(Contact con:trigger.new)
    {
        accountid.add(con.Accountid);
    }
    for(Account acc:[select id,Agent__c,Investor__c,Tenant__c,Vendor__c from Account 
                where ID IN:accountid])
    {
    accountidmap.put(acc.id,acc);
    }
    
    for(Contact con:trigger.new)
    {
     if(accountidmap.containskey(con.AccountId))
        {
            Account acc=accountidmap.get(con.AccountId);
             con.Agent__c=acc.Agent__c;
             con.Investor__c=acc.Investor__c;
             con.Tenant__c=acc.Tenant__c;
             con.Vendor__c=acc.Vendor__c;
       }
    
    }

}