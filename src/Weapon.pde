public class Weapon{
  double range;
  double weapon;
  Player player;
  float radius = 40;
  float w= 30;
  float h = 10;
  
  Weapon(Player p){
    this.player = p;
  }
  
  public void display(){
    float angle= atan2(mouseY - player.y, mouseX - player.x);
    float weaponX = player.x + cos(angle) * radius;
    float weaponY = player.y + sin(angle) * radius;
    fill(150);
    ellipse(weaponX, weaponY, w, h);
  }
  
}
