global class sendmailtoBCR
{
webservice static void sendmail(string bcr_Id)
{
List<Brand_Contact_Role__c> bcrlist=[select Id, Contact__c
                            from Brand_Contact_Role__c where id=: bcr_Id];
     EmailTemplate templateId = [Select id from EmailTemplate where name = 'Call Follow Up Email'];
    if(!bcrlist.isempty())
    {
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        mail.setTargetObjectId(bcrlist.get(0).Contact__c);
        mail.setwhatid(bcrlist.get(0).id);
        mail.settemplateid(templateId.id);
        mail.setBccSender(false);
        mail.setUseSignature(false);
       mail.setReplyTo('ajay@indiashowRooms.com');
       mail.setSenderDisplayName('IndiaShowRooms');
       mail.setSaveAsActivity(true);
       Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });

    
    }
}
}