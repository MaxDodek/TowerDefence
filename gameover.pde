//This function draws the GAMEOVER screen.  `

void gameOver() {
  background(black);
  fill(red);
  text("Sorry, You lost <3", width/2, height/2-100);
  int round = ln -1; //check
  text("Congradulations, you have one "+round+" rounds!!!", width/2, height/2+100);
  retry.show();

  if (retry.clicked) {
    mode =INTRO;
    theme.pause();
    setup();
  }
}
