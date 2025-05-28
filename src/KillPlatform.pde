public class KillPlatform extends Platform {
  float x;
  float y;
  float xLength;
  float yLength;
  boolean collided = false;
  
  public KillPlatform(float x, float y, float xLength, float yLength) {
    super(x, y, xLength, yLength);
  }
  
  public void displayPlatform() {
    fill(0, 255, 0);
    rect(x, y, xLength, yLength);
  }
  
 public void checkCollision(Player p) {
    float playerBottom = p.y + 25;
    float playerLeft = p.x - 25;
    float playerRight = p.x + 25;

    if (
      playerBottom + p.dy >= y &&
      playerBottom <= y + yLength &&    
      playerRight > x &&         
      playerLeft < x + xLength &&
      p.dy >= 0            
    ) {
      collided = true;
      //level reset
    } else {
      collided = false;
    }
  }
}  
