class Weapon {
int shotTimer;
int threshold;
int bulletSpeed;

Weapon() {
shotTimer = 0;
threshold = 20;
bulletSpeed = 8;
  
}

Weapon(int thr, int bs) {
shotTimer = 0;
threshold = thr;
bulletSpeed = bs;
}

void update() {
shotTimer++;
}

void shoot() {
if (shotTimer >= threshold) {
PVector aimVector = new PVector(mouseX-myhero.loc.x, mouseY-myhero.loc.y);
aimVector.setMag(bulletSpeed);
myObjects.add(new Bullet(aimVector, black, 10));
shotTimer = 0;

}
}


}
