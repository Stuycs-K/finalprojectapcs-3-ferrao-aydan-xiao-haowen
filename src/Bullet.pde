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
  
  public void update(ArrayList<Platform> platforms){
    pos.add(vel);
    if (pos.x < 0 || pos.x > width || pos.y < 0 || pos.y > height){
      isAlive = false;
      return;
    }
    for (int i = 0; i < platforms.size(); i++){
      Platform p = platforms.get(i);
      if (pos.x >= p.x && pos.x <= p.x + p.xLength && pos.y >= p.y && pos.y <= p.y + p.yLength){
        isAlive = false;
        break;
      }
    }
  }
  
  public void display(){
    fill(255, 100, 0);
    noStroke();
    ellipse(pos.x, pos.y, radius * 2, radius * 2);
  }
}
