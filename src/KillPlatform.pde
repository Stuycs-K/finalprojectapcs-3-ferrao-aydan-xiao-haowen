public class KillPlatform extends Platform {
  boolean collided = false;
  
  public KillPlatform(float x, float y, float xLength, float yLength) {
    super(x, y, xLength, yLength);
    end = false;
    death = true;
  }
  
  public void displayPlatform() {
    fill(255, 0, 0);
    rect(x, y, xLength, yLength);
  }
  
 public void checkCollision(Player p) {
    float playerLeft = p.x - 25;
    float playerRight = p.x + 25;
    float playerTop = p.y - 25;
    float playerBottom = p.y + 25;

    boolean overlapX = playerRight  > x && playerLeft < x + xLength;
    boolean overlapY = playerBottom > y && playerTop  < y + yLength;
    
    collided = overlapX && overlapY;
  }
  
  public boolean hasCollided(){
    return collided;
  }
}  
