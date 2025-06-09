public class Level5 extends Level {
  boolean createLevel = true;
  public Level5(Player thing) {
    this.player = thing;
    this.end = new EndPlatform(1000, 500, 100, 100);
    reset();
  }
  //Purpose:
  //Real level
  public void reset() {
    platformList.clear();
    enemyList.clear();
    
    platformList.add(new Platform(0, 600, 2000, 20));
    platformList.add(new KillPlatform(100, 200, 1800, 30));
    //enemy at (850, 400);
    enemyList.add(new GhostEnemy(50, 500, player, platformList));
    enemyList.add(new RangeEnemy(600, 550, player, platformList));
    enemyList.add(new RangeEnemy(1000, 550, player, platformList));
    enemyList.add(new RangeEnemy(1400, 550, player, platformList));
    this.end = new EndPlatform(1900, 550, 100, 100);
    
    
    platformList.add(end);
    player.x = 150;
    player.y = 550;
    player.giveWeapon(this.platformList);
  }
  
  public int getLevelint(){
    return 5;
  }
}
