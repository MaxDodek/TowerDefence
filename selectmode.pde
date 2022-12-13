void Select() {
  
  background(black);
  
  fill(red);
  textSize(100);
  text("Select Mode",width/2,100);
  
  
  //button
  map1.show();
  map2.show();//can I have this same name as mode?
  fill(red);
  text("Map 1", width/2-300, height/2+300);
  text("Map 2", width/2+300, height/2+300);
  
  int s= 1;
  if (map1.clicked) {
    mode=MAP1;
    theme.play();

    nodes = new Node[8];//Do I write 9?--- no, it's 0-8//would there be a more efficient way for this???
    nodes [0]=new Node(275, 500, 0, -s);//what put in brackets/braces-- (x, y, dx, dy)//dx = direction to the left(-)/right(+), dy=direction up(-)/down(+)
    nodes [1]=new Node(275, 250, -s, 0);//put in direction where should be nothing, 0
    nodes [2]=new Node(100, 250, 0, s);
    nodes [3]=new Node(100, height/2+250, s, 0);
    nodes [4]=new Node(600, height/2+250, 0, -s);
    nodes [5]=new Node(600, height/2-250, -s, 0);
    nodes [6]=new Node(500, height/2-250, 0, s);
    nodes [7]=new Node(500, height/2-100, s, 0);

    //begin = new Node(0, 500, 1,0);
  }


  if (map2.clicked) {
    mode=MAP2;
    theme.play();

    nodes = new Node[8];
    nodes [0]=new Node(500, 100, s, 0);//what put in brackets/braces-- (x, y, dx, dy)//dx = direction to the left(-)/right(+), dy=direction up(-)/down(+)
    nodes [1]=new Node(800, 100, 0, s);//put in direction where should be nothing, 0
    nodes [2]=new Node(800, 700, -s, 0);
    nodes [3]=new Node(200, 700, 0, -s);
    nodes [4]=new Node(200, 650, s, 0);
    nodes [5]=new Node(400, 650, 0, -s);
    nodes [6]=new Node(400, 200, s, 0);
    nodes [7]=new Node(500, 200, s, 0);

    //begin = new Node(500, 0, 0,1);//what put?
  }
}
