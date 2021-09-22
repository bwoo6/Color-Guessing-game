void game() {
  //Background/Process of game
  textFont(striped);
  background(0);
  textSize(40);


  //true
  fill(0, 155, 0);
  rect(0, 0, 400, 800);
  fill(255);
  text("TRUE", 200, 50);

  //false
  fill(155, 0, 0);
  rect(400, 0, 400, 800);
  fill(255);
  text("FALSE", 600, 50);

  //bar
  fill(0,255,0);
  rect(0,550,800,50);
  fill(255,0,0);
  rect(0,550,time,50);
  
  
  //randomizer
  textSize(75);
  fill (colors[c]);
  text (words[w], x, y);

  //ScoreBoard
  textSize(30);
  fill(255);
  text("SCORE:"+s, 400, 400);

  if (time==0) {
    mode=GAMEOVER;
  }
  time=time-10;
}

void gameClicks() {
  //True/False
  if (mouseX<width/2) {
    //matched
    if (w==c) {
      s=s+1;
      time=800;
    } else if (w!=c) {
      time=800;
      mode=GAMEOVER;
    }
  } else {
    //not matched
    if (w==c) {
      mode=GAMEOVER;
      time=800;
    } else {
      time=800;
      s=s+1;
    }
  }

  //Randomizer
  w = int(random(0, 6));
  if (r.nextBoolean()) {
    w=c;
  } else {
    c = int(random(0, 6));
  }
}
