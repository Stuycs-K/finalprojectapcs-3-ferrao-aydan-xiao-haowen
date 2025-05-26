float gravity = 0.3;
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
    fill(255, 0, 0);
    ellipse(x, y, 50, 50);
    fill(0);
    if(dx > 0) {
      ellipse(x + 20, y - 5, 10, 20);
      ellipse(x, y - 5, 10, 20);
    }
    else if(dx < 0) {
      ellipse(x - 20, y - 5, 10, 20);
      ellipse(x, y - 5, 10, 20);
    }
    else{
      ellipse(x - 10, y - 5, 10, 20);
      ellipse(x + 10, y - 5, 10, 20);  
    }
    x += dx;
    y += dy;
    if (y <= (height - 60)) {
      dy += gravity;
    }
    else {
      dy = 0;
    }
    
  }
  
  public void animate() {
  }
  
  
}
