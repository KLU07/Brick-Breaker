class Brick {
 
  //INSTANCE VARIABLES - defines what a brick knows
  float x;
  float y;
  color c;
  int hp;
  
  
  //CONSTRUCTOR - initialize instance variables
  Brick() {
    x = random(0,width);
    y = random(0,height);
    hp = 1;
    c = #FFFFFF;
    
  }
  
  //BEHAVIOUR FUNCTIONS - Defines what a brick can do
  void act() {
    if (hp > 0 && dist(bx,by,x,y) < 35 ) {    //35 is the sum of the radius of the ball and brick
      hp = hp - 1;
      bvx = (bx - x)/5;
      bvy = (by - y)/5;  //check if this is appropriate speed
    }
  }
  
  void show() {
    if (hp > 0) {
    fill(c);
    ellipse(x,y,50,50);
    }
  }
  
}
