public class Enemy extends Player {
  
  public Enemy(int xcor, int ycor) {
    super(xcor, ycor);
  }
  
  public void giveWeapon(ArrayList<Platform> platforms){
    weapon = new Weapon(this, platforms);
  }
  
  public void displayPlayer() {
    fill(255, 100, 100);
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
    if (x <=50) {
      x = 50;
    }
    if (x >= 550) {
      x = 550;
    }
    if (weapon != null){
      weapon.display();
      weapon.updateBullet();
    }
  }
  
  
}
