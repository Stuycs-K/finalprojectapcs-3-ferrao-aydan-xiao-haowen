public class Enemy extends Player {
  int health;
  Player object;
  public Enemy(int xcor, int ycor, int health, Player thing) {
    super(xcor, ycor);
    this.health = health;
    object = thing;
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
    if (x <=100) {
      x = 100;
    }
    if (x >= 500) {
      x = 500;
    }
    if (weapon != null){
      weapon.display();
      weapon.updateBullet();
    }
  }
}
