class DroppedItem extends GameObjects {

int type;
Weapon w;
color c;
float rm = random(0, 1);
DroppedItem(float x, float y, int rx, int ry) {
if (rm >= 0.5) { 
  type = GUN;
  w = new Weapon();
  c = yellow;
} else {
type = HEALTH;
w = myhero.myWeapon;
  c = red;
}
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
fill(c);
circle(loc.x, loc.y, size);
}

void act() {
}



}
