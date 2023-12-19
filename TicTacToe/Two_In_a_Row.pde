/* Recognizing two in a row
 - Counter (i.e. COUNTER%2=0|1) triggers recommendation for WIN
 - After the 3rd turn, RECOMMENDATION is for X to WIN
 - Algotith:
 - 1. Compare both X-Space values, choose smaller number, linear search from bottom
 - 2. Identify the second X-Space and verify
 - 3. Idenitfy the 3rd X-Space for ROW, Diagonal-down-left, Column, Diagonal-down-right
 - 4. Verify it is not filled by O
 - Recommendation: X for WIN return a recommendation index
 - Use println to CONSOLE
/* Advanced Notes
 - How does arrays and procedures make this better organized
 - NOTE: these
 - WIN or BLOCK depends on counter index
 */
/* Misc
 - NOTE: all other println() must be turned off
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
//Global Variables
int[] XOrder = new int[10]; //Note: [0] is not used
int[] OOrder = new int[10]; //Note: [0] is not used
int xCounter, oCounter;
//
void initializeTwoInRow() {
  for ( int i=1; i<10; i++ ) {
    XOrder[i] = 0;
    OOrder[i] = 0;
  }
  xCounter = 0;
  oCounter = 0;
} //End Initializing Two in a Row
//
void twoInRowRecommendation() {
  int smallerNumber, largerNumber;
  /* Combos: numbers for the X Order, choose smaller number, match to spaces that are tOff
   - Row=1
   - Diagnonal=2
   - COlumn=3
   - Diagonal=4
   */
  if ( xCounter==2 ) {
    if ( XOrder[1] < XOrder[2] ) {
      smallerNumber = XOrder[1];
      largerNumber = XOrder[2];
    } else {
      smallerNumber = XOrder[2];
      largerNumber = XOrder[1];
    }
    println (smallerNumber-1, tOffX[smallerNumber], largerNumber, tOffX[largerNumber]);
    //tOff || for Row (else if) else not a row
    //FAILS for 1X(2), 2O(8), 3X(3), 
    if (tOffX[smallerNumber]==true && tOffX[smallerNumber+1]==true && tOffX[smallerNumber+2]==false) { //seeing space 4 instead
      println("Row: first two", tOffX[smallerNumber], tOffX[largerNumber]);
    } else if (tOffX[smallerNumber]==true && tOffX[smallerNumber+2]==true && tOffX[smallerNumber+1]==false) {
      println("Row: first and third", tOffX[smallerNumber], tOffX[largerNumber]);
    } else if (tOffX[smallerNumber]==true && tOffX[smallerNumber+1]==true && tOffX[smallerNumber-1]==false) {
      println("Row: last two", tOffX[smallerNumber], tOffX[largerNumber]);
    } else {
      println("Something Else");
    }
  }
} //End Two in a Row Recommendation
//
void writeXOrder(int boardSpaceNumber) {
  //println("here");
  counter++;
  xCounter++;
  XOrder[X_Order(xCounter)] = boardSpaceNumber;
  addCounter[boardSpaceNumber]=false;
} //End Two in a Sequence
//
int X_Order(int counterParameter) {
  int index=0;
  for ( int i=1; i<10; i++ ) {
    if ( XOrder[i]==0 ) index=counterParameter;
  }
  return index;
}
//
void writeOOrder(int boardSpaceNumber) {
  //println("here");
  counter++;
  oCounter++;
  OOrder[O_Order(oCounter)] = boardSpaceNumber;
  addCounter[boardSpaceNumber]=false;
} //End Two in a Sequence
//
int O_Order(int counterParameter) {
  int index=0;
  for ( int i=1; i<10; i++ ) {
    if ( OOrder[i]==0 ) index=counterParameter;
  }
  return index;
}
// End Subprogram Two in a Row
