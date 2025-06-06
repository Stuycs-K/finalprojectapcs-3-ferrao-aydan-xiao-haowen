public class Level0 extends Level {
  boolean createLevel = true;
  public Level0(Player thing) {
    this.object = thing;
    this.end = new EndPlatform(1000, 500, 100, 100);
    reset();
  }
  
  public void reset() {
    platformList.clear();
    platformList.add(new Platform(0, 550, 1200, 50));
    platformList.add(new Platform(800, 400, 200, 20));
    this.end = new EndPlatform(820, 300, 150, 100);
    platformList.add(end);
    object.x = 300;
    object.y = 300;
    object.giveWeapon(this.platformList);
  }
}
