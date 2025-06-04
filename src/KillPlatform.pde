public class KillPlatform extends Platform {
  public KillPlatform(float x, float y, float xLength, float yLength) {
    super(x, y, xLength, yLength);
    end = false;
    this.death = true;
    collided = false;
  }
  
  public void displayPlatform() {
    fill(255, 0, 0);
    rect(x, y, xLength, yLength);
  }
  
  public void checkCollision(Player p) {
    collided = false;
    if (
      p.x + 25 > x &&
      p.x - 25 < x + xLength &&
      p.y + 25 > y &&
      p.y - 25 < y + yLength
    ) {
      collided = true;
    }
  }
}  
