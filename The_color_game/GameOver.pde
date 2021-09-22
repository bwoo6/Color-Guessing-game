void gameover() {
  background(0);

  //rect
  fill(255);
  rect(250, 225, 300, 150);
  textFont(striped);
  textAlign(CENTER, CENTER);
  fill(100);
  textSize(50);
  text("AGAIN", width/2, height/2);
  if (s>hs) {
    hs=s;
  }
  fill(255,0,0);
  text("YOU LOST!!", 400, 100);
  fill(100);
  text("SCORE:"+s, 400,550);
  text("HIGH SCORE:"+hs, 400, 500);
}

void gameoverClicks() {
  if (mouseX > 250 && mouseX < 550 && mouseY > 225 && mouseY < 375) {
    mode=INTRO;
    s=0;
    time=800;
  }
}
