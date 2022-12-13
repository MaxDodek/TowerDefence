void build1() {
draws();
  drawmap1();


  int counter=0;


  counter++;
  if (counter < 50) {
    fill(lgreen);
    textSize(100);
    text("Build Mode", 500, 50);
  } // -- how make blink???

  noStroke();
  fill(black);
  rect(width-150, 400, 300, height+100);


textSize(25);
  bbuttons();
  animations();
  toolbar();

  if (building ==false) {
    if (game.clicked) mode=MAP1;
  }
}



//toolbar


void bbuttons() {
  //buttons
  game.show();

  reguns.show();
  rapid.show();
  sniper.show();
  speed.show();
  aoe.show();


  //place regular gun
  if (reguns.clicked&& money>=price[0]) {//make rest like this
    towers.add(new TowerRegular(-100, -100));
    money=money-price[0];
  }

  //place speed gun
  if (speed.clicked&& money>=price[1]) {//make rest like this
    towers.add(new TowerSpeed(-100, -100));
    money=money-price[1];
  }


  //place Rapid gun
  if (rapid.clicked&& money>=price[2]) {//make rest like this
    towers.add(new TowerRapid(-100, -100));
    money=money-price[2];
  }

  //place Sniper

  if (sniper.clicked && money>=price[3]) {//make rest like this
    towers.add(new TowerSniper(-100, -100));
    money=money-price[3];
    
  }

  //place Aoe
  if (aoe.clicked&& money>=price[4]) {//make rest like this
    towers.add(new TowerAoE(-100, -100));
    money=money-price[4];
  }
}


//  //place regular gun
//  int i=0;
//  while (i<towers.size()) {
//    TowerRegular mytower=towers.get(i);
//    mytower.show();
//    mytower.act();
//    if (reguns.clicked&& money-mytower.price>=mytower.price) {//make rest like this
//      int i=0;
//      while (i<towers.size()) {
//        TowerRegular mytower=towers.get(i);
//        mytower.show();
//        mytower.act();
//        //building=true;
//        println(building);

//        towers.add(new TowerRegular(0, 0));
//        money=money-mytower.price;
//        i++;
//      }
//    }
//  }


//  //place rapid gun
//  int i=0;
//  while (i<towers.size()) {
//    TowerRapid mytower=towers.get(i);
//    mytower.show();
//    mytower.act();
//    if (rapid.clicked&& money-mytower.price>=mytower.price) {//make rest like this
//      int i=0;
//      while (i<towers.size()) {
//        TowerRegular mytower=towers.get(i);
//        mytower.show();
//        mytower.act();
//        //building=true;
//        println(building);
//        towers.add(new TowerRappid(0, 0));
//        money=money-mytower.price;
//        i++;
//      }
//    }
//  }

//  //speed
//  int i=0;
//  while (i<towers.size()) {
//    TowerSpeed mytower=towers.get(i);
//    mytower.show();
//    mytower.act();
//    if (speed.clicked&& money-mytower.price>=mytower.price) {//make rest like this
//      int i=0;
//      while (i<towers.size()) {
//        TowerRegular mytower=towers.get(i);
//        mytower.show();
//        mytower.act();
//        //building=true;
//        println(building);

//        towers.add(new TowerSpeed(0, 0));
//        money=money-mytower.price;
//        i++;
//      }
//    }
//  }





//  //place sniper gun
//  int i=0;
//  while (i<towers.size()) {
//    TowerRegular mytower=towers.get(i);
//    mytower.show();
//    mytower.act();
//    if (sniper.clicked&& money-mytower.price>=mytower.price) {//make rest like this
//      int i=0;
//      while (i<towers.size()) {
//        TowerSniper mytower=towers.get(i);
//        mytower.show();
//        mytower.act();
//        //building=true;
//        println(building);

//        towers.add(new TowerSniper(0, 0));
//        money=money-mytower.price;
//        i++;
//      }
//    }
//  }


//  //place speed gun

//  int i=0;
//  while (i<towers.size()) {
//    TowerSpeed mytower=towers.get(i);
//    mytower.show();
//    mytower.act();
//    if (speed.clicked&& money-mytower.price>=mytower.price) {//make rest like this
//      int m=0;
//      while (i<towers.size()) {
//        TowerSniper mytower=towers.get();
//        mytower.show();
//        mytower.act();
//        //building=true;
//        println(building);

//        towers.add(new TowerSpeed(0, 0));
//        money=money-mytower.price;
//        i++;
//      }
//    }
//  }






//  //place AoE gun
//  int i=0;
//  while (i<towers.size()) {//.size= size of arrayList. Find out size-(of mobs) can't know. mobs.size- tell processing how many mobs left in list
//    TowerAOE mytower=towers.get(i);
//    mytower.show();
//    mytower.act();
//    if (aoe.clicked&& money-mytower.price>=mytower.price) {//make rest like this

//      //building=true;
//      println(building);

//      towers.add(new TowerAoE(-100, -100));
//      money=money-mytower.price;
//    }
//    i++;
//  }
//}
