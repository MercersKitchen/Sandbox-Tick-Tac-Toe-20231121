/* Does this doe run easier with Arrays, Procedures, and Loops?
 */
//
int counter=0, xWinsInt, oWinsInt;
Boolean xWinsBoolean=false, oWinsBoolean=false; //Must be reset to false in game reset
Boolean addCounter1=true, addCounter2=true, addCounter3=true, addCounter4=true;
Boolean addCounter5=true, addCounter6=true, addCounter7=true, addCounter8=true, addCounter9=true;
//
void gameOver( Boolean xWinOnce, Boolean oWinOnce ) {
  println("Game Over"); //Expand this to WIN or CATS
  if ( counter>=9 ) println("CATs");
  //
  if ( xWinOnce==true ) { //Previously xWins() Procedure
    
  }
} //End gameOver
//
/* Notes about next two voids
 - when xWins() & xWinsBoolean was previously false, then xWinsInt increments by one
 - xWinsBoolean=true turns off incrementation
 - must add a Boolean that tracks when someone has one the game
 */
void xWins() {
  println("X Wins", xWinsInt);
  if ( xWinsBoolean==false ) {
    xWinsInt++;
    xWinsBoolean=true;
  }
  gameOver();
} //End boardFilled
//
void oWins() {
  println("O Wins", oWinsInt);
  if ( oWinsBoolean==false ) {
    oWinsInt++;
    oWinsBoolean=true;
  }
  gameOver();
} //End boardFilled
//
/* Note: someoneWins()
 - tracks X & O wins by passing the appropriate Boolean Value
 - appriopriate Boolean must be reset at RESET
 */
void threeIn_Row() {
  //Rows
  if ( tX1==true && tX2==true && tX3==true ) xWins();
  if ( tX4==true && tX5==true && tX6==true ) xWins();
  if ( tX7==true && tX8==true && tX9==true ) xWins();
  if ( tO1==true && tO2==true && tO3==true ) oWins();
  if ( tO4==true && tO5==true && tO6==true ) oWins();
  if ( tO7==true && tO8==true && tO9==true ) oWins();
  //Columns
  if ( tX1==true && tX4==true && tX7==true ) xWins();
  if ( tX2==true && tX5==true && tX8==true ) xWins();
  if ( tX3==true && tX6==true && tX9==true ) xWins();
  if ( tO1==true && tO4==true && tO7==true ) oWins();
  if ( tO2==true && tO5==true && tO8==true ) oWins();
  if ( tO3==true && tO6==true && tO9==true ) oWins();
  //Diagonals
  if ( tX1==true && tX5==true && tX9==true ) xWins();
  if ( tX3==true && tX5==true && tX7==true ) xWins();
  if ( tO1==true && tO5==true && tO9==true ) oWins();
  if ( tO3==true && tO5==true && tO7==true ) oWins();
} //End 3 In a Row
//
// End Sub Program Game Over
