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
    for (Platform e : platformList) {
      e.displayPlatform();
      e.checkCollision(object);
      if (e.death && e.collided) {
        reset();
        return;
      }
    }
  }
  public void reset() {
    return;
  }
}
