public class GhostEnemy extends Enemy {
  int mult = 5;
  public GhostEnemy(int xcor, int ycor, Player thing, ArrayList<Platform> stuff) {
    super(xcor, ycor, 1, thing, stuff);
  }
  public void displayEnemy() {
    fill(255, 255, 100);
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
  }
  public void moveEnemy() {
    PVector direction = new PVector(object.x - this.x, object.y - this.y);
    direction.normalize();
    direction.mult(mult);
      this.x += direction.x;
    this.y += direction.y;
  }
  public void takeDamage(){
    if (wasHit) return;
    ArrayList<Bullet> bullets = object.weapon.bullets;
    for (int i = bullets.size() - 1; i >= 0; i--){
      Bullet b = bullets.get(i);
      if (dist(b.pos.x, b.pos.y, this.x, this.y) < 25){
        object.dy = -10;
        bullets.remove(i);
        health--;
      }
    }
  }
  
  public void attackPlayer() {
    if (dist(object.x, object.y, this.x, this.y) <= 50) {
      death = true;
    }
  }
}
