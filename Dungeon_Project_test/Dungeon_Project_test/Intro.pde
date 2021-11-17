void intro() {
//gif
introgif.show();
textFont(introfont);
textSize(100);
fill(0);
text("DUNGEON CRAWL", 400, 200);
fill(255);
text("DUNGEON CRAWL", 395, 195);
rect(400, 400, 200, 100);
textSize(70);
if (dist (400, 400, mouseX, mouseY) < 100) {
fill(black);
rect(400, 400, 200, 100);
fill(255);
text("START", 400, 400);
} else {
  fill(255);
 rect(400, 400, 200, 100);
fill(black);
text("START", 400, 400);
}


}
void introclicks() {
  if(mouseX > 200 && mouseX < 600 && mouseY > 300 && mouseY < 500) {
  mode = GAME;
  }

}
