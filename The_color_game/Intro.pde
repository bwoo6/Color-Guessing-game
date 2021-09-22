void intro() {
  background(0); //Refresh the screen

  //Intro Screen Gif
  fill(255);
  image(gif[f], 0, 0, width, height);
  f=f+1;
  if (f==numberOfFrames) f=0;
  
  //Other important stuff
  rect(250, 225, 300, 150);
  textFont(striped);
  textAlign(CENTER, CENTER);
  fill(0);
  textSize(50);
  text("START", width/2, height/2);
}

void introClicks() {
  if (mouseX > 250 && mouseX < 550 && mouseY > 225 && mouseY < 375) {
    mode=GAME;
  }
}
