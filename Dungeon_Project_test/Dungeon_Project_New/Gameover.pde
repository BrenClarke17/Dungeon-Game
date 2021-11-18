void gameover() {
  //Loser
  if (myhero.lives <= 0) {
    background(red);
    textFont(introfont);
    textSize(150);
    fill(0);
    text("LOSER", 400, 150);
    fill(255);
    text("LOSER", 395, 145);
    fill(255);
    rect(400, 400, 200, 100);
    fill(0);
    textSize(25);
    textFont(introfont);
    text("restart", 400, 400);
  } else {
    //Winner
    background(0, 255, 0);
    fill(0);
    textSize(150);
    text("WINNER", 400, 150);
    fill(255);
    text("WINNER", 395, 145);  
    fill(255);
    rect(400, 400, 200, 100);
    fill(0);
    textSize(25);
    textFont(introfont);
    text("restart", 400, 400);
  }
}

void gameoverclicks() {
  if (mouseX > 200 && mouseX < 600 && mouseY > 300 && mouseY < 500) {
    mode = INTRO;
  }
}
