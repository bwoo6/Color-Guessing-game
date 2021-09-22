void mouseClicked() {
  if (mode==GAME) {
    gameClicks();
  } 
  else if (mode==INTRO) {
    introClicks();
  }
  else if (mode==GAMEOVER) {
    gameoverClicks();
  }
}
