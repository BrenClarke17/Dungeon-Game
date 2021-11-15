Animatedgif introgif;
hero myhero;
ArrayList <GameObjects> myObjects;
boolean wkey, skey, akey, dkey, space;
int mode; 
PFont introfont;
final int INTRO = 0;
final int GAME = 1;
final int GAMEOVER = 2;
final int PAUSE = 3;
//map
PImage map;
color nRoom, eRoom, sRoom, wRoom;
//color minimap;
//colors
color peach = #FFC061;
color gold = #EAA222;
color lblack = #3B3C35;
color black = #1E1F1B;
color brown = #654321;
color lbrown = #AD724E;
color red = #FC0000;

//darkness
ArrayList<DKcell> darkness;

void setup() {
  size(800, 600);
  introfont = createFont("DUNGRG__.TTF", 1);
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  mode = INTRO;
  myhero = new hero();
  myObjects = new ArrayList<GameObjects>();
  myObjects.add(myhero); 
  myObjects.add(new Enemy());
  myObjects.add(new Follower(1, 2));
  myObjects.add(new Follower(2, 1));
  myObjects.add(new Wanderer(3, 1));

  introgif = new Animatedgif(62, "frame_", "_delay-0.2s.gif", 400, 300, 800, 600, 5);
  wkey = skey = akey = dkey = space = false;
  map = loadImage("map dungeon.png");
  rectMode(CORNER);
  darkness = new ArrayList<DKcell>(5000);
  float size = 10;
  int nRow = 0, nCol = 0;
  int i = 0;
  while (i < 5000) {
    i++;

    darkness.add(new DKcell(nRow * size + size/2, nCol * size + size/2, size));
    nRow ++;
    if (nRow > width/size) {
      nRow = 0;
      nCol++;
    }
  }

  rectMode(CENTER);
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == PAUSE) {
    pause();
  } else {
    println("error: Mode = " + mode);
  }
}
