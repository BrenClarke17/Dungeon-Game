class GameObjects {
PVector loc;
PVector vel;
int lives;
void show() {
}

void act() {
 if (loc.y < -50) loc.y = height+50;
    if (loc.y > height+50) loc.y = -50;
    if (loc.x < -50) loc.x = width+50;
    if (loc.x > width+50) loc.x = -50;
   
    loc.add(vel);
}


}
