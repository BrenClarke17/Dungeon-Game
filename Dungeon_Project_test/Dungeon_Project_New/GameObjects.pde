class GameObjects {
  int roomY, roomX;
  PVector loc;
  PVector vel;
  int lives;
  int size;
  color = c;

  void show() {
  }

  void act() {
    loc.add(vel);

    if (loc.x < width*0.13) loc.x = width*0.13;
    if (loc.x > width*0.87) loc.x = width*0.87;
    if (loc.y < height*0.17) loc.y = height*0.17;
    if (loc.y > height*0.83) loc.y = height*0.83;
  }
boolean irw(GameObjects myObj) {
 if (myObj.roomX == roomX && myObj.roomY == roomY)
 return true;
 else
 return false;
}

  boolean icw(GameObjects myObj) {
    float d = dist(myObj.loc.x, myObj.loc.y, loc.x, loc.y);
    if (irw(myObj) && d <= size/2 + myObj.size/2) 
 return true;
 else
 return false;
 
  }
}
