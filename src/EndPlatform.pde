public class EndPlatform extends Platform{
  boolean completed = false; 
  public EndPlatform(float x, float y, float xLength, float yLength) {
    super(x, y, xLength, yLength);
  }
  public void displayPlatform() {
    fill(0, 0, 255);
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
      completed = true;
    }
    completed = false;
  }
}
