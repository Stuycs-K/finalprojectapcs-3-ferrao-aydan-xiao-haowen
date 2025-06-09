public class StickyPlatform extends Platform {
  float x;
  float y;
  float xLength;
  float yLength;
  boolean end;
  boolean death;
  boolean collided = false;

  public StickyPlatform(float x, float y, float xLength, float yLength) {
    super(x, y, xLength, yLength);
    end = false;
    death = false;
    collided = false;
  }

  public void displayPlatform() {
    fill(255, 255, 0);
    rect(x, y, xLength, yLength);
  }

  public void checkCollision(Player p) {
    collided = false;
    if (
      p.x + 25 > x && p.x - 25 < x + xLength &&
      p.y + 25 > y && p.y - 25 < y + yLength
    ) {
      collided = true;
      float overlapTop = (p.y + 25) - y;
      float overlapBottom = (y + yLength) - (p.y - 25);
      float overlapLeft = (p.x + 25) - x;
      float overlapRight = (x + xLength) - (p.x - 25);

      float minVertical = Math.min(overlapTop, overlapBottom);
      float minHorizontal = Math.min(overlapLeft, overlapRight);

      if (minVertical < minHorizontal) {
        if (overlapTop < overlapBottom) {
            p.y = y - 25;
          p.dy = 0;
        } else {
          p.y = y + yLength + 25;
          if (p.dy < 0) p.dy = 0;
        }
      } else {
        if (overlapLeft < overlapRight) {
          p.x = x - 25;
        } else {
          p.x = x + xLength + 25;
        }
      }
    }
  }
}
