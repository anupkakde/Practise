public class JobInsert{
	public PageReference updatetMe(){
        //To update the Job record..
        jobDetail = [Select Manager__c,Number_of_Positions__c,Description__c,Salary_Offered__c
                      ,Expires_On__c,Required_Skills__c,Qualification_Required__c,Certification_Required__c from Job_Yourname__c];
        return null;
    }
	public JobInsert(){
     		jobDetail = new Job_Yourname__c();
    }
	public Job_Yourname__c jobDetail { get; set; }
  	public pagereference insertMe(){
        //To insert the Job record..
        insert jobDetail;
        return null;
    }
}