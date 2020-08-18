public class JobHelper{
	public static void statusCheck(list<job_Yourname__c> l){
		for(job_Yourname__c j:l){                                     //if selected job is active then it cant be delete.
					if(j.Active__c){                 
							j.addError('This Job is active and can not be deleted');
			}
        }
	}

	public static void canCheck(list<job_Yourname__c> l){
   		for(job_Yourname__c c: l){                                  //if no. of hired candidate is greater than no. of position 
       		if(c.Hired_Applicants__c >= c.Number_of_Positions__c){  //then inactivate the job.
           		c.Active__c = false;
			}
		}
	}

	public static void sendEmail(List <Job_Yourname__c> obj){
		List<Messaging.SingleEmailMessage>  mails =new  List<Messaging.SingleEmailMessage>();
    		for(Job_Yourname__c obj1 : obj){                                    //if candidate is hired then send an email 
				if(obj1.Hired_Applicants__c == obj1.Number_of_Positions__c){     //on selected candidate email address.
					Messaging.SingleEmailMessage mail =  new Messaging.SingleEmailMessage();
					List<String> sendTo  =  new List<String>();
            		sendTo.add(obj1.Manager__c);
            		mail.setToAddresses(sendTo);
            		mail.setSubject('Hiring Information');
            		String body = 'All the required candidate has been hired for this job on ' 
                		+ obj1.LastModifiedDate.date();
            		mail.setHtmlBody(body);
            		mails.add(mail);	
			}
		}
	Messaging.sendEmail(mails);
	}
    
	public static void activeJob(list<job_Yourname__c> l){     //For activating the job having higher no. of postion than hired position.
		for(job_Yourname__c c : l){
    		job_Yourname__c c1 = [select Number_of_Positions__c ,Hired_Applicants__c ,Active__c 
                              	from job_Yourname__c where ID =: c.Id];
    			if(c1.Number_of_Positions__c > c1.Hired_Applicants__c && c1.Active__c == false){
      				c1.Active__c = true;
      			update c1;
			}
		}
	}
}