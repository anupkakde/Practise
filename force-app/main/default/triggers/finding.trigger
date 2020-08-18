trigger finding on Job_Yourname__c (before insert,after insert,before update,after update,before delete,after undelete) {
    if(trigger.isBefore &&  trigger.isInsert)
    {
        system.debug('before insert trigger.new==' + trigger.new);
         system.debug('before insert trigger.old==' + trigger.old);
                 system.debug('before insert trigger.newMap==' + trigger.newMap);
         system.debug('before insert trigger.oldMap==' + trigger.oldMap);

    }
    if(trigger.isAfter &&  trigger.isInsert)
    {
        system.debug('after insert trigger.new==' + trigger.new);
         system.debug('after insert trigger.old==' + trigger.old);
                 system.debug('after insert trigger.newMap==' + trigger.newMap);
         system.debug('after insert trigger.oldMap==' + trigger.oldMap);


    }
    if(trigger.isBefore &&  trigger.isUpdate)
    {
        system.debug('before update trigger.new==' + trigger.new);
         system.debug('before update trigger.old==' + trigger.old);
                 system.debug('before update trigger.newMap==' + trigger.newMap);
         system.debug('before update trigger.oldMap==' + trigger.oldMap);

    }
    if(trigger.isAfter &&  trigger.isUpdate)
    {
        system.debug('after update trigger.new==' + trigger.new);
         system.debug('after update trigger.old==' + trigger.old);
         system.debug('after update trigger.newMap==' + trigger.newMap);
         system.debug('after update trigger.oldMap==' + trigger.oldMap);

    }
    if(trigger.isBefore &&  trigger.isdelete)
    {
        system.debug('before delete trigger.new==' + trigger.new);
         system.debug('before delete trigger.old==' + trigger.old);
         system.debug('before delete trigger.newMap==' + trigger.newMap);
         system.debug('before delete trigger.oldMap==' + trigger.oldMap);

    }
    if(trigger.isAfter &&  trigger.isundelete)
    {
        system.debug('after undelete trigger.new==' + trigger.new);
         system.debug('after undelete trigger.old==' + trigger.old);
         system.debug('after undelete trigger.newMap==' + trigger.newMap);
         system.debug('after undelete trigger.oldMap==' + trigger.oldMap);

    }
   

}