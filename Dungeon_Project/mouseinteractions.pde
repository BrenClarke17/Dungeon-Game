void mouseReleased() {
  //clicks stuff
  if (mode == INTRO) {
    introclicks();
  } else if (mode == GAME) {
    gameclicks();
  } else if (mode == GAMEOVER) {
    gameoverclicks();
  }
}

void mousePressed() {
}

//keyboard

void keyReleased() {
  if (key == 'w' || key == 'W') wkey = false;
  if (key == 's' || key == 'S') skey = false;
  if (key == 'a' || key == 'A') akey = false;
  if (key == 'd' || key == 'D') dkey = false;
  if (keyCode ==' ') spacekey = false;
}

void keyPressed() {
  if (key == 'w' || key == 'W') wkey = true;
  if (key == 's' || key == 'S') skey = true;
  if (key == 'a' || key == 'A') akey = true;
  if (key == 'd' || key == 'D') dkey  = true;
    if (keyCode ==' ') spacekey = true;
}
