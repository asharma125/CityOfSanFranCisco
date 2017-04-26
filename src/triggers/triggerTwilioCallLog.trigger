/* This trigger is to put time of call in custom filed
*
*
*/
trigger triggerTwilioCallLog on Twilio_Call_Log__c ( before insert ) {
    for(Twilio_Call_Log__c  TCL : trigger.new){
        TCL.Time_of_Call__c = String.valueof(datetime.now().time());
    }
}