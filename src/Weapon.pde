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
    float cosA = cos(angle);
    float sinA = sin(angle);
    float halfW = w / 2;
    float halfH = h / 2;
    
    float x1 = weaponX - halfW * cosA + halfH * sinA; 
    float y1 = weaponY - halfW * sinA - halfH * cosA;
    
    float x2 = weaponX + halfW * cosA + halfH * sinA;
    float y2 = weaponY + halfW * sinA - halfH * cosA;
    
    float x3 = weaponX + halfW * cosA - halfH * sinA;
    float y3 = weaponY + halfW * sinA + halfH * cosA;
    
    float x4 = weaponX - halfW * cosA - halfH * sinA;
    float y4 = weaponY - halfW * sinA + halfH * cosA;
    
    fill(150);
    beginShape();
    vertex(x1, y1);
    vertex(x2, y2);
    vertex(x3, y3);
    vertex(x4, y4);
    endShape(CLOSE);
    
  }
  
}
