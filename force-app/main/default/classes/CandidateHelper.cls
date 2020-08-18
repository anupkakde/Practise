public class CandidateHelper{
	public static void salaryCheck(list<candidate_Yourname__c> l){
		for(candidate_yourname__c c:l){           //if expected salary field is empty then show error..
            if(c.Expected_Salary__c == Null){
			c.addError('Please specify the expected salary!!');
            }
		}
	}

	public static void jobCheck(List<Candidate_Yourname__c> l){
		for(Candidate_Yourname__c c: l){
			ID JobID = c.Job__c;              //if selected job is inactive then show error..
			Job_Yourname__c  j = [Select Active__c from Job_Yourname__c Where ID = :JobID];
			if(!j.Active__c){
				c.addError('This job is not active. You can not apply for this job.');
			}
		}
	}

	public static void dateCheck(list<candidate_Yourname__c> l){
		for(candidate_Yourname__c can:l){                 //if application date is not equal to created date then corred it.
			if(can.Application_Date__c != can.CreatedDate){
				candidate_Yourname__c  c = [Select CreatedDate,Application_Date__c 
                                        	from candidate_Yourname__c Where ID =: can.Id];
				c.Application_Date__c = c.CreatedDate;
				update c;
			}
		}
	}
}