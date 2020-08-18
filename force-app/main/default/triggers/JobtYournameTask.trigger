trigger JobtYournameTask on Job_Yourname__c(before insert,before delete,before update,after update){
	
    if(trigger.isBefore && trigger.isDelete){
        JobHelper.statusCheck(trigger.old);
    	}
 	
    if(trigger.isBefore &&(trigger.isInsert || trigger.isUpdate)){
        JobHelper.canCheck(trigger.new);
    	}	 
     
    if((trigger.isBefore && trigger.isInsert) || (trigger.isBefore && trigger.isUpdate)){
        JobHelper.sendEmail(trigger.new);
        }

    if(trigger.isAfter && trigger.isUpdate){
        JobHelper.activeJob(trigger.old);
        }
}