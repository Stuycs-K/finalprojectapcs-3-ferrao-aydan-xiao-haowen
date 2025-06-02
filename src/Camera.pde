public class Camera {
  Player object;
  ArrayList<Platform>  bigList;
  int currentLeft = 0;
  int currentRight = 600;
  
  public Camera(Player a, ArrayList<Platform> list) {
    object = a;
    bigList = list;
  }

  
  public void moveCamera() {
    float originalX = object.x;
    if (object.x >= currentRight - 100 && object.movingRight) {
      for (Platform thing : bigList) {
        thing.x -= 10;
      }
      object.x = originalX;
    }
    else if (object.x <= currentLeft + 100 && object.movingLeft) {
      for (Platform thing : bigList) {
        thing.x += 10;
      }
      object.x = originalX;
    }
  }
}
