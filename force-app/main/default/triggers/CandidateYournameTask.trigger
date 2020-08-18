trigger CandidateYournameTask on Candidate_Yourname__c(before insert, before update, before delete
                                                       ,after insert,after update){
	if(trigger.isInsert && trigger.isBefore){
        candidateHelper.salaryCheck(trigger.new);
    }
           
    if(trigger.isInsert && trigger.isBefore){
        candidateHelper.jobCheck(trigger.new);
    }
	
    if((trigger.isUpdate || trigger.isInsert) && trigger.isAfter){
        candidateHelper.dateCheck(trigger.new);
     }
}