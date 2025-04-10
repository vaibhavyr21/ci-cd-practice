trigger accountTrigger on Account (after insert) {
    set<Id> accId = new set<Id>();
    for(account ac : trigger.new){
        accId.add(ac.id);
    }
    list<contact> conUpdates = new list<Contact>();
    list<contact> conlist = [select Id, Name, email, accountid from contact where accountid =: accId];
   
    for(contact con : Conlist){
       contact co = new contact(id=con.id, email='test@gmail.com');
        conUpdates.add(co);
    }
    
}