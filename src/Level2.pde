public class Level2 extends Level {
  boolean createLevel = true;
  public Level2(Player thing) {
    this.object = thing;
    this.end = new EndPlatform(1000, 500, 100, 100);
  }
  
  public void reset() {
    platformList.clear();
    platformList.add(new Platform(100, 580, 200, 10));
    platformList.add(new Platform(400, 350, 500, 10));
    this.end = new EndPlatform(1000, 500, 100, 100);
    platformList.add(end);
       
    object.x = 150;
    object.y = 450;
    
  }
}
