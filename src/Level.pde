public class Level {
  ArrayList<Platform> platformList = new ArrayList<Platform>();
  ArrayList<Enemy> enemyList = new ArrayList<Enemy>();
  EndPlatform end;
  Player player;

  public ArrayList<Platform> getList() {
    return platformList;
  }

  public boolean end() {
    return end.collided;
  }

public void updateLevel() {
  boolean resetNeeded = false;
  
  for (Platform e : platformList) {
    e.displayPlatform();
    e.checkCollision(player);
    if (e.death && e.collided) {
      resetNeeded = true;
    }
    for (Enemy enemy : enemyList) {
      e.checkCollision(enemy);
    }
  }
  
  for (int i = enemyList.size() - 1; i >= 0; i--) {
    Enemy enemy = enemyList.get(i);
  
    if (enemy.health <= 0) {
      enemyList.remove(i);
    } 
    else {
      enemy.moveEnemy();
      enemy.displayEnemy();
      enemy.takeDamage();
      enemy.attackPlayer();
    }
   if (enemy.death) {
     resetNeeded = true;
   }
  }
  
  if (resetNeeded) {
    reset();
    player.weapon.bullets.clear();
  }
}

  public void reset() {
    return;
  }
}
