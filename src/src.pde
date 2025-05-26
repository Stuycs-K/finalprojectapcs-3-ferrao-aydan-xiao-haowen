Player object = new Player(300, 300);

void setup() {
  size(600, 600);
  background(255);
}

void draw() {
  background(255);
  object.displayPlayer();
  textSize(20);
  fill(0);
  text("(" + object.x + ", " + object.y + ")", 100, 100);
}

void keyPressed() {
  if(key == 'w') {
      object.dy = -10;
  }
  if(key == 'a') {
      object.dx = -5;
  }
  if(key == 'd') {
      object.dx = 5;
  }
}

void keyReleased() {
  if(key == 'w') {
      object.dy = 0;
  }
  if(key == 'a') {
      object.dx = 0;
  }
  if(key == 'd') {
      object.dx = 0;
  }
}
