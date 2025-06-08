public abstract class Enemy {
  float gravity = 0.3;
  float x;
  float y;
  float dx = 0;
  float dy = 0;
  int health;
  boolean death = false;
  Player object;
  ArrayList<Platform> platforms;
  public Enemy(float xcor, float ycor, int health, Player thing, ArrayList<Platform> stuff) {
    x = xcor;
    y = ycor;
    object = thing;
    platforms = stuff;
    this.health = health;
  }

  public void displayEnemy() {
    fill(255, 100, 100);
    ellipse(x, y, 50, 50);
    fill(0);
    if(object.x > this.x) {
      ellipse(x + 20, y - 5, 10, 20);
      ellipse(x, y - 5, 10, 20);
    }
    else if(object.x < this.x) {
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
  }
  
  public void takeDamage() {
    ArrayList<Bullet> bullets = object.weapon.bullets;
    for (int i = bullets.size() - 1; i >= 0; i--) {
      Bullet boolet = bullets.get(i);
      if (dist(boolet.pos.x, boolet.pos.y, this.x, this.y) < 25) {
        health--;
        bullets.remove(i);
      }
    }
  }

  
  public abstract void moveEnemy();
  public abstract void attackPlayer();
}
