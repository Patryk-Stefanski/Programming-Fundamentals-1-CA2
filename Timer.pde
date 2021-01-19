
public class Timer {
  private float Time;
  private int yCoordinate, xCoordinate;

  Timer(float set) {//constructor for new Timer
    Time=set;
  }

  boolean stopTime() { 
    if ((bl.getMousePosIsBallPosFlag() == true ) && (bl.getYPos()<15)) {
      return true;
    } else {
      return false;
    }
  }


  void countUp() {//update the timer ,has to be called in void draw
    if ((mouseX>189)&& (mouseX<209) &&(mouseY<15)&& (stopTime()==true) ) {
      Time=getTime();
    } else if (bl.getMousePosIsBallPosFlag() == true ) {

      Time+=1/frameRate;
    }
  }
  void display() {
    fill(0, 255, 0);
    text(startTimer.getTime(), 20, 20);
  }


  //Getters
  public float getTime() {//returns the currnet time
    return Time;
  }
  public int getYCoordinate() {
    return yCoordinate;
  }
  public int getXCoordinate() {
    return xCoordinate;
  }
  //Setters
  public void setTime(float Time) {
    this.Time=Time;
  }
  public void setYCoordinate(int yCoordinate) {
    this.yCoordinate=yCoordinate;
  }
  public void setXCoordinate(int xCoordinate) {
    this.xCoordinate=xCoordinate;
  }
}
