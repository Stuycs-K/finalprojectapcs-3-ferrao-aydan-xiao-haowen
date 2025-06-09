boolean flyHacks = false;
Player player = new Player(300, 300);
ArrayList<Level> levelList = new ArrayList<Level>();
Camera playerCamera;
Level currentLevel;
int index = 0;
int cooldown = 0;
int startTime = 0;
int endTime = 0;
boolean timerStopped = false;
void setup() {
  startTime = millis();
  size(1500, 800);
  levelList.add(new Level0(player));
  levelList.add(new Level1(player));
  levelList.add(new Level2(player));
  levelList.add(new Level3(player));
  levelList.add(new Level4(player));
  levelList.add(new Level5(player));
  levelList.add(new Level6(player));
  levelList.add(new Level7(player));
  playerCamera = new Camera(player, levelList.get(0).platformList, levelList.get(0).enemyList);
  currentLevel = levelList.get(0);
}
void draw() {
  noStroke();
  background(175, 175, 225);
  fill(0);
  textSize(20);
  if(index < 7){
  text("Current Level: " + index, 10, 30);
  }
  if(!timerStopped){
    float elapse =(millis() - startTime) / 1000.0;
    text("Time: " + elapse + "s", 10, 60);
  } else {
    float totalTime = (endTime - startTime) / 1000.0;
    text("Final Time: " + totalTime + "s", 10, 60);
  }
  if (currentLevel.end()) {
    player.weapon.bullets.clear();
    index++;
    if(index != 9){
    currentLevel = levelList.get(index);
    }
    currentLevel.reset();
    playerCamera = new Camera(player, currentLevel.platformList, currentLevel.enemyList);
    player.giveWeapon(currentLevel.platformList);
    
    if(index == 7 && !timerStopped){
      endTime = millis();
      timerStopped = true;
    }
  }
  player.dx = 0;
  if (flyHacks) {
    player.dy = 0;
    if (wPressed) player.dy = -5;
    if (sPressed) player.dy = 5;  
    if (aPressed) player.dx = -5;
    if (dPressed) player.dx = 5;
  }
  else {
    if (wPressed && player.dy == 0) player.dy = -10;
    if (aPressed) player.dx = -5;
    if (dPressed) player.dx = 5;  
  }

  player.displayPlayer();
  currentLevel.updateLevel();
  playerCamera.moveCamera();
  cooldown -= 1;
}
boolean wPressed = false;
boolean aPressed = false;
boolean dPressed = false;
boolean sPressed = false;
void keyPressed() {
  if (key == 'w' || key == 'W') wPressed = true;
  if (key == 's' || key == 'S') sPressed = true;
  if (key == 'a' || key == 'A') {
    aPressed = true;
    player.movingLeft = true;
  }
  if (key == 'd' || key == 'D') {
    dPressed = true;
    player.movingRight = true;
  }
  if (key == 'r' || key == 'R') {
    currentLevel.reset();
    player.dy = -0.1;
  }
    if (key == '0') {
    index = 0;
    currentLevel = levelList.get(0);
    currentLevel.reset();
    playerCamera = new Camera(player, currentLevel.platformList, currentLevel.enemyList);
    player.giveWeapon(currentLevel.platformList);
    }
      if (key == '1') {
    index = 1;
    currentLevel = levelList.get(1);
    currentLevel.reset();
    playerCamera = new Camera(player, currentLevel.platformList, currentLevel.enemyList);
    player.giveWeapon(currentLevel.platformList);
  }
    if (key == '2') {
    index = 2;
    currentLevel = levelList.get(2);
    currentLevel.reset();
    playerCamera = new Camera(player, currentLevel.platformList, currentLevel.enemyList);
    player.giveWeapon(currentLevel.platformList);
  }
    if (key == '3') {
    index = 3;
    currentLevel = levelList.get(3);
    currentLevel.reset();
    playerCamera = new Camera(player, currentLevel.platformList, currentLevel.enemyList);
    player.giveWeapon(currentLevel.platformList);
  }
    if (key == '4') {
    index = 4;
    currentLevel = levelList.get(4);
    currentLevel.reset();
    playerCamera = new Camera(player, currentLevel.platformList, currentLevel.enemyList);
    player.giveWeapon(currentLevel.platformList);
  }
    if (key == '5') {
    index = 5;
    currentLevel = levelList.get(5);
    currentLevel.reset();
    playerCamera = new Camera(player, currentLevel.platformList, currentLevel.enemyList);
    player.giveWeapon(currentLevel.platformList);
  }
    if (key == '6') {
    index = 6;
    currentLevel = levelList.get(6);
    currentLevel.reset();
    playerCamera = new Camera(player, currentLevel.platformList, currentLevel.enemyList);
    player.giveWeapon(currentLevel.platformList);
  }
    if (key == '7') {
    index = 7;
    currentLevel = levelList.get(7);
    currentLevel.reset();
    playerCamera = new Camera(player, currentLevel.platformList, currentLevel.enemyList);
    player.giveWeapon(currentLevel.platformList);
  }
}

void keyReleased() {
  if (key == 'w' || key == 'W') wPressed = false;
  if (key == 's' || key == 'S') sPressed = false;
  if (key == 'a' || key == 'A') {
    aPressed = false;
    player.movingLeft = false;
  }
  if (key == 'd' || key == 'D') {
    dPressed = false;
    player.movingRight = false;
  }
  if (key == 'f' || key == 'F')  flyHacks = !flyHacks;
}

void mousePressed() {
  if (player.weapon != null && cooldown <= 0) {
    player.weapon.shoot();
    cooldown = 30;
  }
}
