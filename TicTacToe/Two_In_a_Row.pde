/* Recognizing two in a row
 - Recommend WIN or BLOCK
 - Use println to CONSOLE
 - Uses COUNTER%2=0|1
 - NOTE: all other println() must be turned off
 - CAUTION: based on 3 in a row code ... 3x2 recommendations can be made
 - Question: is Boolean Block needed?
 */
/* Three in a row code
 //Rows
 if ( tX1==true && tX2==true && tX3==true )
 if ( tX4==true && tX5==true && tX6==true )
 if ( tX7==true && tX8==true && tX9==true )
 if ( tO1==true && tO2==true && tO3==true )
 if ( tO4==true && tO5==true && tO6==true )
 if ( tO7==true && tO8==true && tO9==true )
 //Columns
 if ( tX1==true && tX4==true && tX7==true )
 if ( tX2==true && tX5==true && tX8==true )
 if ( tX3==true && tX6==true && tX9==true )
 if ( tO1==true && tO4==true && tO7==true )
 if ( tO2==true && tO5==true && tO8==true )
 if ( tO3==true && tO6==true && tO9==true )
 //Diagonals
 if ( tX1==true && tX5==true && tX9==true )
 if ( tX3==true && tX5==true && tX7==true )
 if ( tO1==true && tO5==true && tO9==true )
 if ( tO3==true && tO5==true && tO7==true )
 */
void twoSequence() {
  //Rows i+1, first two, i is first value
  if ( tX1==true && tX2==true && tX3==false && counter%2==0 ) println("X Wins if space", 3, "occupied"); // ( (i+1)-i ) + (i+1)
  if ( tX4==true && tX5==true && tX6==false && counter%2==0 ) println("X Wins if space", 6, "occupied");
  if ( tX7==true && tX8==true && tX9==false && counter%2==0 ) println("X Wins if space", 9, "occupied");
  if ( tO1==true && tO2==true && tX3==false && counter%2==1 ) println("O Blocks if space", 3, "occupied");
  if ( tO4==true && tO5==true && tX6==false && counter%2==1 ) println("O Blocks if space", 6, "occupied");
  if ( tO7==true && tO8==true && tX9==false && counter%2==1 ) println("O Blocks if space", 9, "occupied");
  //Rows i-1, first and third, i is first value
  if ( tX1==true && tX2==false && tX3==true && counter%2==0 ) twoSequenceRecommendations(true, false, 1); // (i+2)-1
  if ( tX4==true && tX5==false && tX6==true && counter%2==0 ) twoSequenceRecommendations(true, false, 1);
  if ( tX7==true && tX8==false && tX9==true && counter%2==0 ) twoSequenceRecommendations(true, false, 1);
  if ( tO1==true && tX2==false && tO3==true && counter%2==1 ) twoSequenceRecommendations(false, true, 1);
  if ( tO4==true && tX5==false && tO6==true && counter%2==1 ) twoSequenceRecommendations(false, true, 1);
  if ( tO7==true && tX8==false && tO9==true && counter%2==1 ) twoSequenceRecommendations(false, true, 1);
  //Rows i++, second and third
  if ( tX1==false && tX3==true && counter%2==0 ) twoSequenceRecommendations(true, false, -1);
  if ( tX4==true && tX6==true && counter%2==0 ) twoSequenceRecommendations(true, false, -1);
  if ( tX7==true && tX9==true && counter%2==0 ) twoSequenceRecommendations(true, false, -1);
  if ( tO1==true && tO3==true && counter%2==1 ) twoSequenceRecommendations(false, true, -1);
  if ( tO4==true && tO6==true && counter%2==1 ) twoSequenceRecommendations(false, true, -1);
  if ( tO7==true && tO9==true && counter%2==1 ) twoSequenceRecommendations(false, true, -1);
  //Columns: NOT DONE YET
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
} //End Two in a Sequence
//
// End Subprogram Two in a Row
