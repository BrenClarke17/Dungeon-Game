class GameObjects {
  PVector loc;
  PVector vel;
  int lives;
  void show() {
  }

  void act() {
    if (loc.x < width*0.13) loc.x = width*0.13;
    if (loc.x > width*0.87) loc.x = width*0.87;
    if (loc.y < height*0.17) loc.y = height*0.17;
    if (loc.y > height*0.83) loc.y = height*0.83;

    loc.add(vel);
  }
}
