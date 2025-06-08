boolean flyHacks = false;
Player object = new Player(300, 300);
ArrayList<Level> levelList = new ArrayList<Level>();
Camera objectCamera;
Level currentLevel;
int index = 0;
int cooldown = 0;
void setup() {
  size(1500, 800);
  levelList.add(new Level0(object));
  levelList.add(new Level1(object));
  levelList.add(new Level2(object));
  levelList.add(new Level3(object));
  levelList.add(new Level4(object));
  levelList.add(new Level5(object));
  levelList.add(new Level6(object));
  levelList.add(new Level7(object));
  objectCamera = new Camera(object, levelList.get(0).platformList, levelList.get(0).enemyList);
  currentLevel = levelList.get(0);
}
void draw() {
  noStroke();
  background(175, 175, 225);
  fill(0);
  textSize(20);
  text("Current Level: " + index, 10, 30);
  if (currentLevel.end()) {
    object.weapon.bullets.clear();
    index++;
    currentLevel = levelList.get(index);
    currentLevel.reset();
    objectCamera = new Camera(object, currentLevel.platformList, currentLevel.enemyList);
    object.giveWeapon(currentLevel.platformList);
  }
  
  object.dx = 0;
  
  if (flyHacks) {
    object.dy = 0;
    if (wPressed) object.dy = -5;
    if (sPressed) object.dy = 5;  
    if (aPressed) object.dx = -5;
    if (dPressed) object.dx = 5;
  }
  else {
    if (wPressed && object.dy == 0) object.dy = -10;
    if (aPressed) object.dx = -5;
    if (dPressed) object.dx = 5;  
  }

  object.displayPlayer();
  currentLevel.updateLevel();
  objectCamera.moveCamera();
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
    object.movingLeft = true;
  }
  if (key == 'd' || key == 'D') {
    dPressed = true;
    object.movingRight = true;
  }
  if (key == 'r' || key == 'R') {
    currentLevel.reset();
    object.dy = -0.1;
  }
}

void keyReleased() {
  if (key == 'w' || key == 'W') wPressed = false;
  if (key == 's' || key == 'S') sPressed = false;
  if (key == 'a' || key == 'A') {
    aPressed = false;
    object.movingLeft = false;
  }
  if (key == 'd' || key == 'D') {
    dPressed = false;
    object.movingRight = false;
  }
  if (key == 'f' || key == 'F')  flyHacks = !flyHacks;
}

int timer = 0;

void mousePressed() {
  if (object.weapon != null && cooldown <= 0) {
    object.weapon.shoot();
    cooldown = 50;
  }
}
