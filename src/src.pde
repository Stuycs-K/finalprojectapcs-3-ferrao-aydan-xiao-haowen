Player object = new Player(300, 300);
ArrayList<Level> levelList = new ArrayList<Level>();
Camera objectCamera;
Level currentLevel;
int index = 0;
void setup() {
  size(600, 600);
  levelList.add(new Level0(object));
  levelList.add(new Level1(object));
  levelList.add(new Level2(object));
  levelList.add(new Level3(object));
  objectCamera = new Camera(object, levelList.get(0).platformList);
  currentLevel = levelList.get(0);
}
void draw() {
  noStroke();
  background(175, 175, 225);
  fill(0);
  textSize(20);
  text("Current Level: " + index, 10, 30);
  if (currentLevel.end()) {
    index++;
    currentLevel = levelList.get(index);
    currentLevel.reset();
    object.weapon.bullets.clear();
    objectCamera = new Camera(object, currentLevel.platformList);
    
  }
  
  object.dx = 0;
  
  if (wPressed && object.dy == 0) object.dy = -10;
  if (aPressed) object.dx = -5;
  if (dPressed) object.dx = 5;
  
  object.displayPlayer();
  currentLevel.updateLevel();
  objectCamera.moveCamera();
}
boolean wPressed = false;
boolean aPressed = false;
boolean dPressed = false;
void keyPressed() {
  if (key == 'w' || key == 'W') wPressed = true;
  if (key == 'a' || key == 'A') {
    aPressed = true;
    object.movingLeft = true;
  }
  if (key == 'd' || key == 'D') {
    dPressed = true;
    object.movingRight = true;
  }
  if (key == 'r' || key == 'R') currentLevel.reset();
  }


void keyReleased() {
  if ((key == 'w' || key == 'W')) wPressed = false;
  if (key == 'a' || key == 'A') {
    aPressed = false;
    object.movingLeft = false;
  }
  if (key == 'd' || key == 'D') {
    dPressed = false;
    object.movingRight = false;
  }
}

void mousePressed() {
  if (object.weapon != null) {
    object.weapon.shoot();
  }
}
