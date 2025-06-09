public class Level6 extends Level {
  boolean createLevel = true;
  public Level6(Player thing) {
    this.player = thing;
    this.end = new EndPlatform(1000, 500, 100, 100);
    reset();
  }
  //Purpose
  //Real level
  public void reset() {
    platformList.clear();
    enemyList.clear();
    
    platformList.add(new Platform(0, 600, 200, 20)); 
    platformList.add(new Platform(600, 500, 200, 20));
    platformList.add(new Platform(1200, 450, 200, 20));
    platformList.add(new Platform(1800, 400, 200, 20));
    this.end = new EndPlatform(1400, 400, 150, 100);
    platformList.add(end);
    
    enemyList.add(new GhostEnemy(450, 500, player, platformList));
    enemyList.add(new GhostEnemy(850, 450, player, platformList));
    enemyList.add(new GhostEnemy(1250, 400, player, platformList));
    enemyList.add(new RangeEnemy(1400, 400, player, platformList));    
    player.x = 100;
    player.y = 550;
    player.dx = 0;
    player.dy = 0;
    player.giveWeapon(this.platformList);
  }
  public int getLevelint(){
    return 6;
  }
}
