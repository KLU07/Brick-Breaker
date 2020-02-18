ArrayList<Brick> myBricks;

//MODE FRAMEWORK VARIABLES
final int INTRO = 1;
final int GAME  = 2;
final int GAMEOVER = 3;
final int PAUSE = 4;
int mode = GAME;  //1: intro, 2: game, 3: gameover, 4: pause


//BALL VARIABLES
float bx;
float by;
float bvx;
float bvy;

//PADDLE VARIABLES
float px;
float py;

//KEYBOARD VARIABLES
boolean leftKey, rightKey;

void setup() {
  myBricks = new ArrayList<Brick>();
  
  int i = 0;
  while (i < 100) {
    myBricks.add(new Brick() );    //call the constructor to do this
    i = i + 1;
  }
  
  
  size(800, 600);

//BALL DEFAULT
  bx = width/2;
  by = height/2;
  bvx = 0;
  bvy = 3;
  
  
//PADDLE DEFAULT
  px = width/2;
  py = height+10;
  
}

void draw() {
  if (mode == INTRO) {
    Intro();
  } else if (mode == GAME) {
    Game();
  } else if (mode == GAMEOVER) {
    gameOver();
  } else if (mode == PAUSE) {  
    Pause();
  } else {
    println("?");
  }
}
