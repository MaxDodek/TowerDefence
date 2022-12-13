void Map1() {
  draws();
  drawmap1();
  animations();
  toolbar();
  PlayingInterface();
}

void drawmap1() {
  //map 1
  strokeWeight(40);
  stroke(black);
  line(0, 500, 275, 500);//put last 2 as end cordinate(where each curve/ turn'll be)
  line(275, 500, 275, 250);
  line(275, 250, 100, 250);
  line(100, 250, 100, height/2+250);
  line(100, height/2+250, 600, height/2+250);
  line(600, height/2+250, 600, height/2-250);
  line(600, height/2-250, 500, height/2-250);
  line(500, height/2-250, 500, height/2-100);
  line(500, height/2-100, 900, height/2-100);

  int i=0;
  while (i<8) { //mistake here???
    nodes[i].show();
    i++;
  }

  if (build.clicked&&mobs.size()==0) {

    mode=BUILD1;
    building=false;
  }

  if (towers.size()>0) {
    if (wave.clicked) {//make harder each time clicked

      if (mobs.size()==0) {
        pcounter--;

        //atimer--;
        int xpos=0;
        i=0;



        while (i<ln) {//why are these not always working???
          //why is this not working???
          
          mobs.add(new MobReg(xpos, 500, 1, 0));
          mobs.add(new MobSpeed(xpos, 500, 1, 0));
          mobs.add(new MobBig(xpos, 500, 1, 0));

          //if (frameCount%2 ==0) mobs.add(new MobSpeed(0,500, 1, 0));
          ///*if (frameCount% 2==0)*/ mobs.add(new MobReg(0,500, 1, 0));
          //if (frameCount%1 ==0) mobs.add(new MobBig(0,500, 1, 0));
          //if (frameCount%10 ==0) mobs.add(new MobBig(begin.x, begin.y+xpos, 1, 0));

          xpos=xpos-50;//spacing apart each x variable
          i++;
          if (mobs.size()==0) pcounter=100;
        }

        //println("");
        ln++;
      }
      if (pcounter==0) {

        //float n= (int)random (2,3);
        //if (n==2) bonuslives.show();
        //if(n==3) bomb.show();
        //println(n);
      }
    }
  }
}

void draws() {
  pcounter =100;

  background(dgreen);

  //toolbar
  fill(black);
  noStroke();
  rect(width-150, 400, 300, height+100);//why not need 200?
  fill(lgreen);
  
  
}


void animations() {
  //Mobs//Should this and bullet go under wave.clicked
  //similar code for mobs/towers - make function or something???
  int i=0;//what is wrong?????
  while (i<mobs.size()) {//.size= size of arrayList
    Mob myMob=mobs.get(i);//myMob is instead of saying 'mobs.get(i)' each time (ex. w/ act +show)
    myMob.show();//mobs.get(i)- gets out a mob
    myMob.act();

    if (myMob.hp<=0) {
      mobs.remove(i);
      money=money+myMob.value;
    } else {
      i++;
    }// want to make new mob each time 'next wave' button clicked. Harder each time
  }


  //bullet
  if (mobs.size()>=0) { //why bullets + next wave disapears; fixed has to be '>=' had as just >
    i=0;
    while (i<bullets.size()) {//when no bullets, nothing will happen.
      Bullet myBullet=bullets.get(i);//myMob is instead of saying 'mobs.get(i)' each time
      myBullet.act();
      myBullet.show();
      if (myBullet.lives==0) {
        bullets.remove(i);
        println(bullets.size());
      } else {
        i++;
      }
    }
  }



  //tower
  i=0;
  while (i<towers.size()) {//.size= size of arrayList. Find out size-(of mobs) can't know. mobs.size- tell processing how many mobs left in list
    Tower mytower=towers.get(i);//myMob is instead of saying 'mobs.get(i)' each time
    if (mobs.size()>0) mytower.act();
    mytower.show();
    i++;
  }
}





void toolbar() {
  //format
  textSize(25);
  fill(lgreen);

 //lives
  text("Lives: " + plives, 1050, 40);
  //money
  text("Money: " + money, 1050, 70);

  //Next Wave
  text("Wave #"+ln+":  Next Wave", 1050, 100);

 
}

void PlayingInterface() {///player interacts w/
  //next wave
  wave.show();
  //    Build
  build.show();

  if (plives<=0)mode=GAMEOVER;

  //  //Interacting w/ Game
  //  int i=0;
  //  while (i<towers.size()) {//.size= size of arrayList. Find out size-(of mobs) can't know. mobs.size- tell processing how many mobs left in list
  //    Tower mytower=towers.get(i);//myMob is instead of saying 'mobs.get(i)' each time
  //    mytower.show();
  //    mytower.act();

  //    if (mobs.size()<=0) {
  //      if (isClickingSquare(mouseX,mouseY,mytower.x,mytower.y) == true){
  //      }
  //    }
  //    i++;
  //}
}
