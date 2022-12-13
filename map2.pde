void Map2() {
  draws();
  drawmap2();
  animations();
  toolbar();
  PlayingInterface();
}

void drawmap2() {


  //map 2
  strokeWeight(40);
  stroke(black);
  line(500, 0, 500, 100);//put last 2 as end cordinate(where each curve/ turn'll be)
  line(500, 100, 800, 100);
  line(800, 100, 800, 700);
  line(800, 700, 200, 700);
  line(200, 700, 200, 650);
  line(200, 650, 400, 650);
  line(400, 650, 400, 200);
  line(400, 200, 500, 200 );
  line(500, 200, width-300, 200 );
  //line(500, height/2-100, 900, height/2-100);

  int i=0;
  while (i<8) { //mistake here???
    nodes[i].show();
    i++;
  }

  if (build.clicked) {
    mode=BUILD2;
    building=false;
  }
  if (towers.size()>0) {
    if (wave.clicked) {//make harder each time clicked

      if (mobs.size()==0) {

        //atimer--;
        int xpos=0;
        i=0;



        while (i<ln) {//why are these not always working???
          //why is this not working???
          mobs.add(new MobReg(500, xpos, 0, 1));
          mobs.add(new MobSpeed(500, xpos, 0, 1));
          mobs.add(new MobBig(500, xpos, 0, 1));

        

          xpos=xpos-50;//spacing apart each x variable
          i++;
        }

        //println("");
        ln++;
      }
    }
  }
}
