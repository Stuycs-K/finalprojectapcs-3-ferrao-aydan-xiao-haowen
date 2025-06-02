public class KillPlatform extends Platform {
  boolean collided = false;
  boolean normal = false;
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
      collided = true;
    }
    else {
      collided = false;
    }
  }
}  
