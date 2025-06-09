float gravity = 0.3;
public class Player {
  float x;
  float y;
  double dx = 0;
  double dy = 0;
  boolean movingRight = false;
  boolean movingLeft = false;
  boolean lookingLeft = false;
  boolean lookingRight = false;
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
      lookingRight = true;
    }
    else if(dx < 0) {
      ellipse(x - 20, y - 5, 10, 20);
      ellipse(x, y - 5, 10, 20);
      lookingLeft = true;
    }
    else{
      ellipse(x - 10, y - 5, 10, 20);
      ellipse(x + 10, y - 5, 10, 20);  
    }
    x += dx;
    y += dy;
    if (!flyHacks) {
       dy += gravity;
    }
    if (x <=300) {
      x = 300;
    }
    if (x >= 1200) {
      x = 1200;
    }
    if (weapon != null){
      weapon.display();
      weapon.updateBullet();
    }
  }
  
  
}
