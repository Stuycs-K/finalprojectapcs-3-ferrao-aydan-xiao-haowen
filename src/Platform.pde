public class Platform {
  float x;
  float y;
  float xLength;
  float yLength;
  boolean normal = true;
  boolean collided = false;
  public Platform(float x, float y, float xLength, float yLength) {
    this.x = x;
    this.y = y;
    this.xLength = xLength;
    this.yLength = yLength;
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
      playerBottom <= y + yLength - 10 &&    
      playerRight > x &&         
      playerLeft < x + xLength - 10 &&
      p.dy >= 0            
    ) {
      p.y = y - 25; 
      p.dy = 0;      
    }
  }
}  
