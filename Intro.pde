void Intro() {
   background(lightblue);
   
   //TITLE
   fill(255);
   textSize(80);
   text("BRICK BREAKER",100, 160);
   
   
   //START GAME BUTTON
   fill(255);
   ellipse(400,300,200,100);
   textSize(20);
   fill(0);
   text("START",370,310);
   
   
   //OPTIONS SCREEN BUTTON
    fill(255);
    ellipse(400,450,200,100);
    textSize(20);
    fill(0);
    text("OPTIONS", 360,460);
}

void IntroClicks() {
  
  //CLICKING START BUTTON
  if (mouseX > 300 && mouseX < 500 && mouseY > 250 && mouseY < 350) {
    mode = GAME;
  }
  
  
  //CLICKING OPTIONS BUTTON
  if (mouseX > 300 && mouseX < 500 && mouseY > 400 && mouseY < 500) {
    mode = OPTIONS;
  }

}
