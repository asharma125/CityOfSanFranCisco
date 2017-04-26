public class Applicationconstants
{

    public static List<String> parseMultiSelect(String multiSelectValues) 
                {               
                List<String> parsedList = null;       
                if(multiSelectValues!=null) 
                        {
                           
                        parsedList = multiSelectValues.split(',');
          
                } 
                return parsedList;          
    }
      public static map<string,string> getComapnylist()
    {
        
       map<string,string> ibProfilemap = new map<string,string>();
       if(SmallList__c.getinstance('Company').Constitutional_Content__c!=null)
       {
            for(string str:Applicationconstants.parseMultiSelect(SmallList__c.getinstance('Company').Constitutional_Content__c))
            {
        
                ibProfilemap.put(str,str);
            }
       }
        return ibProfilemap;
    }
     public static map<string,string> getPartnershiplist()
    {
        
       map<string,string> ibProfilemap = new map<string,string>();
       if(SmallList__c.getinstance('Partnership').Constitutional_Content__c!=null)
       {
            for(string str:Applicationconstants.parseMultiSelect(SmallList__c.getinstance('Partnership').Constitutional_Content__c))
            {
        
                ibProfilemap.put(str,str);
            }
       }
        return ibProfilemap;
    }
      public static map<string,string> getHUFlist()
    {
        
       map<string,string> ibProfilemap = new map<string,string>();
       if(SmallList__c.getinstance('HUF').Constitutional_Content__c!=null)
       {
            for(string str:Applicationconstants.parseMultiSelect(SmallList__c.getinstance('HUF').Constitutional_Content__c))
            {
        
                ibProfilemap.put(str,str);
            }
       }
        return ibProfilemap;
    }
      public static map<string,string> getIndividuallist()
    {
        
       map<string,string> ibProfilemap = new map<string,string>();
       if(SmallList__c.getinstance('Individual').Constitutional_Content__c!=null)
       {
            for(string str:Applicationconstants.parseMultiSelect(SmallList__c.getinstance('Individual').Constitutional_Content__c))
            {
        
                ibProfilemap.put(str,str);
            }
       }
        return ibProfilemap;
    }
}