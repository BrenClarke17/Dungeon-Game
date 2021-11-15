class Wanderer extends Enemy {
  PVector dir;
  
  Wanderer(int x, int y) {
    super(100, 50, x, y);
    dir = new PVector(0, -0.1);
  vel = new PVector (0, 1);
  vel.rotate( random(0, TWO_PI) );
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

    if (loc.x < width*0.13) {
      loc.x = width*0.13;
      vel = new PVector(random(1, 5), random(-5, 5));
  }
    if (loc.x > width*0.87) {
      loc.x = width*0.87;
      vel = new PVector(random(-5, -1), random(-5, 5));
    }
    if (loc.y < height*0.17) {
      loc.y = height*0.17;
      vel = new PVector(random(5, -5), random(1, 5));
    }
    if (loc.y > height*0.83) {
      loc.y = height*0.83;
      vel = new PVector(random(5, -5), random(-5, -1));
    }


}
}
