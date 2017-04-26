public class GenerateSpacePdf {
    public list<Space_Options__c> spacelist{get;set;}
    public String mapURL{get;set;} 
    public map<Integer,list<String>> colormap {get;set;}
    public boolean showMap{get;set;}
    public GenerateSpacePdf(){
        String Ids = Apexpages.currentpage().getParameters().get('ids');
        spacelist = new list<Space_Options__c>();
        //Apexpages.currentPage().getHeaders().put('content-disposition', 'attachment; filename=Properties.pdf');
        if(Ids != null && Ids != ''){
            list<String> spaceIds = Ids.split(':');
            spacelist = [Select Property__c, Property__r.Property_Picture__c, Property__r.Address__c, Property__r.Location_Sub_new__c, DMD_Link__c, Property__r.DMD_Link__c, Id, Name,
                Agreement_Type__c, Entry_From__c,Frontage_Ft__c,DFS_Date__c,Space_Notes_Lease__c,Client_Remarks_Lease__c,R_S_History__c, 
                Covered_Area_Sq_Ft__c,Floor_Rent__c,Floorwise_Area__c,Rent_Month__c,May_Settle_Rent__c,Rent_PSF_on_Covered_Area__c, Old_Signage__c,
                Property_No__c,Space_Location_1__c, Longitude__c,Latitude__c From Space_Options__c where Id IN: spaceIds ORDER BY Space_Location_1__c asc ];
                colormap = new map<Integer,list<String>>();
                set<Id> pset = new set<Id>(); 
                for(Space_Options__c s : spacelist){
                    pset.add(s.Property__c);
                }
                list<Property__c> plist = [select Id, Address__c,Latitude__c,Longitude__c from Property__c where Id IN: pset];                
                String URL = 'http://maps.googleapis.com/maps/api/staticmap?size=700x400&maptype=roadmap&format=jpg';
                //&markers=color:blue%7Clabel:S%7C40.702147,-74.015794&markers=color:green%7Clabel:G%7C40.711614,-74.012318&markers=color:red%7Clabel:C%7C40.718217,-73.998284&sensor=false';
                for(Integer i = 1 ; i<=plist.size(); i++){
                    Property__c s = plist[i-1];
                    if(s.Latitude__c != null && s.Longitude__c != null){
                        showMap = true;
                        if( i == 1){
                            colormap.put(1, new list<String>());
                            colormap.get(i).add('blue');
                            URL += '&markers=color:'+colormap.get(i)[0]+'%7Clabel:'+i+'%7C'+s.Latitude__c+','+s.Longitude__c;
                            if(s.Address__c == '' || s.Address__c == null){
                                colormap.get(i).add('Not Provided');
                            }else{
                                colormap.get(i).add(s.Address__c);
                            }
                        }else if(i == 2){
                            colormap.put(2, new list<String>());
                            colormap.get(i).add('purple');
                            URL += '&markers=color:'+colormap.get(i)[0]+'%7Clabel:'+i+'%7C'+s.Latitude__c+','+s.Longitude__c;
                            if(s.Address__c == '' || s.Address__c == null){
                                colormap.get(i).add('Not Provided');
                            }else{
                                colormap.get(i).add(s.Address__c);
                            }
                        }else if(i == 3){
                            colormap.put(3, new list<String>());
                            colormap.get(i).add('red');
                            URL += '&markers=color:'+colormap.get(i)[0]+'%7Clabel:'+i+'%7C'+s.Latitude__c+','+s.Longitude__c;
                            if(s.Address__c == '' || s.Address__c == null){
                                colormap.get(i).add('Not Provided');
                            }else{
                                colormap.get(i).add(s.Address__c);
                            }
                        }else if(i == 4){
                            colormap.put(4, new list<String>());
                            colormap.get(i).add('yellow');
                            URL += '&markers=color:'+colormap.get(i)[0]+'%7Clabel:'+i+'%7C'+s.Latitude__c+','+s.Longitude__c;
                            if(s.Address__c == '' || s.Address__c == null){
                                colormap.get(i).add('Not Provided');
                            }else{
                                colormap.get(i).add(s.Address__c);
                            }
                        }else if(i == 5){
                            colormap.put(5, new list<String>());
                            colormap.get(i).add('darkblue');
                            URL += '&markers=color:'+colormap.get(i)[0]+'%7Clabel:'+i+'%7C'+s.Latitude__c+','+s.Longitude__c;
                            if(s.Address__c == '' || s.Address__c == null){
                                colormap.get(i).add('Not Provided');
                            }else{
                                colormap.get(i).add(s.Address__c);
                            }
                        }else if(i == 6){
                            colormap.put(6, new list<String>());
                            colormap.get(i).add('green');
                            URL += '&markers=color:'+colormap.get(i)[0]+'%7Clabel:'+i+'%7C'+s.Latitude__c+','+s.Longitude__c;
                            if(s.Address__c == '' || s.Address__c == null){
                                colormap.get(i).add('Not Provided');
                            }else{
                                colormap.get(i).add(s.Address__c);
                            }
                        }else if(i == 7){
                            colormap.put(7, new list<String>());
                            colormap.get(i).add('gray');
                            URL += '&markers=color:'+colormap.get(i)[0]+'%7Clabel:'+i+'%7C'+s.Latitude__c+','+s.Longitude__c;
                            if(s.Address__c == '' || s.Address__c == null){
                                colormap.get(i).add('Not Provided');
                            }else{
                                colormap.get(i).add(s.Address__c);
                            }
                        }else if(i == 8){
                            colormap.put(8, new list<String>());
                            colormap.get(i).add('maroon');
                            URL += '&markers=color:'+colormap.get(i)[0]+'%7Clabel:'+i+'%7C'+s.Latitude__c+','+s.Longitude__c;
                            if(s.Address__c == '' || s.Address__c == null){
                                colormap.get(i).add('Not Provided');
                            }else{
                                colormap.get(i).add(s.Address__c);
                            }
                        }else if(i == 9){
                            colormap.put(9, new list<String>());
                            colormap.get(i).add('olive');
                            URL += '&markers=color:'+colormap.get(i)[0]+'%7Clabel:'+i+'%7C'+s.Latitude__c+','+s.Longitude__c;
                            if(s.Address__c == '' || s.Address__c == null){
                                colormap.get(i).add('Not Provided');
                            }else{
                                colormap.get(i).add(s.Address__c);
                            }
                        }else if(i == 10){
                            colormap.put(10, new list<String>());
                            colormap.get(i).add('lime');
                            URL += '&markers=color:'+colormap.get(i)[0]+'%7Clabel:'+i+'%7C'+s.Latitude__c+','+s.Longitude__c;
                            if(s.Address__c == '' || s.Address__c == null){
                                colormap.get(i).add('Not Provided');
                            }else{
                                colormap.get(i).add(s.Address__c);
                            }
                        }else if(i == 11){
                            colormap.put(11, new list<String>());
                            colormap.get(i).add('aqua');
                            URL += '&markers=color:'+colormap.get(i)[0]+'%7Clabel:'+i+'%7C'+s.Latitude__c+','+s.Longitude__c;
                            if(s.Address__c == '' || s.Address__c == null){
                                colormap.get(i).add('Not Provided');
                            }else{
                                colormap.get(i).add(s.Address__c);
                            }
                        }
                    }
                }
                URL += '&sensor=false';
                mapURL = URL;
        }
    }
}