void Game() {
  background(0,0,255);
  
  int i = 0;
  while (i < 100) {
    
    Brick b = myBricks.get(i);
    b.act();
    b.show();
    i = i + 1;
    
  }
  ball();
  paddle();  
  
}
//---------------------------------------------
void GameClicks() {
  
}
//---------------------------------------------
void ball() {
//DRAW BALL  
  ellipse(bx,by,20,20);

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
  if (dist(bx,by,px,py) < 60) {
    bvx = (bx - px)/9;    //dividing by 10 slows down the ball
    bvy = (by - py)/9;
  }
}
//-----------------------------------------------
void paddle() {
//DRAW PADDLE
  ellipse(px, py, 100, 100);
  if (rightKey) px = px + 5;
  if (leftKey) px = px - 5;
  
  //RESTRICT MOVEMENT OFF SCREEN
  
}
