public class Level1 extends Level {
  public Level1(Player thing) {
    this.player = thing;
  }
//Purpose:
//Introduce the death brick
  public void reset() {
    platformList.clear();
    player.x = 0;
    player.y = 500;
    platformList.add(new Platform(100, 580, 200, 10));
    platformList.add(new KillPlatform(300, 580, 200, 10));
    platformList.add(new Platform(500, 580, 200, 10));
    platformList.add(new KillPlatform(700, 580, 200, 10));
    platformList.add(new Platform(900, 580, 200, 10));
    platformList.add(new KillPlatform(1100, 580, 200, 10));
    platformList.add(new Platform(1300, 580, 200, 10));
    this.end = new EndPlatform(1400, 400, 150, 100);
    platformList.add(end);
  }
  
   public int getLevelint(){
    return 1;
  }
}
