//A Tower is the player's main defense against the mobs.
//Towers are placed on the maps and then automatically
//act. There are 3 kinds of towers (but you can make more!)

//Gun Tower: These towers shoot bullets that fly across
//           the screen and do damage to mobs.

//AoE Tower: These towers place AoE_Rings that deal damage
//           to all mobs in the ring.

//Sniper Tower: These towers automatically target the first
//              mob no matter where they are on the scren.

class Tower {
  float x, y;
  int speed;

  int cooldown, threshold; //couts counts up, #frame untill shoot, once gets to threshold, it shoots (smaller, shoots faster)
  final int PLACING =0;
  final int PLACED =1;
  color cfill;

  int tMode;//tower mode
  Tower(float _x, float _y) {
    x=_x;
    y=_y;
    cooldown=0;

    tMode =PLACING;
  }

  void show() {
    stroke(black);
    strokeWeight(4);
    fill(cfill);

    if (tMode==PLACED) {
      square(x, y, 40);
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
    println(building);
  }
  void act() {
    cooldown++;
    int s =speed;
    if (cooldown >=threshold) {
      cooldown=0;//why not work?//tower x adn y below
      println(bullets.size());

      bullets.add(new Bullet (x, y, 0, -s));  //up.
      bullets.add(new Bullet (x, y, 0, +s));  //Down
      bullets.add(new Bullet (x, y, -s, 0));  //Left
      bullets.add(new Bullet (x, y, s, 0));  //Right
    }
    //if (isClicking(mouseX, mouseY, 40,40) == true) {
    //  money=money+price[1];
    //}
  }
}
