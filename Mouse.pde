void mouseReleased() {
  if (mode == INTRO) {
    IntroClicks();
  } else if (mode == GAME) {
    GameClicks();
  } else if (mode == GAMEOVER) {
    gameOverClicks();
  } else if (mode == PAUSE) {
    PauseClicks();
  } else {
     println("Mode error");
  }
}
