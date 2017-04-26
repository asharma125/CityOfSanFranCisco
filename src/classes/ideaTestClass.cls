@isTest
private class ideaTestClass{
    
    static testMethod void IdeaTest(){
        list<Community> comList = [SELECT Id,IsActive,Name FROM Community where isActive = true and Name = 'Internal Community' limit 1];
        
        Idea Idea1 = new Idea ( 
            Title = 'Test Idea',
            Body = 'Test Body',
            CommunityId = comList[0].Id
        );
        insert Idea1;
        Idea1.Body = 'Test body 2';
        update Idea1;
        
        IdeaComment IC = new IdeaComment(
            IdeaId = Idea1.Id,
            CommentBody = 'Test Comment'
        
        );
        insert IC;
    
    
    }

}