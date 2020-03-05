class Brick {
 
  //INSTANCE VARIABLES - defines what a brick knows
  float x;
  float y;
  color c;
  int hp;
  
  
  //CONSTRUCTOR - initialize instance variables, how the values start
  Brick() {
    x = gridx;
    y = gridy;
    hp = int(random(1,4));
    c = #FFFFFF;
  }
  
  //BEHAVIOUR FUNCTIONS - Defines what a brick can do
  void act() {
    //WHEN BALL HITS BRICK
    if (hp > 0 && dist(bx,by,x,y) < 33 ) {    //35 is the sum of the radius of the ball and brick
      hp = hp - 1;
      
      if (hp == 0) score = score + 1;
      bvx = (bx - x)/5;    //speed of ball
      bvy = (by - y)/5;
      win = win + 1;
    }
    
    if (win == 33) {
      mode = WIN;
    }
    
    //CHANGE BRICK COLOUR DEPENDING ON HP
    if (hp == 3) {
      c = #FF0062;    //darkest pink
    } else if (hp == 2) {
      c = #FF7EB0;   //medium pink
    } else if (hp == 1) {
      c = #FFE5EF;     //light pink
    }
  }
  
  void show() {
    if (hp > 0) {
    fill(c);
    ellipse(x,y,50,50);
    }
  }
  
}
