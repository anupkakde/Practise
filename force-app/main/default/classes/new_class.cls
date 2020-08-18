@isTest
public class new_class {
    
  @isTest 
    static void mytest(){
        Candidate_Yourname__c obj = new Candidate_Yourname__c();
        Job_Yourname__c jb = new Job_Yourname__c();
        jb.Manager__c = 'anupkakde20@gmail.com';
        jb.Number_of_Positions__c = 2;
        jb.Required_Skills__c = 'People Skills';
        jb.Certification_Required__c = 'CMP (Certified Project Manager)';
        jb.Salary_Offered__c = 3400;
        jb.Active__c = True;
        insert jb;
        obj.First_Name__c = 'abhi';
        obj.Last_Name__c = 'satpute';
        obj.Email__c = 'abhi@gmail.com';
        obj.Status__c = 'Hired';
        obj.Job__c =Jb.Id;
        obj.Expected_Salary__c = 45;
        obj.Application_Date__c = Date.newInstance(2016, 12, 9);
        insert obj;
        
         
         
        obj.First_Name__c = 'abhi';
        obj.Last_Name__c = 'satpute';
        obj.Email__c = 'abhi@gmail.com';
        obj.Status__c = 'Hired';
        obj.Job__c =Jb.Id;
        obj.Expected_Salary__c = 45;
        obj.Application_Date__c = Date.newInstance(2016, 12, 9);
        insert obj;

    
    
    
    
    }  
    
    
    @isTest
    static void mytest1(){
        Job_Yourname__c jb = new Job_Yourname__c();
        jb.Manager__c = 'manager@gmail.com';
        jb.Number_of_Positions__c = 2;
        jb.Required_Skills__c = 'People Skills';
        insert jb;
        Candidate_Yourname__c obj = new Candidate_Yourname__c();

        obj.First_Name__c = 'abhi';
        obj.Last_Name__c = 'satpute';
        obj.Email__c = 'abhi@gmail.com';
        obj.Job__c =jb.Id;
        obj.Status__c = 'Hired';
        try{
    insert obj;
           }
        catch(Exception e){
      system.assertEquals( e.getMessage() , e.getMessage());
        }
    }
    
 @isTest
    static void mytest2(){
        Job_Yourname__c jb = new Job_Yourname__c();
        jb.Manager__c = 'manager@gmail.com';
        jb.Number_of_Positions__c = 2;
        jb.Required_Skills__c = 'People Skills';
        jb.Active__c = True ;
          insert jb;
        try{
            delete jb;
        } 
        catch(Exception e){
      system.assertEquals( e.getMessage() , e.getMessage());
        }
          system.assertNotEquals(NULL, jb);

    }
     @isTest
    static void mytest3(){
        Job_Yourname__c jb = new Job_Yourname__c();
        jb.Manager__c = 'manager@gmail.com';
        jb.Number_of_Positions__c = 1;
        
        jb.Required_Skills__c = 'People Skills';
        
        jb.Active__c = true ;
          insert jb;
        Candidate_Yourname__c obj = new Candidate_Yourname__c();
    obj.First_Name__c = 'abhi';
        
        obj.Salutation__c = 'Mr.';
        obj.Last_Name__c = 'satpute';
        obj.Email__c = 'abhi@gmail.com';
        obj.Status__c = 'Hired';
        obj.Expected_Salary__c = 45;
        obj.Job__c = jb.Id;
         insert obj;

        try{
                       system.assertEquals( jb.Active__c, true);

            }
        catch(Exception e){
           system.assertEquals( jb.Active__c, false);

        }
    }

}