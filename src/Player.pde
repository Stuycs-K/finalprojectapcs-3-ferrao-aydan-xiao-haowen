float gravity = 0.5;
public class Player {
  float x;
  float y;
  double dx = 0;
  double dy = 0;
  int health = 100;
  
  public Player(int xcor, int ycor) {
    x = xcor;
    y = ycor;
  }
  
  public void displayPlayer() {
    ellipse(x, y, 10, 10);
    x += dx;
    y += dy;
    if (y != (height - 10)) {
      dy += gravity;
    }
    
  }
  
  public void animate() {
  }
  
  
}
