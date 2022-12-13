class TowerAoE extends Tower {

  TowerAoE(float _x, float _y) {
    super(_x, _y);
    cfill=black;
    threshold=30;
    speed=3;
  }


  void show() {
    super.show();
    circle(x, y, 100);//this waht put?
  }

  void act() {

    cooldown++;
    if ( cooldown >=threshold) {//t 
      cooldown=0;
      bullets.add(new AoE_Ring (x, y, 0, 0));//up.
    }
  }
}
