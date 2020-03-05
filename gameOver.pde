void gameOver() {
  background(darkblue);
  
  //GAME OVER TEXT 
  fill(255);
  textSize(80);
  text("GAME OVER",150,160);
  textSize(40);
  text("IT SEEMS YOU HAVE PERISHED",120,230);
  
  
  //PLAY AGAIN BUTTON
  fill(255);
  stroke(1);
  ellipse(400,450,200,100);
  fill(0);
  textSize(20);
  text("RETRY",370,460);
}

void gameOverClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 400 && mouseY < 500) {
    mode = INTRO;
    
    setup();
    
  }
}
