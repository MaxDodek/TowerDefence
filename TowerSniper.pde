class TowerSniper extends Tower {

  TowerSniper(float _x, float _y) {
    super(_x, _y);
    cfill=lgreen;
    threshold=90;
    speed=10;
  }

  void show() {
    stroke(black);
    strokeWeight(4);
    fill(cfill);



    if (tMode==PLACED) {
      triangle(x, y, x-25, y+50, x+25, y+50);
    } else if (tMode==PLACING) {
      circle(mouseX, mouseY, 40);
      building=true;
      if (mousePressed &&mouseX< width-325) {//&&mouseX< also make a boolean building. ONnly alow clickingo on buttons if  if (! building)
        tMode=PLACED;
        x=mouseX;
        y=mouseY;
        building=false;
        //println(building);
      }
    }

    stroke(red);
    strokeWeight(4);
    if (mobs.size()>0) {
      Mob myMob= mobs.get(0);
      line(x, y, myMob.x, myMob.y);
    }
  }


  void act() {
    //super.act();

    cooldown++;
    int s =speed;
    if (cooldown ==threshold) {
      cooldown=0;//why not work?//tower x adn y below
      Mob myMob= mobs.get(0);
      myMob.hp = 0;

      //bullets.add(new Bullet (myMob.x, myMob.y, 0, 0 ));  //up.
    }
  }
}
