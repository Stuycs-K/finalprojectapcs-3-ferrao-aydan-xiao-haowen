public class Level4 extends Level {
  boolean createLevel = true;
  public Level4(Player thing) {
    this.object = thing;
    this.end = new EndPlatform(1000, 500, 100, 100);
  }
  
  public void updateLevel() {
    textSize(50);
    text("You Win!", 100, 100);
    for (Platform e : platformList) {
      e.displayPlatform();
      e.checkCollision(object);
      if (e.death && e.collided) {
        reset();
        return;
      }
    }
  }
  public void reset() {
    platformList.add(new Platform(-10000, 3000000, 5000, 10));
    this.end = new EndPlatform(1000, 10000, 100, 100);
    platformList.add(end);
    
  }
}
