public class CLS_Location {
 
Public String selectLocation{get;set;}
public String selectCity{get;set;}
public String selectPropType{get;set;}
public String selectPropCat{get;set;}
public String selectLocationsub{get;set;}
public Boolean Edit{get;set;}
//public Location__c location{get;set;}
public Boolean EditMode{set;get;} 
public Property__c property{get;set;} 
private final Location__c location;
public Property__c objProperty;
public list<location__c> localst;
public list<location__c> lstcities;
   public CLS_Location(ApexPages.StandardController controller) {
        
        Edit=False;
        objProperty= new Property__c();
        objProperty= (Property__c)controller.getRecord();
           
        lstcities= new list<location__c>();
       
   }
   
  
   /************* For Selecting value from Location City Field- Controlling of Property Type***************/
   
   public List<SelectOption> GetCity(){
   lstcities=[Select location_city__c from location__c];
   List<SelectOption> lstcity = new List<SelectOption>();
    /* Add a null option to force the user to make a selection. */
       lstcity .add(new SelectOption('', '- None -')); 
       
       Set<string> dupcity= new set<string>();
       If(lstcities.size()!=null){
       for (location__c t1:lstcities){
       If(t1.location_city__c!=null){
       If(!dupcity.contains(t1.location_city__c)){
       dupcity.add(t1.location_city__c);
       lstcity.add(new SelectOption(t1.location_city__c, t1.location_city__c));
       }
       }
         }
     }
      return lstcity;
   }
   
    public List<SelectOption> GetPropType(){
   List<SelectOption> lstproptype = new List<SelectOption>();
    /* Add a null option to force the user to make a selection. */
      lstproptype.add(new SelectOption('', '- None -')); 
      system.debug('@@@@'+selectcity);
      Set<string> dup= new set<string>();
   if(selectCity!=null){
   
      list<Location__c> loc = new List<Location__c>();
      loc=[select id,name,Location_City__c,Property_type__c from Location__c where Location_City__c =:selectCity];
      If(loc.size()!=0){
      for(Location__c l:loc){
      If(l.Property_type__c!=null)
      If(!dup.contains(l.Property_type__c)){
      dup.add(l.Property_type__c);
        lstproptype .add(new SelectOption(l.Property_type__c,l.Property_type__c));
        }
        }
       }
     }
      return lstproptype;
   }
   /****************Select Field From Property category dependent of Property Type************/
   Public List<SelectOption> GetPropcat(){
   List<SelectOption> lstCat =new List<SelectOption>();
   /**Add null option to  force user to make a selection.*/
   lstCat.add(new SelectOption('', '- None -'));
   set<string> duppropcat= new set<string>(); 
   system.debug('**list Category'+selectPropType);
   if(selectPropType!=null){
     List<Location__c> lcCat = new List<Location__c>();
     lcCat=[select name,Prop_Category__c,Property_type__c,Location_City__c from Location__c where Property_type__c=:selectPropType AND Location_City__c=: selectCity];
     If(lcCat.size()!=null){
     for(Location__c pro:lcCat){
     If(pro.Prop_Category__c!=null){
     if(!duppropcat.contains(pro.Prop_Category__c)){
        duppropcat.add(pro.Prop_Category__c);
        lstCat.add((new SelectOption(pro.Prop_Category__c,pro.Prop_Category__c)));
        }
        }
        }
     }
    } 
     return lstCat;
   }
   
   /****Select Location value dependent of Prop Category********/
   
    public List<SelectOption> GetLocation(){
    List<SelectOption> lstloc = new List<SelectOption>();
   /* Add a null option to force the user to make a selection. */
       lstloc.add(new SelectOption('', '- None -')); 
       set<string> duploc= new set<string>();
       system.debug('**list location**'+selectLocation);
        if(selectPropCat!=null){
      list<location__c> loclst= new list<location__c>([select name,locations__c,Prop_Category__c from Location__c where Prop_Category__c=:selectPropCat AND Property_type__c=:selectPropType AND Location_City__c=: selectCity]);
       If(loclst.size()!=0){
         for (location__c t:loclst){
         if(t.locations__c!=null){
         If(!duploc.contains(t.locations__c)){
         duploc.add(t.locations__c);
         lstloc.add(new SelectOption(t.locations__c, t.locations__c));
         }         
         }
         }
         }
        } 
      return lstloc ;
    }  
    public List<SelectOption> Getlocationsub(){
    List<SelectOption> lstsubloc = new List<SelectOption>();
   /* Add a null option to force the user to make a selection.  */
       lstsubloc.add(new SelectOption('', '- None -')); 
       system.debug('**list locationsub'+selectLocationsub);
       set<string> duplocsub= new set<string>();
       if(selectLocation!=null){
        system.debug('**list sub loc**'+lstsubloc);
        list<location__c> loclst= new list<location__c>([select name,Location_Sub__c,Locations__c,Location_city__c,Prop_Category__c,Property_Type__c from Location__c where Locations__c=:selectLocation AND Prop_Category__c=:selectPropCat AND Property_type__c=:selectPropType AND Location_City__c=: selectCity]);
            system.debug('**locklist**'+loclst);
            If(loclst.size()!=0){
             for (location__c t:loclst){
             If(t.location_sub__c!=null){
              system.debug('**ListLocationSub**'+selectLocation);
              system.debug('**duplicate Sub Loc**'+duplocsub.contains(t.location_sub__c));
              For(String s:t.location_sub__c.split(';')){
               If(!duplocsub.contains(s)){
                duplocsub.add(s);
                lstsubloc.add(new SelectOption(s, s)); 
                }        
                }
              }
            }
          }  
        return lstsubloc ;
      }
      return null;
    } 
    
    public void MyEdit(){
        
     localst=new list<location__c>([select Location_City__c from location__c]);
     
     //GetCity();
     edit=true;
        //return null;
    }
    
    public void MySave() {
    property__c p= new property__c(id=objProperty.id);
    p.Location_Sub__c=selectLocationsub;
    p.Location_City__c=selectCity;
    p.Location__c=selectLocation;
    p.Prop_type__c=selectPropType;
    p.Prop_Category__c=selectPropCat;
    update p;
    edit=false;
   // pagereference page= new pagereference('/'+objProperty.id);
     //   return page;
    }
    
    
    public PageReference MyCancel() { 
    edit=false;
    pagereference page= new pagereference('/'+objProperty.id);
        return page;
    
        
    }

  }