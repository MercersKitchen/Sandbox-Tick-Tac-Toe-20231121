/* Does this doe run easier with Arrays, Procedures, and Loops?
 */
//
int counter, xWinsInt, oWinsInt;
Boolean xWinsBoolean, oWinsBoolean; //Must be reset to false in game reset
Boolean addCounter1, addCounter2, addCounter3, addCounter4;
Boolean addCounter5, addCounter6, addCounter7, addCounter8, addCounter9;
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
  if ( tX1==true && tX2==true && tX3==true ) gameOver( true, false, true); //Example of Developed Procedure
  if ( tX4==true && tX5==true && tX6==true ) gameOver( true, false, true);
  if ( tX7==true && tX8==true && tX9==true ) gameOver( true, false, true);
  if ( tO1==true && tO2==true && tO3==true ) gameOver( false, true, true);
  if ( tO4==true && tO5==true && tO6==true ) gameOver( false, true, true);
  if ( tO7==true && tO8==true && tO9==true ) gameOver( false, true, true);
  //Columns
  if ( tX1==true && tX4==true && tX7==true ) gameOver( true, false, true);
  if ( tX2==true && tX5==true && tX8==true ) gameOver( true, false, true);
  if ( tX3==true && tX6==true && tX9==true ) gameOver( true, false, true);
  if ( tO1==true && tO4==true && tO7==true ) gameOver( false, true, true);
  if ( tO2==true && tO5==true && tO8==true ) gameOver( false, true, true);
  if ( tO3==true && tO6==true && tO9==true ) gameOver( false, true, true);
  //Diagonals
  if ( tX1==true && tX5==true && tX9==true ) gameOver( true, false, true);
  if ( tX3==true && tX5==true && tX7==true ) gameOver( true, false, true);
  if ( tO1==true && tO5==true && tO9==true ) gameOver( false, true, true);
  if ( tO3==true && tO5==true && tO7==true ) gameOver( false, true, true);
} //End 3 In a Row
//
// End Sub Program Game Over
