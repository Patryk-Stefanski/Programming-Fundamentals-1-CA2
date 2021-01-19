public class Ball {
  private int xPos, yPos;
  private int diameter;
  private int green, red, blue;
  private int s = 5; //tolerance for mousePosIsBallPos
  boolean mousePosIsBallPosFlag;


  Ball(int xPos, int yPos, int diameter, boolean mousePosIsBallPosFlag) {//constructor
    this.xPos = xPos;
    this.yPos = yPos;
    this.s = 5;
    this.diameter = diameter;
    this.mousePosIsBallPosFlag = mousePosIsBallPosFlag;
  }



  void display() { //displays ellipse
    ellipse(xPos, yPos, diameter, diameter);
    if (this.yPos>400) {   //bottom border
      this.yPos=this.yPos-15;
    }
  }
  void display(int redVal, int greenVal, int blueVal) { //displays ellipse and changes its colour
   if((redVal)>50){
   this.red=redVal;
   }
   else{
     this.red=240;
   }
    this.green=greenVal;
    this.blue=blueVal;
    fill(red, green, blue);
    ellipse(xPos, yPos, diameter, diameter);
    if (this.yPos>400) {   //bottom border
      this.yPos=yPos-15;
    }
  }




  void colour(int redVal, int greenVal, int blueVal) { // set colour of ellipse
    this.red=redVal;
    this.green=greenVal;
    this.blue=blueVal;
    fill(red, green, blue);
   
  }


  boolean mousePosIsBallPos() { //mouse position is the same as ball pos
    if ((mouseX>xPos-s && mouseX<xPos+s) && (mouseY>yPos-s && mouseY<yPos+s)) {
      setMousePosIsBallPosFlag(true);
      //print(mousePosIsBallPosFlag);
      return true;
    }
    {
      setMousePosIsBallPosFlag(false);
      //print(mousePosIsBallPosFlag);
      return false;
    }
  }

  void move() { //moves ball by following cursor

    if (mousePosIsBallPos() == true) {
      this.setXPos(mouseX);
      this.setYPos(mouseY);
    } else {
      return;
    }
  }

  //Getters
  public int getXPos() {
    return xPos;
  }
  public int getYPos() {
    return yPos;
  }
  public int getDiameter() {
    return diameter;
  }
  public int getRed() {
    return red;
  }
  public int getGreen() {
    return green;
  }
  public int getBlue() {
    return blue;
  }
  public int getS() {
    return s;
  }
  public boolean getMousePosIsBallPosFlag() {
    return mousePosIsBallPosFlag;
  }


  //Setters
  public void setXPos(int xPos) {
    this.xPos=xPos;
  }
  public void setYPos(int yPos) {
    this.yPos=yPos;
  }
  public void setDiameter(int diameter) {
    this.diameter=diameter;
  }
  public void setRed(int red) {
  if((red)>50){
   this.red=red;
   }
   else{
     this.red=240;
   }
  }
  public void setGreen(int green) {
    this.green=green;
  }
  public void setBlue(int blue) {
    this.blue=blue;
  }
  public void setS(int s) {
    this.s=s;
  }
  public void setMousePosIsBallPosFlag(boolean mousePosIsBallPosFlag) {
    this.mousePosIsBallPosFlag=mousePosIsBallPosFlag;
  }
}
