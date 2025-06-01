public class Weapon{
  double range;
  double weapon;
  Player player;
  float radius = 40;
  float w= 30;
  float h = 10;
  ArrayList<Bullet> bullets = new ArrayList<Bullet>();
  ArrayList<Platform> platforms;

  Weapon(Player p, ArrayList<Platform> platforms){
    this.player = p;
    this.platforms = platforms;
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
  public void shoot(){
    float angle = atan2(mouseY - player.y, mouseX - player.x);
    float bulletX = player.x + cos(angle) * radius;
    float bulletY = player.y + sin(angle) * radius;
    bullets.add(new Bullet(bulletX, bulletY, mouseX, mouseY));
  }
  
  public void updateBullet(){
    for (int i = 0; i < bullets.size(); i++) { 
      bullets.get(i).update(this.platforms);
      bullets.get(i).display();
    }
    for (int i = 0; i < bullets.size();){
      if (!bullets.get(i).isAlive){
        bullets.remove(i);
    } else {
      i++;
    }
  }
}
