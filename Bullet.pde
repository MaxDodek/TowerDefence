//Some towers shoot bullets! If a mob is hit by a bullet,
//it does damage.

class Bullet {
  float x, y, vx, vy, size;
  int lives;
  Bullet(float _x, float _y, float _vx, float _vy) {
    x=_x;
    y=_y;
    vx=_vx;
    vy=_vy;
    lives =1;
    size=15;
  }
  void show() {
    stroke(torqoise);
    strokeWeight(4);
    fill(torqoise);
    circle(x, y, size);
  }

  void act() {
    //movedie(x,y,vx,vy,lives);//why not work?//problem in code here?
    x = x + vx;
    y = y + vy;
    offscreen();
    //if (lives==0)
  }
  void offscreen() {
    if (x<0|| x>width-300||y<0||y>height) lives=0;
  

    //300,
  }
}
