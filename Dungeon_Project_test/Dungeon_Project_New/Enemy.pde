class Enemy extends GameObjects {

  Enemy() {
    loc = new PVector (width/2, height/2);
    vel = new PVector (0, 0);
    lives = 100;
    roomX = 1;
    roomY = 1;
    size = 50;
  }
  
  Enemy(int x, int y) {
    loc = new PVector (width/2, height/2);
    vel = new PVector (0, 0);
    lives = 100;
    roomX = x;
    roomY = y;
    size = 50;
  }
  

  Enemy(int hp, int s, int x, int y) {
    loc = new PVector (width/2, height/2);
    vel = new PVector (0, 0);
    lives = hp;
    roomX = x;
    roomY = y;
    size = s;
  }

  void show() {
    stroke(black);
    fill(red);
    circle(loc.x, loc.y, size);
    fill(black);
    textSize(20);
    text(lives, loc.x, loc.y);
  }

  void act() {
    super.act();

    int i = 0;
    while (i < myObjects.size()) {
      GameObjects myObj = myObjects.get(i);
      if (myObj instanceof Bullet) {
        if (icw(myObj)) {
          lives = lives -int (myObj.vel.mag());
          myObj.lives = 0;
        }
      }
      i++;
    }

if (lives <= 0) {
mode = GAMEOVER;
}  
}
}
