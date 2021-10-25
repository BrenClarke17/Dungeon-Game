class hero extends GameObjects {
  //instance variables
  PVector dir;
  int shotTimer, threshold;
  float speed;
  hero() {
    loc = new PVector(width/2, height/2);
    vel = new PVector(0, 0);
    dir = new PVector(0, -0.1);
    lives = 1;
    speed = 3.5;
  }

  void show() {
    pushMatrix();
    translate(loc.x, loc.y);
    rotate(dir.heading());
    fill(255);
    stroke(255);
    ellipse(0, 0, 50, 50);
    fill(0);
    rect(10, -10, 15, 5);
    rect(10, 10, 15, 5);
    rect(-10, 0, 5, 20);



    popMatrix();
  }

  void act() {
    super.act();

    if (vel.mag() > 3) { 
      vel.setMag(3);
    }

    //if (wkey) {
    //  vel.add(dir);
    //}
    //if (skey) vel.sub(dir);
    //if (akey) dir.rotate( -radians(5) );
    //if (dkey) dir.rotate( radians(5) );
    //if (spacekey /*&& shotTimer >= threshold*/) {
    //  //myObjects.add(new Bullet());
    //  //shotTimer = 0;
      
    //}
    if (wkey) vel.y = -speed;
      if (akey) vel.x = -speed;
      if (skey) vel.y = speed;
      if (dkey) vel.x = speed;
      
    if (!wkey && !skey) vel.y = 0; 
    if (!akey && !dkey) vel.x = 0;
  }
}
