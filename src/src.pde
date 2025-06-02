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
    objectCamera = new Camera(object, currentLevel.platformList);
  }
  object.displayPlayer();
  currentLevel.updateLevel();
  objectCamera.moveCamera();
}
void keyPressed() {
  if (key == 'w' && object.dy == 0) {
    object.dy = -10;
  }
  if (key == 'a') {
    object.dx = -5;
    object.movingLeft = true;
  }
  if (key == 'd') {
    object.dx = 5;
    object.movingRight = true;
  }
  if (key == 'r') {
    currentLevel.reset();
  }
}

void keyReleased() {
  if (key == 'a') {
    object.dx = 0;
    object.movingLeft = false;
  }
  if (key == 'd') {
    object.dx = 0;
    object.movingRight = false;
  }
}

void mousePressed() {
  if (object.weapon != null) {
    object.weapon.shoot();
  }
}
