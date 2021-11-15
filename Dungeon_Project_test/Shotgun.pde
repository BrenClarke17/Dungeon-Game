class Shotgun extends Weapon {

  Shotgun() {
    super(90, 15);
  }
  void shoot() {
    if (shotTimer >= threshold) {
      for (int i = 0; i < 5; i++) {
        PVector aimVector = new PVector(mouseX-myhero.loc.x, mouseY-myhero.loc.y);
        aimVector.rotate(random(-0.3, 0.3));
        aimVector.setMag(bulletSpeed);
        myObjects.add(new Bullet(aimVector, black, 10));
      }
      shotTimer = 0;
    }
  }
}
