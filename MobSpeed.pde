class MobSpeed extends Mob {
  MobSpeed(float _x, float _y, float _vx, float _vy) {
    super(_x, _y, _vx, _vy);
    d=40;//diameter
    hp=1; 
    maxhp = hp;
    value=3;//?
    speed=5;
    cfill=torqoise;
    cstroke=lgreen;
  }
}
