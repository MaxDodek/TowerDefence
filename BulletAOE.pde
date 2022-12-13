//Some classes place AoE rings on the map. The AoE ring
//hurts all mobs in the ring. The ring only lasts for a
//short period of time.
int atimer;
class AoE_Ring extends Bullet {
  AoE_Ring(float _x, float _y, float _vx, float _vy) {
    super(_x, _y, _vx, _vy);
    vx=0;
    vy=0;
    atimer=10;
  }
  void show() {
    fill(red);
    circle(x, y, 150);
  }

  void act() {
    //super.act();
    int i =0;

    while (i<mobs.size()) { //length - use exact number of how many nodes(then won't need to change it if add nodes)
      atimer--;
      //colision code - when node overlap w/ the mob
      Mob mobby=mobs.get(i);//myMob is instead of saying 'mobs.get(i)' each time
      //same as below - if (dist( mytower.x, mytower.y, x, y)<d/2/*tower r*/ + mybullet.d/2/*bullet r*/) {
      if (dist( mobby.x, mobby.y, x, y)<size + mobby.d) {//create better collision code???
        mobby.hp=0;
        lives=0;
      } else if (atimer ==0) {
        lives=0;
      }
      i++;
    }
    //if(lives==0) bullets.remove(i);//how make work?
  }
}
//}
