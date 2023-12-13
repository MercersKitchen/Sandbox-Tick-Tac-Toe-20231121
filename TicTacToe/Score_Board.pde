/* Variables used here
 - See Text: xWinsString, oWinsString
 - See Game Over: xWinsInt, oWinsInt
 */
//
void scoreBoardSetup() {
  //
  //Scoreboard Numbers
  textDraw(height, purpleInk, CENTER, CENTER, generalFont, xWinsString, 0.6, xSideIntegerX, xSideIntegerY, xSideIntegerWidth, xSideIntegerHeight);
  textDraw(height, purpleInk, CENTER, CENTER, generalFont, oWinsString, 0.6, oSideIntegerX, oSideIntegerY, oSideIntegerWidth, oSideIntegerHeight);
  //
} //End scoreBoardDraw
//
void scoreBoardDraw() {
  //
  xWinsString = String.valueOf ( xWinsInt ); //Method one: int to string
  oWinsString = Integer.toString ( oWinsInt ); //Method two: int to string
  //println("X", xWinsString, xWinsInt, counter, someoneWinsReset);
  //println("O", oWinsString, oWinsInt);
  //Scoreboard Names
  textDraw(height, purpleInk, CENTER, CENTER, generalFont, x, 0.3, xSideNameX, xSideNameY, xSideNameWidth, xSideNameHeight);
  textDraw(height, purpleInk, CENTER, CENTER, generalFont, o, 0.3, oSideNameX, oSideNameY, oSideNameWidth, oSideNameHeight);
  //
  //Scoreboard Numbers
  if ( xWinsInt >= 2 ) { //After Testing Reset Button, change to larger value
    println("The Weather is ???, time to go outside"); //Use Weather App Here
    delay(1000); 
    exit(); //Provide Option to Restart
  } else {
    textDraw(height, purpleInk, CENTER, CENTER, generalFont, xWinsString, 0.2, xSideIntegerX, xSideIntegerY, xSideIntegerWidth, xSideIntegerHeight);
  }
  if ( oWinsInt >= 2 ) { //After Testing Reset Button, change to larger value
    println("The Weather is ???, time to go outside"); //Use Weather App Here
    delay(1000); 
    exit(); //Provide Option to Restart
  } else {
    textDraw(height, purpleInk, CENTER, CENTER, generalFont, oWinsString, 0.2, oSideIntegerX, oSideIntegerY, oSideIntegerWidth, oSideIntegerHeight);
  }
  //
} //End scoreBoardDraw
//
//End Subprogram Score Board
