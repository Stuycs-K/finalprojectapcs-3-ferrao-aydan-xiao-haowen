public class Level1 extends Level {
  public Level1(Player thing) {
    this.object = thing;
    this.end = new EndPlatform(1000, 500, 100, 100);
  }
  
  public void reset() {
    platformList.add(new Platform(50, 580, 5000, 10));
    platformList.add(new KillPlatform(100, 400, 200, 10));
    platformList.add(new KillPlatform(-200, 580, 150, 10));
    object.x = 300;
    object.y = 300;
  }
}
