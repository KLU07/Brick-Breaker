void Options() {
  background(lightpink); 
  
  
//OPTIONS TEXT
  fill(255);
  textSize(80);
  text("OPTIONS",220,140);
  

//START BUTTON
  fill(255);
  stroke(0);
  strokeWeight(1);
  ellipse(620,500,200,100);
  textSize(20);
  fill(0);
  text("START",590,510);
  
  if (mousePressed) {
    if (mouseX > 520 && mouseX < 720 && mouseY > 450 && mouseY < 550) {
      mode = GAME;
    } 
  }
  

//CHOOSE BALL COLOUR                              //INSERT BUBBLES OF COLOUR TO SELECT
  textSize(20);
  fill(255);
  text("CHOOSE BALL COLOUR",500,250);
  
  fill(0);
  ellipse(500,300,50,50);
  fill(100);
  ellipse(570,300,50,50);
  fill(200);
  ellipse(650,300,50,50);
  fill(250);
  ellipse(730,300,50,50);
  
//CHANGE PADDLE SIZE TEXT
  fill(255);    //black
  textSize(20);
  text("ADJUST PADDLE SIZE",130,250);
  
  
//SLIDER FOR PADDLE SIZE
  strokeWeight(5);
  line(110,300,350,300);
  
  fill(255);     //white
  ellipse(sliderp,300,13,13);
  
  if (mousePressed) {
    if (dist(sliderp,300,mouseX,mouseY) < 50 ) {
    sliderp = mouseX;
      if (sliderp < 120) {
        sliderp = 120;
      }
      if (sliderp > 340) {
         sliderp = 340;
      }
    } 
  }  
  paddlepsize = map(sliderp,120,340,100,150);


//CHANGE BALL SIZE TEXT
  fill(255);
  textSize(20);
  text("ADJUST BALL SIZE", 150,450);

//SLIDER FOR BALL SIZE
  strokeWeight(5);
  line(110,500,350,500);
  
  fill(255);
  ellipse(sliderb,500,13,13);
  
  
  if (mousePressed) {
    if (dist(sliderb,500,mouseX,mouseY) < 50 ) {
    sliderb = mouseX;
      if (sliderb < 120) {
        sliderb = 120;
      }
      if (sliderb > 340) {
         sliderb = 340;
      }
    }
  }
  ballsize = map(sliderb,110,350,20,30);
  
  
//CHOOSE BALL COLOUR
  if (mousePressed) {
    if (dist(500,300,mouseX,mouseY) < 25) {
      ballcolour = 0;  //black
    } 
    if (dist(570,300,mouseX,mouseY) < 25) {
      ballcolour = 100;
    } 
    if (dist(650,300,mouseX,mouseY) < 25) {
      ballcolour = 200;
    } 
    if (dist(730,300,mouseX,mouseY) < 25) {
      ballcolour = 255;
    }
  }
}

//--------------------------------------------------
void OptionsCLicks() {
  
}
