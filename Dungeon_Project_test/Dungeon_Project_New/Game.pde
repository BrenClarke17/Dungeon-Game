void game() {
  drawRoom();
  drawGameObjects();
  drawdarkness();
  drawmap();

}

void drawRoom() {
  background(brown);


  //draw exits
  //#1 - which directions have exits
  nRoom = map.get(myhero.roomX, myhero.roomY-1);
  eRoom = map.get(myhero.roomX+1, myhero.roomY);
  sRoom = map.get(myhero.roomX, myhero.roomY+1);
  wRoom = map.get(myhero.roomX-1, myhero.roomY);

  //#2 drawing the exits
  noStroke();
  fill(black);
  if (nRoom != #FFFFFF) {
    ellipse(width/2, height*0.13, 100, 100);
  }
  if (eRoom != #FFFFFF) {
    ellipse(width*0.9, height/2, 100, 100);
  }
  if (sRoom != #FFFFFF) {
    ellipse(width/2, height*0.87, 100, 100);
  }
  if (wRoom != #FFFFFF) {
    ellipse(width*0.1, height/2, 100, 100);
  }

  fill(lbrown);
  rect(400, 300, 650, 450);
}

void drawGameObjects() {
  int i = 0;
  while (i < myObjects.size()) {
    GameObjects myObj = myObjects.get(i);
    if (myObj.roomX == myhero.roomX && myObj.roomY == myhero.roomY) {
      myObj.show();
      myObj.act();
      if (myObj.lives <= 0) {
        myObjects.remove(i);
      } else {
        i++;
      }
    } else {
       i++; 
    }
  }
}
void drawdarkness() {
  int i = 0;
  while (i < darkness.size()) {
    DKcell myObj = darkness.get(i);
    myObj.show();
    i++;
  }
}


void drawmap() {
  float s = 10;
  int x = 0;
  int y = 0;
  while (y < map.height) {
    color minimap = map.get(x, y);
    fill(minimap);
    square(x*s, y*s, s);
    x++;
    if (x >= map.width) {
      x = 0;
      y++;
    }
  }
  fill(255, 0, 0);
  square(myhero.roomX*s, myhero.roomY*s, s);
}






void gameclicks() {
}
