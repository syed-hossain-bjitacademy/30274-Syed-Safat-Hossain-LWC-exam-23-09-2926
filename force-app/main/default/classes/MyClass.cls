public class MyClass {
    
    @AuraEnabled(Cacheable=true)
    public static void display(){
        
        //Date d = N_NEXT_DAY:-30;
        List<Opportunity> opp = [SELECT Id, StageName, CloseDate, Name 
                                 FROM Opportunity WHERE CloseDate>=THIS_MONTH];

    	for(Opportunity o: opp){
       		System.debug(o.id + ' ' + o.Name);
    	}
    }
}