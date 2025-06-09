public class RangeEnemy extends Enemy {
  ArrayList<Bullet> bullets = new ArrayList<Bullet>();
  int cooldown = 0;

  public RangeEnemy(int xcor, int ycor, Player thing, ArrayList<Platform> stuff) {
    super(xcor, ycor, 1, thing, stuff);
  }
  
  public void moveEnemy() {
  }
  
  public void attackPlayer() {
    if (cooldown <= 0 && Math.abs(this.x - object.x) <= 1000) {
      bullets.add(new Bullet(x, y, object.x, object.y));
      cooldown = 60;
    } else {
      cooldown--;
    }
    for (int i = bullets.size() - 1; i >= 0; i--) {
      Bullet b = bullets.get(i);
      b.update(platforms);
      b.display();
  
      if (dist(b.pos.x, b.pos.y, object.x, object.y) < 25) {
        bullets.remove(i);
        death = true;
        break;
      }

      if (!b.isAlive) {
        bullets.remove(i);
      }
    }
  }
  
  public void takeDamage() {
    if (wasHit) return;
    ArrayList<Bullet> bullets = object.weapon.bullets;
    for (int i = bullets.size() - 1; i >= 0; i--) {
      Bullet b = bullets.get(i);
      if (dist(b.pos.x, b.pos.y, this.x, this.y) < 25) {
        object.dash();
        bullets.remove(i);
        health--;
      }
    }
  }
}
