public class Camera {
  Player object;
  ArrayList<Platform>  bigList;
  int currentLeft = 0;
  int currentRight = 1500;
  ArrayList<Enemy> enemyList;
  boolean moving = false;
  public Camera(Player a, ArrayList<Platform> list, ArrayList<Enemy> b) {
    object = a;
    bigList = list;
    enemyList = b;
  }

  
  public void moveCamera() {
    float originalX = object.x;
    if (object.x >= currentRight - 300 && object.movingRight) {
      moving = true;
      for (Platform thing : bigList) {
        thing.x -= 10;
      }
      for (Enemy enemy : enemyList) {
        if (enemy instanceof GhostEnemy && object.x - enemy.x > 0) {
          enemy.x += enemy.dx;
          enemy.dx = 0;
        }
        else {
          enemy.x -= 10;
          if (enemy instanceof RangeEnemy) {
            RangeEnemy Ranger = (RangeEnemy) enemy;
            for (Bullet b : Ranger.bullets) {
              b.pos.x -= 10;
            }
          }
        }
      }
      object.x = originalX;
    }
    else if (object.x <= currentLeft + 300 && object.movingLeft) {
      moving = true;
      for (Platform thing : bigList) {
        thing.x += 10;
      }
       for (Enemy enemy : enemyList) {
         if (enemy instanceof GhostEnemy && object.x - enemy.x < 0) {
          enemy.x += enemy.dx;
          enemy.dx = 0;
         }
         else{
           enemy.x += 10;
           if (enemy instanceof RangeEnemy) {
           RangeEnemy Ranger = (RangeEnemy) enemy;
           for (Bullet b : Ranger.bullets) {
             b.pos.x += 10;
           }
          }
        }
       }
      object.x = originalX;
    }
    else {
      moving = false;
    }
  }
}
