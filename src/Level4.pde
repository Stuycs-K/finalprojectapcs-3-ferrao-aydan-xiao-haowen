public class Level4 extends Level {
  boolean createLevel = true;
  public Level4(Player thing) {
    this.player = thing;
    this.end = new EndPlatform(1000, 500, 100, 100);
    reset();
  }
  //PURPOSE:
  //Real level that you need to win.
  public void reset() {
    platformList.clear();
    platformList.add(new Platform(0, 550, 1200, 50));
    platformList.add(new Platform(800, 400, 200, 20));
    //enemy at (850, 400);
    this.end = new EndPlatform(820, 300, 150, 100);
    platformList.add(end);
    player.x = 300;
    player.y = 300;
    player.giveWeapon(this.platformList);
  }
  
  public int getLevelint(){
    return 4;
  }
}
