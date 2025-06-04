public abstract class Enemy extends Player {
  int health;
  Player object;
  Camera currentCamera;
  public Enemy(int xcor, int ycor, int health, Player thing, Camera otherthing) {
    super(xcor, ycor);
    object = thing;
    currentCamera = otherthing;
    this.health = health;
  }

  public void displayPlayer() {
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
     for (Bullet boolet : bullets) {
       if (dist(boolet.pos.x, boolet.pos.y, this.x, this.y) < 6) {
         health--;
         bullets.remove(boolet);
       }
     } 
  }
  
  public abstract void moveEnemy();
  public abstract void attackPlayer();
}
