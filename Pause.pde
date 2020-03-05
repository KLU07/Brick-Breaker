void Pause() {
   background(pink);
   
  //CONTINUE BUTTON
  stroke(0);
  fill(255);
  strokeWeight(1);
  ellipse(400,350,200,100);
  fill(0);
  textSize(20);
  text("CONTINUE",350,360);
  
  
  //PAUSE TEXT
  fill(0);  
  strokeWeight(2);
  textSize(60);
  text("PAUSE", 300,160);
}

void PauseClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 300 && mouseY < 400) {
    mode = GAME;
  }  
}
