public with sharing class Project0B {

    public static Integer nFibonacci (Integer n) {
        
        Integer pf = 0;
        Integer cf = 1;
        Integer nf;

        if (n < 0) {
            System.debug('you must imput a non-negative number');
            return 0;
        }

        if (n == 0) {
            return 0;
        }

        while (n > 1) {
            nf = cf + pf;
            pf = cf;
            cf = nf;
            n--;
        }

        return cf;

    }

    public static  List<Integer> sortList( List<Integer> intList ) {
            
        for (Integer I = intList.size(); I > 0; I--) {
            
            Integer x = 0;
            
            while (x < i - 1) {

                if (intlist[x] > intlist[x+1]) {
                    Integer save = intlist[x];
                    intlist[x] = intlist[x+1];
                    intlist[x+1] = save;
                }

                x++;
            }

        }

    return intList;

    }

    public static Integer nFactorial( Integer n) {

        if (n < 0) {
            System.debug('you must imput a non-negative number');
            return 0;
        }

        if (n == 0) {
            return 1;
        }
        Integer answer = 1;

        while (n > 0) {

            answer = answer * n;
            n--;

        }

        return answer;

    }

    public static List<Integer> rotateLeftNTimes( List<Integer> nList, Integer n) {
        
            for (Integer i = 0; i < n; i++) {
                integer save = nList[0];
                integer s = 0;

                while ( s < nList.size() - 1) {
                nList[s] = nList[s+1];
                s++;
                }
                nList [nlist.size() - 1] = save;
            }
            return nList;
    }

    public static String isaBracket(string b) {
        if (b == '(') {
            return 'open';
        }
        if (b == '[') {
            return 'open';
        }
        if (b == '{') {
            return 'open';
        }
        if (b == ')') {
            return 'closed';
        }
        if (b == ']') {
            return 'closed';
        }
        if (b == '}') {
            return 'closed';
        }

        return 'false';
    }

    public static Boolean bracketsAreBalanced( String s ) {
                
        //List<String> deck = new List<String>();
        String[] deck = new string[0];

        
        //The deck is the analogy that makes the most sense to me

        for(integer i = 0; i < s.length(); i++) {
            string x = s.substring(i, i + 1);
            /*this for loop splits the string into 1 character long strings
            * and runs the for loop on each individual character. */

            if(isaBracket(x) == 'open') {
                deck.add(x);
            }
        
            else if(isaBracket(x) == 'closed') { //this switch converts the 1 character string into its mirror bracket
                switch on x {
                    when ']' { //these show up red to sho a problem. it is cute.
                        x = '[';
                    }
                    when ')' {
                        x = '(';
                    }
                    when '}' {
                        x = '{';
                    }
                    when else {
                        System.debug('This message should never run. check isabracket == closed');
                    }
                }
                
                if (deck.isEmpty()) //this is to make sure that the list isn't empty
                    return false;

                if (x != deck.remove(deck.size() - 1)) {
                    return false;
                }
            
            }

            /*
            else if(isaBracket(x) == 'false') {
                return false;
            } */

        }

        if (deck.isEmpty()){
            return true;
        } else {
            return false;
        }
        
    }

    public static void updateAccountSize( ) {
        Account[] sizeupdate = Database.query('SELECT NumberOfEmployees FROM account');

        for (Account record : sizeupdate) {
            if (record.NumberOfEmployees <= 1000){
                record.size__c = 'Small';
            }
            else if (record.NumberOfEmployees > 1000 && record.NumberOfEmployees <= 10000) {
                record.size__c = 'Medium';
            }
            else if (record.NumberOfEmployees > 10000) {
                record.size__c = 'Large';
            }
            else {
                System.debug('this statement should not run. check size test');
            }

        }

        update sizeupdate;

    }
/*
    public static void updateCALeads( ) {
        List<List<sobject>> SearchQuery = [FIND 'ca' RETURNING lead (stateCode)];
        //This almost definitely would have been simpler if I used SOQL rather than SOSL

        List<Lead> CaLeads = SearchQuery[0];

        for (lead record : CaLeads) {
            if (record.stateCode == 'CA') {
            record.status = 'Closed Not Converted';
            record.Description = 'We are no longer doing business in California.';

            }
        }

        update CaLeads;
    }
    */
    public static void closePastDueOpportunities( ) {
        List<Opportunity> PastDueOpps = Database.query('SELECT id FROM Opportunity WHERE StageName != \'Closed_Won\' AND CloseDate < TODAY');
        
        for (Opportunity Opp : PastDueOpps) {
            opp.StageName = 'Closed_Lost';
        }

        update PastDueOpps;

    }

}
