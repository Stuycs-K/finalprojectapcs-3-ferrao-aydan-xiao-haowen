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
   
    
    platformList.add(new Platform(0, 600, 2000, 20));
    enemyList.add(new RangeEnemy(800, 550, player, platformList));
    enemyList.add(new RangeEnemy(1300, 550, player, platformList));
    
    this.end = new EndPlatform(1800, 550, 100, 100);
    platformList.add(end);
    player.x = 100;
    player.y = 550;
    player.dx = 0;
    player.dy = 0;
    player.giveWeapon(this.platformList);
    
    enemyList.add(new GhostEnemy(1300, 550, player, platformList));
    enemyList.add(new GhostEnemy(700, 550, player, platformList));
  

  }
  
  public int getLevelint(){
    return 4;
  }
}
