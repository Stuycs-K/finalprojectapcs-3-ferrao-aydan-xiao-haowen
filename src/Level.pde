public abstract class Level {
  ArrayList<Platform> platformList = new ArrayList<Platform>();
  ArrayList<KillPlatform> kilList = new ArrayList<KillPlatform>();
  EndPlatform end;
  Player object;
  
  public ArrayList<Platform> getList() {
    return platformList;
  }
  
  public boolean end() {
    return end.completed;
  }
  public void updateLevel() {
    for (Platform e : platformList) {
      e.displayPlatform();
      e.checkCollision(object);
    }
    for(KillPlatform e : killList) {
      e.displayPlatform();
      e.checkCollision();
      if (e.collided) {
        this.reset();
      }
    }
  }
  public abstract void reset();
}
