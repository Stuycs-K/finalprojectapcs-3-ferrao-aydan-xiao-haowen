public class GhostEnemy extends Enemy {
  public GhostEnemy(int xcor, int ycor, Player thing, ArrayList<Platform> stuff) {
    super(xcor, ycor, 1, thing, stuff);
  }
  
  public void moveEnemy() {
    PVector direction = new PVector(object.x - this.x, object.y - this.y);
    direction.normalize();
    direction.mult(3);
    this.x += direction.x;
    this.y += direction.y;
  }
  
  public void attackPlayer() {
    if 
  }
}
