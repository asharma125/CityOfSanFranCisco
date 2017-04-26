public class SpaceSearch_Class {
        public Property__c Prop_Temp {get;set;}
        public Space_Options__c Space_Temp {get;set;}
        String Floor_Rent;
        String ZSuits;
        String Select_Query;
        String Where_Query;
        String Query;
        public boolean IsSearch{get;set;}
        public list<String> Space_Location {get;set;}
        public String Sp_location{get;set;}
        public list<Space_Wrapper> Spaces{get;set;}
        public list<Space_Wrapper> Selected_Spaces{get;set;}
        public String spaceIds{get;set;} 
        
        public list<Space_Wrapper> Spaces(){
            list<Space_Wrapper> spaces_Temp = new list<Space_Wrapper>();
            system.debug('---Query'+Query);
            for(Space_Options__c space : database.query(Query)){
                spaces_Temp.add(new Space_Wrapper(space));
            }
            if(spaces_Temp.size()<1){ 
                Apexpages.addMessage(new Apexpages.Message(Apexpages.Severity.INFO,'No Space found for the searched criteria. Please try some diffrent criteria'));
            }
            return spaces_Temp; 
        }
        public list<SelectOption> getLocation(){
            list<SelectOption> location = new list<SelectOption>();
            set<String> locationSet = new set<String>();
            list<String> locationList = new list<String>();
            
            
            for(Property__c p : [select Location_new__c from Property__c where Location_City_new__c =: Prop_Temp.Location_City_new__c and Location_new__c != null 
            					ORDER BY Location_new__c  asc limit 49999]){
            	if(!locationSet.contains(p.Location_new__c)){
                	locationSet.add(p.Location_new__c);
                	locationList.add(p.Location_new__c);
            	}
            }
            
            for(String S : locationList){
                S = S.trim();
                location.add(new SelectOption(S,S));
            }
            return location;
        
        }
        public SpaceSearch_class(){
            Prop_Temp = new Property__c();
            Space_Temp = new Space_Options__c();
            Space_Temp.Available_For_Rent__c = true;
            Space_Location = new list<String>();
            Prop_Temp.Location_City_new__c = 'New Delhi';
            IsSearch = true;
            Spaces = new list<Space_Wrapper>();
            Selected_Spaces = new list<Space_Wrapper>();
            
            Select_Query = 'Select Property__c, Property__r.Property_Picture__c, Property__r.Location_Sub_new__c, DMD_Link__c, Property__r.DMD_Link__c, Id, Name, Agreement_Type__c,Entry_From__c,Frontage_Ft__c,DFS_Date__c,Space_Notes_Lease__c,Client_Remarks_Lease__c,R_S_History__c, Covered_Area_Sq_Ft__c,Floor_Rent__c, Rent_Month__c,May_Settle_Rent__c,Rent_PSF_on_Covered_Area__c, Old_Signage__c,Property_No__c,Space_Location_1__c,Floorwise_Area__c From Space_Options__c';
            Where_Query = ' where Available_For_Rent__c ='+ Space_Temp.Available_For_Rent__c+' and Property__r.Location_City_new__c = \'New Delhi\'';
            Where_Query += ' ORDER BY Space_Location_1__c asc, lastmodifieddate desc LIMIT 10';
            Query = Select_Query + Where_Query;
            Spaces = Spaces();
        }
        public void Search_Space(){
            Where_Query = ' where Available_For_Rent__c ='+ Space_Temp.Available_For_Rent__c;
            if(Sp_location != null && Sp_location != '[]'){
                String loc = Sp_location.replace('[','(\'');
                loc = loc.replace(']','\')');
                loc = loc.replaceAll(', ','\',\'');
                Where_Query += ' and Space_Location_1__c IN '+loc;
                    
            }
            if(Space_Temp.Floor_Rent__c != null) {   
                String Floor_Rent = Space_Temp.Floor_Rent__c.replaceAll(';','\',\'');
                Floor_Rent = '(\''+Floor_Rent+'\')';
                Where_Query += ' and Floor_Rent__c INCLUDES'+Floor_Rent;
                    
            }
            if(Space_Temp.ZSuits__c != null){
                String Zsuits = Space_Temp.ZSuits__c.replaceAll(';','\',\'');
                Zsuits = '(\''+Zsuits+'\')';
                Where_Query += ' and ZSuits__c INCLUDES'+Zsuits;
            }
            Where_Query += ' ORDER BY Space_Location_1__c asc, lastmodifieddate desc LIMIT 100';
            Query = Select_Query + Where_Query;
            Spaces.clear();
            Spaces = Spaces();
        }
        public void Search_Space_Strict(){
            Where_Query = ' where Available_For_Rent__c ='+ Space_Temp.Available_For_Rent__c;
            if(Sp_location != null && Sp_location != '[]'){
                String loc = Sp_location.replace('[','(\'');
                loc = loc.replace(']','\')');
                loc = loc.replaceAll(', ','\',\'');
                Where_Query += ' and Space_Location_1__c IN '+loc;
                system.debug('===Search_Location== '+loc);
            }
            if(Space_Temp.Floor_Rent__c != null) {   
                //String Floor_Rent = Space_Temp.Floor_Rent__c.replaceAll(';','\';\'');
                String Floor_Rent = '(\''+Space_Temp.Floor_Rent__c+'\')';
                Where_Query += ' and Floor_Rent__c INCLUDES '+Floor_Rent;
                system.debug(Where_Query+' ====Where_Query==');
            }
            if(Space_Temp.ZSuits__c != null){
                //String Zsuits = Space_Temp.ZSuits__c.replaceAll(';','\';\'');
                String Zsuits = '(\''+Zsuits+'\')';
                Where_Query += ' and ZSuits__c INCLUDES'+Zsuits;
            }
            Where_Query += ' ORDER BY Space_Location_1__c asc, lastmodifieddate desc LIMIT 100';
            Query = Select_Query + Where_Query;
            Spaces.clear();
            Spaces = Spaces();
        }
        public void refresh(){
            Where_Query =  ' where Available_For_Rent__c ='+ Space_Temp.Available_For_Rent__c+' and Property__r.Location_City_new__c = \''+Prop_Temp.Location_City_new__c+'\'';
            Where_Query += ' ORDER BY Space_Location_1__c asc, lastmodifieddate desc LIMIT 100';
            Query = Select_Query + Where_Query;
            Spaces.clear();
            Spaces = Spaces();
        }
        public void Next(){
            spaceIds = '';
            for(Space_Wrapper spaceWPR : Spaces){
                if(spaceWPR.IsSelected){
                    Selected_Spaces.add(spaceWPR);
                    spaceIds += spaceWPR.space.id+':';
                }
                    
            }
            
            if(Selected_Spaces.size()>0){
                IsSearch = false;
            }else{
                Apexpages.addMessage(new Apexpages.Message(Apexpages.Severity.INFO,'Please select a property to go Next'));
            }
        }
        public void Back(){
            IsSearch = true;
        }
        public class Space_Wrapper{
            public boolean IsSelected {get;set;}
            public Space_Options__c space {get;set;}
            
            public Space_Wrapper(Space_Options__c space){
                this.IsSelected = false;
                this.space = space;
            }
        
        }
}