class DKcell {

  float opacity;
  PVector loc;
  float x, y, size;
  float d;

  DKcell(float _x, float _y, float s) {
    size = s;
    x = _x;
    y = _y;
    opacity = 0;
  }

  void show() {
    noStroke();
    d = dist(x, y, myhero.loc.x, myhero.loc.y);
    opacity = map(d, 0, 550, 0, 255);
    fill(black, opacity);
    square(x, y, size);
  }

  void act() {
  }
}
