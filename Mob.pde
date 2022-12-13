//Mobs are the monsters that the towers defend against.
//Mobs spawn at the start and then move across the map,
//changing direction when they hit a node. If they get
//to the end of the map, they deal damage to the player.
//Once the player has no more health, it's game over!
class Mob {//make very general****
  float x, y, vx, vy, d, hp, maxhp, speed; //value (how much money gives you). Spped
  int value;
  color cfill, cstroke;

  //int ln; //level number
  Mob(float _x, float _y, float _vx, float _vy) {
    x=_x;
    y=_y;
    vx=_vx;
    vy=_vy;

    //ln=1;
  }

  void show() {
    fill(cfill);
    stroke(cstroke);
    strokeWeight(5);
    circle(x, y, d);

    healthbar();
    mob();
  }

  void act() {
    //movedie(x,y,vx,vy,lives);//why not work???
    x = x + vx*speed;
    y = y + vy*speed;
    //mob();
    collisions();
  }


  void collisions() {

    //w/ Nodes
    // making change w/ nodes + collision code(***look at last years code for reference )
    int i =0;
    while (i<nodes.length) { //length - use exact number of how many nodes(then won't need to change it if add nodes)
      //colision code - when node overlap w/ the mob
      if (dist( nodes[i].x, nodes[i].y, x, y)<5) {//dist function- check dist between 2 points -Node =nodes[i].x, nodes[i], mob=x,y
        vx=nodes[i].dx;
        vy=nodes[i].dy;
      }
      i++;
    }


    // w/ Bullets
    i =0;
    while (i<bullets.size()) { //length - use exact number of how many nodes(then won't need to change it if add nodes)
      //colision code - when node overlap w/ the mob
      Bullet mybullet=bullets.get(i);//myMob is instead of saying 'mobs.get(i)' each time
      //same as below - if (dist( mytower.x, mytower.y, x, y)<d/2/*tower r*/ + mybullet.d/2/*bullet r*/) {
      if (dist( mybullet.x, mybullet.y, x, y)<d/2 + mybullet.size/2) {//create better collision code???
        hp=hp-1;
        mybullet.lives=0;
      }
      i++;
    }
  }



  //puting into voidshow
  void healthbar() {
    rectMode(CORNER);
    noStroke();

    fill(black);
    rect(x-27, y-(d+10)-2, 54, 24);//background (gives an outline)

    fill(bluecoral); //second background
    rect(x-25, y-(d+10), 50, 20);

    fill(red);
    rect(x-25, y-(d+10), hp*50/maxhp, 20);
    rectMode(CENTER);
  }

  void mob() {

    if (x>width-300) {
      hp=0;
      plives--;
      money--;
      money=money-value;
      //300,
    }
  }
}
