Player object = new Player(300, 300);
ArrayList<Platform> platformList = new ArrayList<Platform>();
Camera objectCamera = new Camera(object, platformList);

void setup() {
  size(600, 600);
  background(255);
  platformList.add(new Platform(10, 500, 100, 10));
  platformList.add(new Platform(700, 500, 100, 10));
  platformList.add(new Platform(-100,  590, 10000, 10));
}

void draw() {
  background(255);
  object.displayPlayer();
  objectCamera.moveCamera();
  for (Platform e : platformList) {
    e.displayPlatform();
    e.checkCollision(object);
  }
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
