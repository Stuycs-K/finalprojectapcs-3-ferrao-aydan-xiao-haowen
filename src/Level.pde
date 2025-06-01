public abstract class Level {
  ArrayList<Platform> platformList = new ArrayList<Platform>();
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
  }
  public abstract void reset();
}
