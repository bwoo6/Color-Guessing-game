import java.util.*;
//Byungwoo Kang
//Color Game Project
//Sept 15,2021
PImage[] gif;
String[] words;
color[] colors;

//Colors
color red=#ff0000;
color green=#00ff00;
color blue=#0000ff;
color black=#000000;
color white=#ffffff;
color grey=#937777;

//others
PFont striped;
int mode, i,f, hs, s, time;
float x, y;
Random r;
int w, c, numberOfFrames;
final int GAME = 0;
final int INTRO = 1;
final int GAMEOVER = 2;
void setup() {
  size(800, 600);
  hs=0;
  s=0;
  x=400;
  y=300;
  mode=INTRO;
  time=800;
  r=new Random();
  
  
  //gifs
  numberOfFrames =24;
  gif = new PImage[numberOfFrames];
  int i =0;
  while (i<numberOfFrames ) {
    gif[i]=loadImage("frame_"+i+"_delay-0.1s.gif");
    i=i+1;
  }


  //Colors/Words
  words = new String[6];
  colors = new color[6];
  words[0]="RED";
  colors[0] =red;
  words[1]="GREEN";
  colors[1]= green;
  words[2]="BLUE";
  colors[2]=blue;
  words[3]="BLACK";
  colors[3]=black;
  words[4]="WHITE";
  colors[4]=white;
  words[5]="GREY";
  colors[5]=grey;

  //Font
  striped=createFont("Striped Campus.ttf", 200);
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }
}
