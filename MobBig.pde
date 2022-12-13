class MobBig extends Mob {
  MobBig(float _x, float _y, float _vx, float _vy) {
    super(_x, _y, _vx, _vy);
    d=80;//diameter
    hp=10;
    maxhp = hp;
    value=3;//?
    speed=4;
    cfill=red;
    cstroke=lgreen;
  }
}
