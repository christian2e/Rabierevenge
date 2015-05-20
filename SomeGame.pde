class Game {
  // +++++++++++ Lists of game objects
  ArrayList<Button> buttons  = new ArrayList<Button>();
  ArrayList<Enemy> enemies  = new ArrayList<Enemy>();

  //  Instance varaibles (Properties)  +++++++++++++++++++++++++
  boolean gameStarted = false;
  HDog hDog;
  SDog sDog;
  InfoArea infoArea;
  Flock flock;

  //  Constructor  +++++++++++++++++++++++++++++++
  Game() {
    // When game constructed, create buttons, flock, areas, and game objects
    makeButtons(); 
    initGameObjects();
    generateFlock(8);
  }

  //  Methods (Behaviors)  +++++++++++++++++++++++++
  void initGameObjects() {  
    infoArea = new InfoArea(new PVector(playAreaSize, 0), infoAreaWidth, playAreaSize);
    hDog = new HDog(new PVector(150, 200), new PVector(0,0));

  }


  void generateFlock(int numBoids) {
    // Declare a flock     
    sDog = new SDog();
    // Generate a flock  
    for (int i = 0; i < numBoids; i++) {
      sDog.addBoid(new Boid(width/2, height/2));
    }
  }

  void run() {
    infoArea.run();
    hDog.run();
    sDog.run();

  }

  void keyCodeHandler(int kc) {
    // what do we do with keyboard input?
  }

  void mousePressedHandler(PVector mouse) {
    // what do we do when mouse is clicked?
  }

  void mouseMovedHandler(PVector mouseLoc) {
    // what do we do when mouse is moved?
  }

  void makeButtons() {
    // width and heith of game buttons
    int w = 300;
    int h = 100;
    //  add buttons to an array list of buttons with location, size, and color
    //  load buttons into button aray
    buttons.add( new Button("Play", new PVector(width/2, 200), w, h, color(45, 54, 74)));
    buttons.add( new Button("Instructions", new PVector(width/2, 400), w, h, color(45, 54, 74)));
    buttons.add( new Button("Reset?", new PVector(width/2, 200), w, h, color(45, 54, 74)));
  }
} // end Game class

