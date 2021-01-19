public class Game {
  private String[] playerName;
  private int nrOfPlayers;
  private int index = 0;

  Game() {//constructor
  }

  boolean stopTime() { 
    if (bl.getYPos()<15 && bl.getMousePosIsBallPosFlag() == true ) {//timer stops when ball is at finishing line
      return true;
    } else {
      return false;
    }
  }

  void players() {//chooses how many players are going to play each player has one round 
    nrOfPlayers = Integer.valueOf(JOptionPane.showInputDialog("please enter the number of players")) ;
    playerName=new String [nrOfPlayers];
    println(nrOfPlayers);
  }


  void endOfRound() { //ipon finishing mze asks for name and prints players name and time
    if ((stopTime())==true) {
      playerName[index]=JOptionPane.showInputDialog("Please enter a player name ", "Patryk"); 
      println( playerName[index].substring(0, 6).toUpperCase()+"`s" + " Time is=" +nf(+startTimer.getTime(), 3, 3));
      index+=1;
      reset();
      if ((index)>=(nrOfPlayers)) {//checks how many players have finished and if all players are finished it closes the game
        exit();
      }
    }
  }

  //getters
  public String[] getPlayerName() {
    return playerName;
  }
  public int  getNrOfPlayers() {
    return nrOfPlayers;
  }
  public int getindex() {
    return index;
  }
  //Setters
  public void setPlayerName(String[] playerName) {
    this.playerName=playerName ;
  }
  public void setNrOfPlayers(int nrOfPlayers) {
    this.nrOfPlayers=nrOfPlayers;
  }
  public void setIndex(int index) {
    this.index=index;
  }
}
