
//This function draws the BUILD screen

void build2() {
 draws();

  drawmap2();




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




  bbuttons();
  animations();
  toolbar();

  //play
  if (building ==false) {
    if (game.clicked) mode=MAP2;
  }
}
