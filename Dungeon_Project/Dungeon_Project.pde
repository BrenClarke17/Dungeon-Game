Animatedgif introgif;
hero myhero;
ArrayList <GameObjects> myObjects;
boolean wkey, skey, akey, dkey, spacekey;
int mode; 
PFont introfont;
final int INTRO = 0;
final int GAME = 1;
final int GAMEOVER = 2;
final int PAUSE = 3;
//map
PImage map;
color nRoom, eRoom, sRoom, wRoom;
//colors
color peach = #FFC061;
color gold = #EAA222;
color lblack = #3B3C35;
color black = #1E1F1B;
color brown = #654321;
color lbrown = #AD724E;

void setup() {
size(800, 600);
introfont = createFont("DUNGRG__.TTF", 1);
textAlign(CENTER, CENTER);
rectMode(CENTER);
mode = INTRO;
myhero = new hero();
myObjects = new ArrayList<GameObjects>();
myObjects.add(myhero); 
introgif = new Animatedgif(62, "frame_", "_delay-0.2s.gif", 400, 300, 800, 600, 5);
 wkey = skey = akey = dkey = spacekey = false;
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
