//COLLECTION or LIST OF BRICKS
ArrayList<Brick> myBricks;

//MODE FRAMEWORK VARIABLES
final int INTRO = 1;
final int GAME  = 2;
final int GAMEOVER = 3;
final int PAUSE = 4;
final int OPTIONS = 5;
final int WIN = 6;
int mode = INTRO;  //1: intro, 2: game, 3: gameover, 4: pause


//BALL VARIABLES
float bx;                             //CRITERIA: lives and score variables to determine either losing or winning
float by;                                         //random hp for bricks, change color based on hp left
float bvx;                                        //sliders for adjusting ball and paddle size
float bvy;
float ballsize;
float sliderb;  //slider for ball size
float ballcolour;

//PADDLE VARIABLES
float px;
float py;
float paddlepsize;
float sliderp;  //slider for paddle size

//KEYBOARD VARIABLES
boolean leftKey, rightKey;    //true and false variables
                              //if leftKey is held down, leftKey = true
//BRICK LAYING VARIABLES
//determines where the bricks will be
float gridx;
float gridy;

//SCORE AND LIVES
int score;
int lives;

//SECRET HP VARIABLE TO DTERMINE WIN 
float win;


//COLOURS 
color lightpink = #FF9899;
color pink = #FF3180;
color orange = #FFB22E;
color teal = #60E8CB;
color darkblue = #404FBD;
color lightblue = #76B4D9;

color medpink = #FF5898;
//----------------------------------------------------------
void setup() {
  size(800, 600);
  
  //BUILDS THE BRICKS
  myBricks = new ArrayList<Brick>();
  
  //ADD A BRICK TO THE LIST OF BRICKS, 100 TIMES
  gridx = 100;
  gridy = 90;
  
  int i = 0;
  while (i <= 36) {
    myBricks.add(new Brick() );    //call the constructor to do this
    gridx = gridx + 60;
    if (gridx > 740) {
      gridy = gridy + 60;
      gridx = 100;      
    }
    i = i + 1;  
  }
  

  //BALL DEFAULT
  bx = width/2;
  by = height/2;
  bvx = 0;
  bvy = 3;
  ballcolour = pink;
  
  //SLIDER FOR BALL SIZE
  sliderb = 120;
  ballsize = 20;
 
  
  //PADDLE DEFAULT
  px = width/2;
  py = height+10;
  
  //SLIDER FOR PADDLE SIZE
  sliderp = 120;
  paddlepsize = 100;
  
  
  //SCORE AND LIVES
  score = 0;
  lives = 3;

  
  //SECRET HP TRACKER VARIABLE TO DETERMINE WIN
  win = 0;
  
}

//-------------------------------------------------
void draw() {
  if (mode == INTRO) {
    Intro();
  } else if (mode == GAME) {
    Game();
  } else if (mode == GAMEOVER) {
    gameOver();
  } else if (mode == PAUSE) {  
    Pause();
  } else if (mode == OPTIONS) {
    Options();
  } else if (mode == WIN) {
    Win();
  } else {
    println("?");
  }
}
