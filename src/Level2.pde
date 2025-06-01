public class Level2 extends Level {
  boolean createLevel = true;
  public Leve12(Player thing) {
    this.object = thing;
    this.end = new EndPlatform(1000, 500, 100, 100);
  }
  
  public void reset() {
    platformList.add(new Platform(50, 580, 5000, 10));
    this.end = new EndPlatform(1000, 500, 100, 100);
    platformList.add(end);
    
  }
}
