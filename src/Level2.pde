public class Level2 extends Level {
  boolean createLevel = true;
  public Level2(Player thing) {
    this.player = thing;
    this.end = new EndPlatform(1000, 500, 100, 100);
  }
  //Purpose:
  //introduce the hang over platform mechanic
  public void reset() {
    platformList.clear();
    platformList.add(new Platform(100, 580, 200, 10));
    platformList.add(new Platform(400, 350, 500, 10));
    this.end = new EndPlatform(1000, 500, 100, 100);
    platformList.add(end);
       
    player.x = 150;
    player.y = 450;
    
  }
  public int getLevelint(){
    return 2;
  }
}
