void keyPressed() {
  //keyCode checks to see which key is pressed
  if (keyCode == RIGHT) rightKey = true;
  if (keyCode == LEFT) leftKey = true;
  
}

void keyReleased() {
  if (keyCode == RIGHT) rightKey = false;
  if (keyCode == LEFT) leftKey = false;
}
