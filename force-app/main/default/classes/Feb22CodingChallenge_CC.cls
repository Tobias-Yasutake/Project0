public class Feb22CodingChallenge_CC {  
    public static List<Feb22CodingChallenge_Wrapper> getOppRevByAccount2() {
        List<AggregateResult> ars = [SELECT SUM(ExpectedRevenue) sumRev, Account.Name name FROM Opportunity GROUP BY Account.Name 
                                    HAVING SUM(ExpectedRevenue) > 0];
        //Map<String, Double> oppRevByAccount2 = new Map<String, Double>();
        
        List<Feb22CodingChallenge_Wrapper> OppRevByAccount2 = new List<Feb22CodingChallenge_Wrapper>();
        for(AggregateResult ar : ars) {
            Feb22CodingChallenge_Wrapper record = new Feb22CodingChallenge_Wrapper(ar.get('name'), ar.get('sumRev'));
            OppRevByAccount2.add(record);

        }
        
        return oppRevByAccount2;
    }
}