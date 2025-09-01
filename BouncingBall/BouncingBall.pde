int xVel = 2;
int xPos = 0;
boolean moveRight = true;

void setup() {
  size(600, 400);
}

void draw() {
  background(255);
  ellipse(xPos, 50, 20, 20);
  
  if (moveRight==true){
  xPos = xPos + xVel;
  }
  if (moveRight==false){
   xPos = xPos - xVel;
  }
}

void keyPressed() {
  if (key=='a') {
    moveRight = false;
  }
  if (key=='d') {
  moveRight = true;
  }
}
