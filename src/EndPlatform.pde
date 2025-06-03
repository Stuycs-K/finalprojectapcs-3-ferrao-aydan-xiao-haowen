public class EndPlatform extends Platform{
  boolean collided = false;
  public EndPlatform(float x, float y, float xLength, float yLength) {
    super(x, y, xLength, yLength);
    end = true;
    death = false;
  }
  public void displayPlatform() {
    fill(0, 0, 255);
    rect(x, y, xLength, yLength);
  }
  public void checkCollision(Player p) {
    if (
      p.x + 25 > x &&
      p.x - 25 < x + xLength &&
      p.y + 25 > y &&
      p.y - 25 < y + yLength
    ) {
      collided = true;
    }
  }

  public boolean isCompleted(){
    return collided;
  }
}
