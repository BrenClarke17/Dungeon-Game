class hero extends GameObjects {
  //instance variables
  PVector dir;
  int shotTimer, threshold, imtimer, imthreshold;
  float speed;
  Weapon myWeapon;

  hero() {
    loc = new PVector(width/2, height/2);
    vel = new PVector(0, 0);
    dir = new PVector(0, -0.1);
    lives = 4;
    speed = 3.5;
    roomX = 1;
    roomY = 1;
    size = 50;
    imtimer = 120;
    imthreshold = 180;
    myWeapon = new Shotgun();
  }

  void show() {
    pushMatrix();
    translate(loc.x, loc.y);
    rotate(dir.heading());
       if (imtimer >= 0) {
      fill(red);
      stroke(red);
    } else {
      fill(255);
      stroke(255);
    }
  
    ellipse(0, 0, size, size);
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


    if (wkey) vel.y = -speed;
    if (akey) vel.x = -speed;
    if (skey) vel.y = speed;
    if (dkey) vel.x = speed;

    if (!wkey && !skey) vel.y = 0; 
    if (!akey && !dkey) vel.x = 0;

    //north room
    if (nRoom != #FFFFFF && loc.y == height*0.17 && loc.x >= width/2-50 && loc.x <= width/2+50) {
      roomY--;
      loc = new PVector(width/2, height*0.83-10);
    }
    //east room
    else if (eRoom != #FFFFFF && loc.x == width*0.87 && loc.y >= height/2-50 && loc.y <= height/2+50) {
      roomX++;
      loc = new PVector(width*0.13+10, height/2);
    }
    //south room
    else if (sRoom != #FFFFFF && loc.y == height*0.83 && loc.x >= width/2-50 && loc.x <= width/2+50) {
      roomY++;
      loc = new PVector(width/2, height*0.17+10);
    }
    //west room
    else if (wRoom != #FFFFFF && loc.x == width*0.13 && loc.y >= height/2-50 && loc.y <= height/2+50) {
      roomX--;
      loc = new PVector(width*0.87-10, height/2);
    }

    myWeapon.update();
    if (space) myWeapon.shoot();

    if (myhero.lives == 0) {
      mode = GAMEOVER;
    }
    imtimer--;
    if (imtimer <= 0) {

      int i = 0;
      while (i < myObjects.size()) {
        GameObjects myObj = myObjects.get(i);
        if (myObj instanceof Enemy) {
          if (myObj.roomX == roomX && myObj.roomY == roomY) {
            float d = dist(myObj.loc.x, myObj.loc.y, loc.x, loc.y);
            if (d <= size/2 + myObj.size/2) {
              println(lives);
              lives--;
              imtimer = 120;
            }
          }
        }
        i++;
      }
    }
  }
}
