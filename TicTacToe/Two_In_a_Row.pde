/* Recognizing two in a row
 - How does arrays and procedures make this better organized
 - NOTE: these return a recommendation index
 - WIN or BLOCK depends on counter index
 - Use println to CONSOLE
 - Uses COUNTER%2=0|1
 - NOTE: all other println() must be turned off
 - CAUTION: based on 3 in a row code ... 3x2 recommendations can be made
 - Question: is Boolean Block needed?
 //
 - Possible Algorithm: read what is know, return what is recommended (inbetween turns, after | before)
 - NOTE: modulus changes, O is odd, X is even
 - ERROR Check: is the recommendation occupied
 - Input triggers calculation
 - First is true, second is true, third is false
 - Counter: after 3rd turn, O can BLOCK
 - Counter: after 4th turn, X can BLOCK or WIN
 - Counter: after 5th turn, O can BLOCK or WIN
 - Counter: after 6th turn, X can BLOCK or WIN
 - Counter: after 7th turn, O can BLOCK or WIN
 - Counter: after 8th turn, X can BLOCK or WIN
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
  if ( tX1==true && tX2==true && tX3==false && counter%2==0 ) println("X Wins if space", 3, "occupied"); // i+2
  if ( tX4==true && tX5==true && tX6==false && counter%2==0 ) println("X Wins if space", 6, "occupied");
  if ( tX7==true && tX8==true && tX9==false && counter%2==0 ) println("X Wins if space", 9, "occupied");
  if ( tO1==true && tO2==true && tX3==false && counter%2==1 ) println("O Blocks if space", 3, "occupied");
  if ( tO4==true && tO5==true && tX6==false && counter%2==1 ) println("O Blocks if space", 6, "occupied");
  if ( tO7==true && tO8==true && tX9==false && counter%2==1 ) println("O Blocks if space", 9, "occupied");
  //Rows i-1, first and third, i is first value
  if ( tX1==true && tX2==false && tX3==true && counter%2==0 ) println("X Wins if space", 2, "occupied"); // i+1
  if ( tX4==true && tX5==false && tX6==true && counter%2==0 ) println("X Wins if space", 5, "occupied");
  if ( tX7==true && tX8==false && tX9==true && counter%2==0 ) println("X Wins if space", 8, "occupied");
  if ( tO1==true && tX2==false && tO3==true && counter%2==1 ) println("O Wins if space", 2, "occupied");
  if ( tO4==true && tX5==false && tO6==true && counter%2==1 ) println("O Wins if space", 5, "occupied");
  if ( tO7==true && tX8==false && tO9==true && counter%2==1 ) println("O Wins if space", 8, "occupied");
  //Rows i++, second and third
  if ( tX1==false && tX2==true && tX3==true && counter%2==0 ) println("X Wins if space", 1, "occupied"); //(i+3) - (i+2)
  if ( tX4==false && tX5==true && tX6==true && counter%2==0 ) println("X Wins if space", 4, "occupied");
  if ( tX7==false && tX8==true && tX9==true && counter%2==0 ) println("X Wins if space", 7, "occupied");
  if ( tX1==false && tX2==true && tX3==true && counter%2==1 ) println("O Wins if space", 1, "occupied");
  if ( tX4==false && tX5==true && tX6==true && counter%2==1 ) println("O Wins if space", 4, "occupied");
  if ( tX7==false && tX8==true && tX9==true && counter%2==1 ) println("O Wins if space", 7, "occupied");
  //Columns i+=3, first two, i is first value
  if ( tX1==true && tX4==true && tX7==false && counter%2==0 ) println("X Wins if space", 7, "occupied"); // 3i+2^(3-i)
  if ( tX2==true && tX5==true && tX8==false && counter%2==0 ) println("X Wins if space", 8, "occupied");
  if ( tX3==true && tX6==true && tX9==false && counter%2==0 ) println("X Wins if space", 9, "occupied");
  if ( tO1==true && tO4==true && tO7==false && counter%2==1 ) println("0 Wins if space", 7, "occupied");
  if ( tO2==true && tO5==true && tO8==false && counter%2==1 ) println("0 Wins if space", 8, "occupied");
  if ( tO3==true && tO6==true && tO9==false && counter%2==1 ) println("0 Wins if space", 9, "occupied");
  //Columns i+=3, first and third, i is first value
  if ( tX1==true && tX4==false && tX7==true && counter%2==0 ) println("X Wins if space", 4, "occupied"); // i+3
  if ( tX2==true && tX5==false && tX8==true && counter%2==0 ) println("X Wins if space", 5, "occupied");
  if ( tX3==true && tX6==false && tX9==true && counter%2==0 ) println("X Wins if space", 6, "occupied");
  if ( tO1==true && tO4==false && tO7==true && counter%2==1 ) println("0 Wins if space", 4, "occupied");
  if ( tO2==true && tO5==false && tO8==true && counter%2==1 ) println("0 Wins if space", 5, "occupied");
  if ( tO3==true && tO6==false && tO9==true && counter%2==1 ) println("0 Wins if space", 6, "occupied");
  //Columns i+=3 second and third, i is first value
  if ( tX1==false && tX4==true && tX7==true && counter%2==0 ) println("X Wins if space", 1, "occupied"); // (i+6) - (i+3)
  if ( tX2==false && tX5==true && tX8==true && counter%2==0 ) println("X Wins if space", 2, "occupied");
  if ( tX3==false && tX6==true && tX9==true && counter%2==0 ) println("X Wins if space", 3, "occupied");
  if ( tO1==false && tO4==true && tO7==true && counter%2==1 ) println("0 Wins if space", 1, "occupied");
  if ( tO2==false && tO5==true && tO8==true && counter%2==1 ) println("0 Wins if space", 2, "occupied");
  if ( tO3==false && tO6==true && tO9==true && counter%2==1 ) println("0 Wins if space", 3, "occupied");
  //Diagonals
  if ( tX1==true && tX5==true && tX9==true ) gameOver( true, false, true);
  if ( tX3==true && tX5==true && tX7==true ) gameOver( true, false, true);
  if ( tO1==true && tO5==true && tO9==true ) gameOver( false, true, true);
  if ( tO3==true && tO5==true && tO7==true ) gameOver( false, true, true);
} //End Two in a Sequence
//
// End Subprogram Two in a Row
