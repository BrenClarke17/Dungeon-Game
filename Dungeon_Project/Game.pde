void game() {
  background(lbrown);
  
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
