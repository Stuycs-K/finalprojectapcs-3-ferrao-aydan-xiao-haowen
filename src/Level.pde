public abstract class Level {
  ArrayList<Platform> platformList = new ArrayList<Platform>();
  ArrayList<KillPlatform> kilList = new ArrayList<KillPlatform>();
  EndPlatform end;
  Player object;
  
  public ArrayList<Platform> getList() {
    return platformList;
  }
  public void setPlayer(Player p){
    this.object = p;
  }

  }
  public boolean end() {
    end.checkCollision(object);
    return end.completed;
  }
  public void updateLevel() {
    for (Platform e : platformList) {
      e.displayPlatform();
      e.checkCollision(object);
    }
    for(KillPlatform e : killList) {
      e.displayPlatform();
      e.checkCollision(object);
      if (e.collided) {
        this.reset();
        break;
      }
    }
    end.displayPlatform();
  }
  public abstract void reset();
}
