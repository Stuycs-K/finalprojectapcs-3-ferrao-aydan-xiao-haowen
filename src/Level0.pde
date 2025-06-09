public class Level0 extends Level {
  boolean createLevel = true;
  public Level0(Player thing) {
    this.player = thing;
    this.end = new EndPlatform(1000, 500, 100, 100);
    reset();
  }
  //Purpose:
  //Introduce basic movement
  public void reset() {
    platformList.clear();
    enemyList.clear();
    platformList.add(new Platform(0, 550, 3000, 50));
    platformList.add(new Platform(800, 400, 200, 20));
    this.end = new EndPlatform(820, 300, 150, 100);
    platformList.add(end);
    player.x = 300;
    player.y = 300;
    player.giveWeapon(this.platformList);
  }
  
  public int getLevelint(){
    return 0;
  }
}
