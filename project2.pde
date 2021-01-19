import javax.swing.*; 
//int s=5  ;   //tolerance for mousePosIsBallPos
color colour;
Ball bl;
Timer startTimer;
Game GG;



void setup() {
  noStroke();
  size(400, 400);
  frameRate(3000);
  bl= new Ball(200, 390, 10, false);
  startTimer = new Timer(0);
  GG=new Game();
  GG.players();
}

void draw() {
  background(252);
  drawFinishLine();
  startTimer.countUp();
  bl.display(20, 0, 0);
  bl.move();
  drawPath();
  checkOutOfBounds();
  startTimer.display();
  GG.endOfRound();
}

void reset() { //set ellipse position back to start
  bl.xPos = 200;
  bl.yPos = 390;
  startTimer=new Timer(0);
}


void checkOutOfBounds() {
  colour = checkColour(); //colour = return of checkColour
  boolean outOfBounds = false;
  if (colour == (-16777216)) { //check if x and y Coords are black
    outOfBounds = true;
  }
  if (outOfBounds == true) {//resets the location of dot when it touches of  black wall
    reset();
  }
}
void drawPath() { //draws path
  fill(0);
  rect(0, 0, 190, 100);
  rect(210, 0, width, 80);
  rect(0, 100, 350, 100);
  rect(370, 80, width, height);
  rect(0, 200, 100, 100);
  rect(120, 220, width, 80);
  rect(0, 100, 100, height);
  rect(100, 320, 90, height);
  rect(210, 300, width, height);
}

void drawFinishLine() {
  noStroke();
  for (int i=0; i < 4; i++)
  {
    for (int j=47; j<53; j++)
    {
      if ((i + j + 1) % 2 == 0)
        fill(255);
      else
        fill(120);
      rect(j*4, i*4, 4, 4);
    }
  }
}  



color checkColour() {//return color to variable colour
  colour = get(bl.xPos, bl.yPos);
  // print(colour);
  return colour;
}
