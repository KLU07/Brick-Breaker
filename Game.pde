void Game() {
  background(teal);
  stroke(0);
  strokeWeight(1);
  
  //LOSE LIVES
   if (by >= 600) {
    lives = lives - 1;
  }
  
  
  //SHOWING THE BRICKS
  int i = 0;
  while (i < 33) {
    Brick b = myBricks.get(i);    //selects a brick out of the list of bricks
    b.act();
    b.show();
    i = i + 1;
  }
  ball();
  paddle();  
  
  
  //LIVES TEXT
    fill(255);
    textSize(20);
    text("LIVES:" + lives,40,40);
  
  //SCORE TEXT
    fill(255);
    textSize(20);
    text("SCORE:" + score,200,40);
   
   
  //PAUSE BUTTON  
    rect(720,20,13,35,10);
    rect(740,20,13,35,10);
   
   
  //CHANGE MODE TO GAMEOVER
    if (lives == 0) {
      mode = GAMEOVER;
    }
    
    
  
}
//---------------------------------------------
void GameClicks() {
  //PAUSE BUTTON
  if (mouseX > 700 && mouseX < 760 && mouseY > 30 && mouseY < 70) {
    mode = PAUSE;
  }
}
//---------------------------------------------
void ball() {
//DRAW BALL 
  if (ballcolour == 0) fill(0);
  else if (ballcolour == 100) fill(100);
  else if (ballcolour == 200) fill(200);
  else if (ballcolour == 255) fill(255);
  ellipse(bx,by,ballsize,ballsize);

//BOUNCE BALL  
  bx = bx + bvx;
  by = by+ bvy;
  
  if (bx < 0 || bx > width) {
    //BOUNCE OFF LEFT AND RIGHT WALLS
    bvx = -bvx;
  }
  
  if (by < 0 || by > height) {
    //BOUNCE OFF TOP AND BOTTOM WALLS
    bvy = -bvy;
  }
  
  //COLLISION AND BOUNCE OFF
  if (dist(bx,by,px,py) < paddlepsize/2 + ballsize/2) {
    bvx = (bx - px)/15;    //dividing by 10 slows down the ball
    bvy = (by - py)/13;
  }
  

  
}
//-----------------------------------------------
void paddle() {
//DRAW PADDLE
  fill(255);
  strokeWeight(1);
  ellipse(px, py, paddlepsize,paddlepsize);
  if (rightKey) px = px + 5;
  if (leftKey) px = px - 5;
  
  //RESTRICT MOVEMENT OFF SCREEN
  if (px <= 50) {
    px = 50;
  }
  
  if (px >= 750 ) {
  px = 750;
  }
}
