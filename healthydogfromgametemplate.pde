HDog hdog;
SDog sDog;
PImage img;

int playAreaSize = 900;
int infoAreaWidth = 150;
int screenW = playAreaSize+infoAreaWidth;
int screenH = playAreaSize;

PImage sickDogImage;
PImage healthyDogImage;
int level;
Game game;


void setup() {
  size(screenW, screenH);
  background(57, 36, 7);
  initGame();
}

void draw() {
  background(600);
  game.run();
}

void initGame() {
  game = new Game();
  level = 0;
  loadImages();
}

void loadImages() {
  sickDogImage = loadImage("healthydog.png");
  healthyDogImage = loadImage("sickdog.png");
}

void mousePressed() {
  game.mousePressedHandler(new PVector(mouseX, mouseY));
}

void mouseMoved() {
  game.mouseMovedHandler(new PVector(mouseX, mouseY));
}

void keyPressed() {
  game.keyCodeHandler(keyCode);
}

