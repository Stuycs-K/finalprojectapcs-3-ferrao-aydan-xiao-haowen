float gravity = 0.3;
public class Player {
  float x;
  float y;
  double dx = 0;
  double dy = 0;
  boolean movingRight = false;
  boolean movingLeft = false;
  int health = 100;
  Weapon weapon;
  
  public Player(int xcor, int ycor) {
    x = xcor;
    y = ycor;
  }
  
  public void giveWeapon(ArrayList<Platform> platforms){
    weapon = new Weapon(this, platforms);
  }
  
  public void displayPlayer() {
    fill(100, 100, 255);
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
    dy += gravity;
    if (x <=150) {
      x = 150;
    }
    if (x >= 450) {
      x = 450;
    }
    if (weapon != null){
      weapon.display();
      weapon.updateBullet();
    }
  }
  
  
}
