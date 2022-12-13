//Nodes are invisible objects that we place on the map
//to direct the flow of mobs. When a mob collides with
//a node object, it will change direction according to
//the node's instructions.

//Make mobs go on our pathway of map

class Node {
  float x, y, dx, dy;//direction

  Node(float _x, float _y, float _dx, float _dy) {//this constructor just doing what we tell it in___ what?
    x=_x;
    y=_y;
    dx=_dx;
    dy=_dy;
  }

  //No behavior function, what they do will be in collision, coded in mob

  //just our 'debuging show functino' - won't need it though later. Just making sure it worknow
  void show() {
    fill(lgreen);
    stroke(lgreen);
    strokeWeight(2);
    circle(x, y, 25);  
    line(x,y,x+dx*50,y+dy*50);//*dy and *dx by 50, otherwise it'll be too small.
  }
}
