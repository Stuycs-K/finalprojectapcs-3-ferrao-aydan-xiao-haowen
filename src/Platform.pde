public class Platform{
  double x;
  double y;
  double height = 50;
  double width = 50;
  PImage platform;
  public Platform(double x, double y){
    this.platform = loadImage("resources/platform.png");
    this.x = x;
    this.y = y;
    platform.resize(height, width);
  }
}
