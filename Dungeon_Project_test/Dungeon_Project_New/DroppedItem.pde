class DroppedItem extends GameObjects {

int type;
Weapon w;
DroppedItem(float x, float y, int rx, int ry) {
type = GUN;
  w = new Shotgun();
  lives = 1;
  loc = new PVector(x, y);
  vel = new PVector(0, 0);
  size = 20;
  roomX = rx;
  roomY = ry;
  
}

void show() {
stroke(black);
strokeWeight(2);
fill(yellow);
circle(loc.x, loc.y, size);
}

void act() {
}


}
