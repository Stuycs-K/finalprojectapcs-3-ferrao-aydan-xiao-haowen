Player object = new Player(300, 300);
Level1 test = new Level1(object);
Camera objectCamera = new Camera(object, test.platformList);

void setup() {
  size(600, 600);
  background(255);
}

void draw() {
  if (test.createLevel) {
    test.reset();
    test.createLevel = false;
  }
  background(255);
  object.displayPlayer();
  objectCamera.moveCamera();
  test.updateLevel();
  textSize(20);
  fill(0);
  text("(" + object.x + ", " + object.y + ")", 100, 100);
  if (object.x >= 500) {
   translate(5, 0);
  }
}

void keyPressed() {
  if(key == 'w' && object.dy == 0) {
      object.dy = -10;
  }
  if(key == 'a') {
      object.dx = -5;
      object.movingLeft = true;
  }
  if(key == 'd') {
      object.dx = 5;
      object.movingRight = true;
  }
}

void keyReleased() {
  if(key == 'a') {
      object.dx = 0;
      object.movingLeft = false;
  }
  if(key == 'd') {
      object.dx = 0;
      object.movingRight = false;
  }
}
