trigger TriggerIdeaComment on IdeaComment ( After Insert, After Update) {
    map<Id,Idea> IdeaMap = new map<Id,Idea>();
    for( IdeaComment IC : trigger.new ){
        IdeaMap.put( IC.IdeaId, new Idea(  Id = IC.IdeaId, Status = 'Active'  ) );
    }
    update IdeaMap.values();
}