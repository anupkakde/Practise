public class CandidateInsert{
		public CandidateInsert(){
         		candidateDetail = new Candidate_Yourname__c();
        	}
public PageReference insertMe(){
        //To insert Candidate record..
        insert candidateDetail;   
        return null;
    }
public Candidate_Yourname__c candidateDetail { get; set; }
}