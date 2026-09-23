public class MyClass {
    
    @AuraEnabled(Cacheable=true)
    public static List<Opportunity> display(){
        
        List<Opportunity> opp = [SELECT Id, StageName, CloseDate, Name FROM Opportunity WHERE CloseDate>=THIS_MONTH];

    	for(Opportunity o: opp){
       		System.debug(o.id + ' ' + o.Name);
    	}

        return opp;
    }
}