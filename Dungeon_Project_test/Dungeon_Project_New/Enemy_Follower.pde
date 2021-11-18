class Follower extends Enemy {

  Follower(int x, int y) {
  super(100, 50, x, y);
  }
  
   void show() {
    stroke(black);
    fill(lblack);
    circle(loc.x, loc.y, size);
    fill(255);
    textSize(20);
    text(lives, loc.x, loc.y);
  }
void act() {
super.act();
if(dist(myhero.loc.x, myhero.loc.y, loc.x, loc.y) <= 250) {
vel = new PVector(myhero.loc.x - loc.x, myhero.loc.y - loc.y);
vel.setMag(1);
} else {
  vel = new PVector(0, 0);
}
}
}
