public class Bullet{
  PVector pos, vel;
  float radius = 6;
  boolean isAlive = true;
  
  Bullet(float startX, float startY, float targetX, float targetY){
    pos = new PVector(startX, startY);
    PVector dir = new PVector(targetX - startX, targetY - startY);
    dir.normalize();
    vel = dir.mult(8);
  }
}
