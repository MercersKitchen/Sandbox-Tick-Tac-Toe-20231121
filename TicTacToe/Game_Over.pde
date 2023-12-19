/* Does this doe run easier with Arrays, Procedures, and Loops?
 */
//
int counter, xWinsInt, oWinsInt;
Boolean xWinsBoolean, oWinsBoolean; //Must be reset to false in game reset
Boolean[] addCounter = new Boolean[10];
Boolean someoneWinsReset;
//
/* Note: someoneWinsReset
 - tracks X & O wins by passing the appropriate Boolean Value
 - appriopriate Boolean must be reset at RESET
 - someoneWinsReset controls CANVAS interuption of Game Space
 - see Splash Screen
 */
//
void gameOver( Boolean xWinOnce, Boolean oWinOnce, Boolean someoneWins) {
  println("Game Over");
  //Note: counter also controls if gameOver is run as CATS but noone WINS, see Splash Screen
  if ( counter>=9 && xWinOnce==false && oWinOnce==false ) { //CATS Code ignores all WIN Code by IF-ELSE Structure
    println("CATs");
  } else { //WIN Code
    if ( xWinOnce==true ) { //Previously xWins() Procedure
      println("X Wins", xWinsInt);
      if ( xWinsBoolean==false ) {
        xWinsInt++;
        xWinsBoolean=true;
      }
    } //End xWinOnce
    if ( oWinOnce==true ) { //Previously oWins() Procedure
      println("O Wins", oWinsInt);
      if ( oWinsBoolean==false ) {
        oWinsInt++;
        oWinsBoolean=true;
      }
    } //End oWinOnce
  } //End WIN Code
  someoneWinsReset = someoneWins;
} //End gameOver
//
void threeIn_Row() {
  //Rows
  if ( tX[1]==true && tX[2]==true && tX[3]==true ) gameOver( true, false, true); //Example of Developed Procedure
  if ( tX[4]==true && tX[5]==true && tX[6]==true ) gameOver( true, false, true);
  if ( tX[7]==true && tX[8]==true && tX[9]==true ) gameOver( true, false, true);
  if ( tO[1]==true && tO[2]==true && tO[3]==true ) gameOver( false, true, true);
  if ( tO[4]==true && tO[5]==true && tO[6]==true ) gameOver( false, true, true);
  if ( tO[7]==true && tO[8]==true && tO[9]==true ) gameOver( false, true, true);
  //Columns
  if ( tX[1]==true && tX[4]==true && tX[7]==true ) gameOver( true, false, true);
  if ( tX[2]==true && tX[5]==true && tX[8]==true ) gameOver( true, false, true);
  if ( tX[3]==true && tX[6]==true && tX[9]==true ) gameOver( true, false, true);
  if ( tO[1]==true && tO[4]==true && tO[7]==true ) gameOver( false, true, true);
  if ( tO[2]==true && tO[5]==true && tO[8]==true ) gameOver( false, true, true);
  if ( tO[3]==true && tO[6]==true && tO[9]==true ) gameOver( false, true, true);
  //Diagonals
  if ( tX[1]==true && tX[5]==true && tX[9]==true ) gameOver( true, false, true);
  if ( tX[3]==true && tX[5]==true && tX[7]==true ) gameOver( true, false, true);
  if ( tO[1]==true && tO[5]==true && tO[9]==true ) gameOver( false, true, true);
  if ( tO[3]==true && tO[5]==true && tO[7]==true ) gameOver( false, true, true);
} //End 3 In a Row
//
// End Sub Program Game Over
