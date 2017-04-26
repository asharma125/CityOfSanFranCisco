trigger Copymobilphone on Contact (before insert,before update) 

{

    for(Contact  con:Trigger.New)
    {
    if(con.MobilePhone!=null)
    {
        con.Phone=con.MobilePhone;
        }
    }

}