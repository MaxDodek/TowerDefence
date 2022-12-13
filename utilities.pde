void click() {
  mouseReleased = false;
  if (mousePressed) wasPressed = true;
  if (wasPressed && mousePressed == false) {
    mouseReleased = true;
    wasPressed = false;
  }
}

//boolean isClickingsquare (int x, int y, float w, float h) {
//  if (mouseX > x - w/2 && mouseX< x + w/2 && mouseY> y - h/2 && mouseY<y+h/2) {
//    return true;
//  } else {
//    return false;
//  }
//}

//boolean isClickingcircle (float x, float y, float d) {
//  if (dist(mouseX, mouseY, x, y)<d) {
//    return true;
//  } else {
//    return false;
//  }
//}







//boolean collidingWith(GameObject obj) {
//    return dist(obj.x, obj.y, x, y)<obj.size/2 + size/2;//object (object.x, object.y), it's x and y. is less than sum of the radiay (perspective of enemy, our bullet) + our size
//  }
