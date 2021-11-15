class Bullet extends GameObjects {
  color bc;
  
  Bullet(PVector _vel, color c, int s) {
    lives = 1;
    loc = new PVector(myhero.loc.x, myhero.loc.y);
    vel = _vel; 
    bc = c;
    size = s;
    roomX = myhero.roomX;
    roomY = myhero.roomY;
  }

  void show() {
    stroke(255);
    fill(black);
    ellipse(loc.x, loc.y, size, size);
  }


  void act() {

    loc.add(vel);

    if (loc.x < width*0.13) lives = 0;
    if (loc.x > width*0.87) lives = 0;
    if (loc.y < height*0.17) lives = 0;
    if (loc.y > height*0.83) lives = 0;

  }
}
