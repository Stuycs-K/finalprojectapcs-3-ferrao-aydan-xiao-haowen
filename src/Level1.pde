public class Level1 extends Level {
  public Level1(Player thing) {
    this.object = thing;
    this.end = new EndPlatform(1000, 500, 100, 100);
  }
//Purpose:
//Introduce the death brick
  public void reset() {
    platformList.clear();
    platformList.add(new Platform(100, 580, 200, 10));
    platformList.add(new KillPlatform(300, 580, 200, 10));
    platformList.add(new Platform(500, 580, 200, 10));
    platformList.add(new KillPlatform(700, 580, 200, 10));
    platformList.add(new Platform(900, 580, 200, 10));
    platformList.add(new KillPlatform(1100, 580, 200, 10));
    platformList.add(new Platform(1300, 580, 200, 10));
    this.end = new EndPlatform(1400, 400, 150, 100);
    platformList.add(end);
    object.x = 100;
    object.y = 500;
  }
  
   public int getLevelint(){
    return 1;
  }
}
