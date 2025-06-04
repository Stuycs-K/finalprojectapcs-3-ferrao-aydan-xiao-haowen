public class Level {
  ArrayList<Platform> platformList = new ArrayList<Platform>();
  EndPlatform end;
  Player object;

  public ArrayList<Platform> getList() {
    return platformList;
  }

  public boolean end() {
    return end.collided;
  }

public void updateLevel() {
  boolean resetNeeded = false;
  
  for (Platform e : platformList) {
    e.displayPlatform();
    e.checkCollision(object);
    if (e.death && e.collided) {
      resetNeeded = true;
    }
  }
  
  if (resetNeeded) {
    reset();
  }
}

  public void reset() {
    return;
  }
}
