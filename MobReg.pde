class MobReg extends Mob {
  MobReg(float _x, float _y, float _vx, float _vy) {
    super(_x, _y, _vx, _vy);
    d=40;//diameter
    hp=1; 
    maxhp = hp;
    value=1;//?
    speed=2;
    cfill=dgreen;
    cstroke=lgreen;
  }
}
