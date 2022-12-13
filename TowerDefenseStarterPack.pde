 //Tower Defense Game
//Max Dodek
//Programming 12

// ================ GLOBAL VARIABLES =================
//modes
final int INTRO    = 0;
final int BUILD1    = 1;
final int BUILD2    = 2;
final int GAMEOVER = 3;
final int MAP1 =4;
final int MAP2 =5;
final int SELECTMODE =6;
int mode;

PFont MilkyHoney;



//Pallette
color white = #ffffff;

color black = #433A3F;

color bluecoral = #3D5A6C;
color red= #d90429 ;

color torqoise = #72A98F;
color lgreen = #8DE969;
color dgreen = #CBEF43;



//Mouse & Keyboard interaction variables
boolean mouseReleased;
boolean wasPressed;

//Buttons
Button start, retry;
//  toolbar
//    game
Button wave, build;
//    build
Button game;
//    gun
Button reguns, rapid, sniper, speed, aoe;

//powerups
// lives
Button bonuslives, bomb;

//  maps (select)
Button map1, map2;


//Collections of objects (?)
Node[] nodes; // a node on each corner, where there are turns for the map (8) - just randomly same # as mr. Peletier - just trying to make random map (very different from him)
Node begin;//where begins


ArrayList <Mob> mobs; //can add/remove. instead of - Mob mobs; <TYPE OF thing contaned in arraylist >
ArrayList <Tower> towers; //can add/remove
//tower pricing
final int [] price= {5, 25, 40, 60, 100};

ArrayList<Bullet> bullets;
int ln; //Level number
//int acli = 0;//#times next wave clicked, once get to max, AoE disapear
//int atimer =100;

boolean building;


//Images and Gifs
PImage nwave,mp1,mp2;//next wave

Gif[] gifs;//what is wrong????
Gif intr;//intro


//Fonts

//music

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer theme;


// other for game
int money;
int plives;
int pcounter;

boolean tower;//for tower
// ===================== SETUP =========================

void setup() {
  rectMode(CENTER);
  imageMode(CENTER);
  textAlign(CENTER, CENTER);
  size(1200, 800);
  ln=1;
  building=false;//?
  //fullScreen();
  initializeModes();
  initializeVariables();
  makeButtons();
  player();


  //  if (mode==MAP1) {
  //    makeNodes2();
  //  }
  
  MilkyHoney = createFont("MilkyHoney.ttf", 50);
}

void initializeModes() {
  //set up the default mode for things
  rectMode(CENTER);
  imageMode(CENTER);
  textAlign(CENTER, CENTER);
  mode = INTRO;
}

void initializeVariables() {
  //Load Images & Gifs
  intr = new Gif ("introgif/frame_", "_delay-0.04s.gif", 95, 1, width/2, height/2, width, height);
  // before,  after, int n-frames,  speed, x, y

  //images
  //for buttons
  nwave=loadImage("nwave.png");
  mp1=loadImage("1.png");
  mp2=loadImage("2.png");
  
  //gifs


  //Load Fonts

  // Music
  minim = new Minim (this);
  theme = minim.loadFile("deadpoolthme.mp3");
  //Create Collections of Objects
  //objects = new ArrayList<GameObject>();



  mobs = new ArrayList<Mob>();// can arraylist - can grow/shrink
  //starts w/ size zero, add mobs to it as we want. Write loop to animate mob
  towers=new ArrayList<Tower>();
  bullets=new ArrayList<Bullet>();
}

void makeButtons() {
  //format - ( text,  _x,  _y,  _w,  _h,  norm,  high)
  //INTRO - Start
  start = new Button("Begin...", width/2,height/2, 150, 75, dgreen, black); //text, x,y, w,h, higlight,normal

 //Maps
 
  map1 = new Button(mp1, width/2-300, height/2, 400,400, dgreen, black);
  map2 = new Button(mp2, width/2+300, height/2, 400, 400, dgreen, black);
  
  
  //PLAY - Next Wave, To 'Build' Mode
  wave = new Button(nwave, 1050, 160, 150, 75, dgreen, black);//how make tactile???//how to make new mob when this pressed???
  build = new Button("Build", 1050, 260, 150, 75, dgreen, black);
  //BUILD - To play mode, Buy Sniper, Buy Gun, Buy AoE
  game= new Button("Game", 1050, 160, 150, 75, dgreen, black);
  //  guns

  //int i=0;
  //   while (i<towers.size()) {
  //   Tower mytower=towers.get(i);
  reguns = new Button ("Regular $:"+price[0], 1050, 260, 200, 75, dgreen, black);
  speed = new Button ("Fast $: "+price[1], 1050, 360, 200, 75, dgreen, black);
  rapid = new Button ("Rapid $: "+price[2], 1050, 460, 200, 75, dgreen, black);
  sniper= new Button ("Sniper $: "+price[3], 1050, 560, 200, 75, dgreen, black);
  aoe =new Button ("AOE: $"+price[4], 1050, 660, 200, 75, dgreen, black);
  //i++;



  //Powerups
  bonuslives= new Button ("Bonus Lives: "+price[1], 1050, 560, 200, 75, dgreen, black);
  bomb =new Button ("Bomb: "+price[2], 1050, 660, 125, 75, dgreen, black);
  //GAMEOVER - Reset

  retry = new Button("Retry", width/2, 100, 200, 100, white, black); //text, x,y, w,h, higlight,normal

 
}




// ===================== DRAW ===========================

void draw() {
  textFont(MilkyHoney);
  click();
  if (mode == INTRO) {
    intro();
  } else if (mode == BUILD1) {
    build1();
  } else if (mode == BUILD2) {
    build2();
  } else if (mode == GAMEOVER) {
    gameOver();
  } else if (mode == MAP1) {//these instead of play
    Map1();
  } else if (mode == MAP2) {
    Map2();
  } else if (mode==SELECTMODE) {
    Select();
  }
}



void player() {
  plives=3;
  money=150;
}
