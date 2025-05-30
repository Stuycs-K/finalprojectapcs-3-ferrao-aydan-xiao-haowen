public abstract class Level {
  ArrayList<Platform> platformList = new ArrayList<Platform>();
  EndPlatform end;
  Player object;
  
  public ArrayList<Platform> getList() {
    return platformList;
  }
  
  public boolean end() {
    end.displayPlatform();
    return end.completed;
  }
  public void updateLevel() {
    for (Platform e : platformList) {
      e.displayPlatform();
      e.checkCollision(object);
      if (e.collided) {
         this.reset(); 
      }
    }
  }
  public abstract void reset();
}
