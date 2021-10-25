void game() {
drawRoom();
drawGameObjects();


}

void drawRoom() {
  background(brown);
 

 //draw exits
//#1 - which directions have exits
//nRoom = map.get(myhero.roomX, myhero.roomY-1);
//eRoom = map.get(myhero.roomX+1, myhero.roomY);
//sRoom = map.get(myhero.roomX, myhero.roomY+1);
//wRoom = map.get(myhero.roomX-1, myhero.roomY);

//#2 drawing the exits
noStroke();
fill(black);
if (nRoom != #FFFFFF) {
ellipse(width/2, height*0.1, 100, 100);
}
if (eRoom != #FFFFFF) {
ellipse(width*0.9, height/2, 100, 100);
}
if (sRoom != #FFFFFF) {
ellipse(width/2, height*0.9, 100, 100);
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
    myObj.show();
    myObj.act();
    if (myObj.lives == 0) {
      myObjects.remove(i);
    } else {
      i++;
    }
  }
}

void gameclicks() {

}
