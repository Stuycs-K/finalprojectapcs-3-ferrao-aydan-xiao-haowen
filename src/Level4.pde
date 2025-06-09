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
    enemyList.clear();
    
    platformList.add(new Platform(0, 600, 200, 20));
    enemyList.add(new GhostEnemy(300, 550, player, platformList));

    platformList.add(new Platform(600, 600, 200, 20));
    enemyList.add(new GhostEnemy(700, 550, player, platformList));
    //enemy at (850, 400);
    platformList.add(new Platform(1200, 600, 200, 20));
    enemyList.add(new GhostEnemy(1300, 550, player, platformList));
    enemyList.add(new RangeEnemy(1300, 550, player, platformList));
    
    platformList.add(new Platform(1800, 600, 200, 20));
    enemyList.add(new GhostEnemy(1900, 550, player, platformList));
    
    platformList.add(new Platform(2400, 600, 200, 20));
    enemyList.add(new GhostEnemy(2500, 550, player, platformList));
  
    this.end = new EndPlatform(3000, 550, 150, 100);
    platformList.add(end);
    
    player.x = 50;
    player.y = 550;
    player.giveWeapon(this.platformList);
  }
  
  public int getLevelint(){
    return 4;
  }
}
