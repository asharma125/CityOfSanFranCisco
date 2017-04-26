trigger UpdateBrandcontact on Contact ( after update ) 
{
    if(utility.isContactupdateable){
        set<Id> contactIdset = new set<id>();
        map<Id, List<Brand_Contact_Role__c>> brandcontactrolemap = new map<Id, List<Brand_Contact_Role__c>>();
        List<Brand_Contact_Role__c> brandcontactrolelist = new List<Brand_Contact_Role__c>();
        for(Contact con : Trigger.new)
        {
            if( Trigger.isupdate && 
                ( 
                    Trigger.oldmap.get(con.id).Contact_Verified_Date__c != con.Contact_Verified_Date__c ||
                    Trigger.oldmap.get(con.id).Min_Budget_Rs__c != con.Min_Budget_Rs__c ||
                    Trigger.oldmap.get(con.id).Max_Area_Sq_Ft__c != con.Max_Area_Sq_Ft__c ||
                    Trigger.oldmap.get(con.id).Max_Budget__c != con.Max_Budget__c ||
                    Trigger.oldmap.get(con.id).Min_Area_Req_Sq_Ft__c != con.Min_Area_Req_Sq_Ft__c ||
                    Trigger.oldmap.get(con.id).Floor_Preferred__c != con.Floor_Preferred__c ||
                    Trigger.oldmap.get(con.id).Prospect__c != con.Prospect__c ||
                    Trigger.oldmap.get(con.id).Suspect__c != con.Suspect__c ||
                    Trigger.oldmap.get(con.id).Desperate__c != con.Desperate__c || 
                    Trigger.oldmap.get(con.id).RF_CAR_Notes__c != con.RF_CAR_Notes__c ||
                    Trigger.oldmap.get(con.id).Brand_Decision_Maker__c != con.Brand_Decision_Maker__c
                )
            ){
                contactIdset.add(con.id);
            }
        }
        for(Brand_Contact_Role__c brandrole : [select id, Contact__c, RF_CAR_Notes__c, Min_Budget_Rs__c, Last_Verified_Date__c,
                Max_Area_Sq_Ft__c, Max_Budget__c, Min_Area_Sq_Ft__c, Floor_Preferred__c, Prospect__c, Desperate__c
                from Brand_Contact_Role__c where Contact__c IN : contactIdset])
        {
            Contact con = trigger.newmap.get(brandrole.Contact__c);
            brandrole.Min_Budget_Rs__c = Con.Min_Budget_Rs__c;
            brandrole.Max_Area_Sq_Ft__c = Con.Max_Area_Sq_Ft__c;
            brandrole.Max_Budget__c = Con.Max_Budget__c;
            brandrole.Min_Area_Sq_Ft__c = Con.Min_Area_Req_Sq_Ft__c;
            brandrole.Floor_Preferred__c = Con.Floor_Preferred__c;
            brandrole.Prospect__c = Con.Prospect__c;
            brandrole.Suspect__c = Con.Suspect__c;
            brandrole.Last_Verified_Date__c = Con.Contact_Verified_Date__c;
            brandrole.Desperate__c = Con.Desperate__c;
            brandrole.RF_CAR_Notes__c = Con.RF_CAR_Notes__c;
            if( con.Brand_Decision_Maker__c == false ){
                brandrole.Decision_Maker__c = false;
            }
            brandcontactrolelist.add(brandrole);
            
        }
        if( !brandcontactrolelist.isempty() ){
            try{
                utility.isbrandcontactroleupdateable = false;
                upsert brandcontactrolelist;
            }catch(Exception e){
        
            }
        }
    }
}