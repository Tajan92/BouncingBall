int xVel = 2;
int xPos = 0;

void setup(){
size(200,200);

}

void draw(){
background(255);
xPos = xPos + xVel;
ellipse(xPos,50,20,20);

}
