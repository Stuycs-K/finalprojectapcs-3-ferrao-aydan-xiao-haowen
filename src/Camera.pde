public class Camera {
  Player object;
  ArrayList<Platform>  bigList;
  int currentLeft = 0;
  int currentRight = 600;
  boolean enemies;
  
  public Camera(Player a, ArrayList<Platform> list) {
    object = a;
    bigList = list;
    enemies = false;
  }

  
  public void moveCamera() {
    float originalX = object.x;
    if (object.x >= currentRight - 150 && object.movingRight) {
      for (Platform thing : bigList) {
        thing.x -= 10;
      }
      object.x = originalX;
    }
    else if (object.x <= currentLeft + 150 && object.movingLeft) {
      for (Platform thing : bigList) {
        thing.x += 10;
      }
      object.x = originalX;
    }
  }
}
