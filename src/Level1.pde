public class Level1 extends Level {
  boolean createLevel = true;
  public Level1(Player thing) {
    this.object = thing;
    this.end = new EndPlatform(1000, 500, 100, 100);
  }
  
  public void reset() {
    platformList.add(new Platform(50, 580, 5000, 10));
  }
}
