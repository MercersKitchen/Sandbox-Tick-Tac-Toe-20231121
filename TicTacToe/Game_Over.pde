/* Does this doe run easier with Arrays, Procedures, and Loops?
 */
//
int counter=0;
Boolean addCounter1=true, addCounter2=true, addCounter3=true, addCounter4=true;
Boolean addCounter5=true, addCounter6=true, addCounter7=true, addCounter8=true, addCounter9=true;
//
void gameOver() {
  println("Game Over"); //Expand this to WIN or CATS
} //End gameOver
//
void boardFilled() {
  if ( counter>=9 ) gameOver(); //Expand this to WIN or CATS
} //End boardFilled
//
void threeIn_Row() {
  //Rows
  if ( tX1==true && tX2==true && tX3==true ) gameOver();
  if ( tX4==true && tX5==true && tX6==true ) gameOver();
  if ( tX7==true && tX8==true && tX9==true ) gameOver();
  if ( tO1==true && tO2==true && tO3==true ) gameOver();
  if ( tO4==true && tO5==true && tO6==true ) gameOver();
  if ( tO7==true && tO8==true && tO9==true ) gameOver();
  //Columns
  if ( tX1==true && tX4==true && tX7==true ) gameOver();
  if ( tX2==true && tX5==true && tX8==true ) gameOver();
  if ( tX3==true && tX6==true && tX9==true ) gameOver();
  if ( tO1==true && tO4==true && tO7==true ) gameOver();
  if ( tO2==true && tO5==true && tO8==true ) gameOver();
  if ( tO3==true && tO6==true && tO9==true ) gameOver();
  //Diagonals
  if ( tX1==true && tX5==true && tX9==true ) gameOver();
  if ( tX3==true && tX5==true && tX7==true ) gameOver();
  if ( tO1==true && tO5==true && tO9==true ) gameOver();
  if ( tO3==true && tO5==true && tO7==true ) gameOver();
} //End 3 In a Row
//
// End Sub Program Game Over
