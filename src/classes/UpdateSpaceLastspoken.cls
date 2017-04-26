Global class UpdateSpaceLastspoken
{

    webservice static string Lastspoken(string spaceid)
    {
    string issuccessfull='Updated Successfully';
    List<Space_Options__c> spacelist= new List<Space_Options__c>();
    for(Space_Options__c space:[select id,Last_Spoken_On__c from Space_Options__c where id=:spaceid])
    {
        space.Last_Spoken_On__c=system.now();
        spacelist.add(space);
    }
    try
    {
        if(!spacelist.isempty())
        {
            upsert spacelist;
        }
    }
    catch(Exception e)
    {
    issuccessfull='updation failed please contact Admin';
    }

    return issuccessfull;
    }
}