public class Level0 extends Level {
  boolean createLevel = true;
  public Level0(Player thing) {
    this.player = thing;
    reset();
  }
  //Purpose:
  //Introduce basic movement
  public void reset() {
    player.x = 300;
    player.y = 300;
    player.dx = 0;
    player.dy = 0;
    player.movingLeft = false;
    player.movingRight = false;
    
    player.giveWeapon(this.platformList);
    platformList.clear();
    enemyList.clear();
    platformList.add(new Platform(0, 550, 3000, 50));
    platformList.add(new Platform(800, 400, 200, 20));
    this.end = new EndPlatform(820, 300, 150, 100);
    platformList.add(end);

  }
  
  public int getLevelint(){
    return 0;
  }
}
