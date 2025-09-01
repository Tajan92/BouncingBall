int xVel = (int)random(1,5); //speed på x aksen
int xPos = 50; //Hvor den starter på x aksen
int yVel = (int)random(1,5); //speed på y aksen
int yPos = 50; //Hvor den starter på y aksen
boolean moveRight = true; //starter retningen
boolean moveDown = true;
int ballDiameter = 40; //boldens diameter

void setup() {
  size(600, 400); //størrelse på canvas
  fill(0);
}

void draw() {
  background(255); //hvid baggrund (Fjerner forrige cirkel)
  ellipse(xPos, yPos, ballDiameter, ballDiameter); 

//Venstre og højre bevægelser
  if (moveRight==true) {
    xPos = xPos + xVel;
    if (xPos>=width-(ballDiameter/2)) {
      moveRight = false;
    }
  }
  if (moveRight==false) {
    xPos = xPos - xVel;
    if (xPos <= 0+(ballDiameter/2)) {
      moveRight = true;
    }
  }
  
  //Op og ned bevægelse
    if (moveDown==true) {
    yPos = yPos + yVel;
    if (yPos>=height-(ballDiameter/2)) {
      moveDown = false;
    }
  }
  if (moveDown==false) {
    yPos = yPos - yVel;
    if (yPos <= 0+(ballDiameter/2)) {
      moveDown = true;
    }
  }
}

void keyPressed() {
  if (key=='a') {
    moveRight = false;
    println("a");
  }
  if (key=='d') {
    moveRight = true;
    println("d");
  }
}
