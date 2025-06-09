public class Level3 extends Level {
  boolean createLevel = true;
  public Level3(Player thing) {
    this.player = thing;
    this.end = new EndPlatform(1000, 500, 100, 100);
    reset();
  }
  //PURPOSE:
  //Introduce different enemies
  public void reset() {
    platformList.clear();
    enemyList.clear();
    
    platformList.add(new Platform(0, 600, 500, 20));
    platformList.add(new Platform(600, 300, 100, 20));
    enemyList.add(new GhostEnemy(600, 550, player, platformList));
    
    platformList.add(new Platform(1000, 450, 100, 20));
    
    this.end = new EndPlatform(1500, 450, 150, 100);
    platformList.add(end);
    player.x = 100;
    player.y = 550;
    player.giveWeapon(this.platformList);
  }
  
  public int getLevelint(){
    return 3;
  }
}
