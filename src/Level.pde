public class Level {
  ArrayList<Platform> platformList = new ArrayList<Platform>();
<<<<<<< HEAD
=======
  ArrayList<KillPlatform> kilList = new ArrayList<KillPlatform>();
>>>>>>> Haowen
  EndPlatform end;
  Player object;
  
  public ArrayList<Platform> getList() {
    return platformList;
  }
<<<<<<< HEAD
  
  public boolean end() {
    return end.collided;
  }
  
=======
  public void setPlayer(Player p){
    this.object = p;
  }

  }
  public boolean end() {
    end.checkCollision(object);
    return end.completed;
  }
>>>>>>> Haowen
  public void updateLevel() {
    for (Platform e : platformList) {
      e.displayPlatform();
      e.checkCollision(object);
<<<<<<< HEAD
      if (e.death && e.collided) {
        reset();
        return;
      }
    }
  }
  public void reset() {
    return;
  }
=======
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
>>>>>>> Haowen
}
