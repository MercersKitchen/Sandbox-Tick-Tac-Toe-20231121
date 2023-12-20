/* Recognizing two in a row
 - Counter (i.e. COUNTER%2=0|1) triggers recommendation for WIN or BLOCk
 - After the 3rd turn, RECOMMENDATION is for X to WIN
 - Algotith:
 - 1. Compare both X-Space values, choose smaller number, linear search from bottom
 - 2. Identify the second X-Space and verify
 - 3. Idenitfy the 3rd X-Space for ROW, Diagonal-down-left, Column, Diagonal-down-right
 - 4. Verify it is not filled by O
 - Recommendation is the index space
 - Use println to CONSOLE
*/
//
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
//Two in a Row Requires a Double Key, returns space to form 3 in a row
//Compare the return to the other token's spaces
//Form a Recommendation
//Repeat
int twoInRow(int firstNumber, int secondNumber) {
  int smallerNumber=0, largerNumber=0;
  int recommendationSpace=0;
  /* Combos: numbers for the X Order, choose smaller number, match to spaces that are tOff
   - Row=1
   - Diagnonal=2
   - COlumn=3
   - Diagonal=4
   */
  if ( xCounter==2 ) {
    if ( firstNumber < firstNumber ) {
      smallerNumber = XOrder[1];
      largerNumber = XOrder[2];
    } else {
      smallerNumber = XOrder[2];
      largerNumber = XOrder[1];
    }
    int key1=largerNumber+smallerNumber, key2=largerNumber-smallerNumber;
    //Row 1: +=1
    if ( key1==3 && key2==1 && OOrder[1]!=3 ) recommendationSpace=3; //1, 2
    if ( key1==4 && key2==2 && OOrder[1]!=2 ) recommendationSpace=2; //1, 3
    if ( key1==5 && key2==1 && OOrder[1]!=1 ) recommendationSpace=1; //2, 3
    //Row 2: +=1
    if ( key1==9 && key2==1 && OOrder[1]!=6 ) recommendationSpace=6; //4, 5
    if ( key1==10 && key2==2 && OOrder[1]!=5 ) recommendationSpace=5; //4, 6
    if ( key1==11 && key2==1 && OOrder[1]!=4 ) recommendationSpace=4; //4, 5
    //Row 3: +=1
    if ( key1==15 && key2==1 && OOrder[1]!=9 ) recommendationSpace=9; //7, 8,
    if ( key1==16 && key2==2 && OOrder[1]!=8 ) recommendationSpace=8; //7, 9,
    if ( key1==17 && key2==1 && OOrder[1]!=7 ) recommendationSpace=7; //8, 9,
    //Column 1: +=3
    if ( key1==5 && key2==3 && OOrder[1]!=7 ) recommendationSpace=7;
    if ( key1==8 && key2==6 && OOrder[1]!=4 ) recommendationSpace=4;
    if ( key1==11 && key2==3 && OOrder[1]!=1 ) recommendationSpace=1;
    //Column 2: +=3
    if ( key1==7 && key2==3 && OOrder[1]!=8 ) recommendationSpace=8;
    if ( key1==10 && key2==6 && OOrder[1]!=5 ) recommendationSpace=5;
    if ( key1==13 && key2==3 && OOrder[1]!=2 ) recommendationSpace=2;
    //Column 3: +=3
    if ( key1==9 && key2==3 && OOrder[1]!=9 ) recommendationSpace=9;
    if ( key1==12 && key2==6 && OOrder[1]!=6 ) recommendationSpace=6;
    if ( key1==15 && key2==3 && OOrder[1]!=3 ) recommendationSpace=3;
    //Diagonal 1: +=2
    if ( key1==8 && key2==2 && OOrder[1]!=7 ) recommendationSpace=7;
    if ( key1==10 && key2==4 && OOrder[1]!=5 ) recommendationSpace=5;
    if ( key1==12 && key2==2 && OOrder[1]!=3 ) recommendationSpace=3;
    //Diagonal 2: +=4
    if ( key1==6 && key2==4 && OOrder[1]!=9 ) recommendationSpace=9;
    if ( key1==10 && key2==8 && OOrder[1]!=5 ) recommendationSpace=5;
    if ( key1==14 && key2==4 && OOrder[1]!=1 ) recommendationSpace=1;
  }
} //End Two in a Row Recommendation
//
void twoInRowRecommendation(int turn, int space) {
  // X Recommendation
  String block = "BLOCK";
  String win = "WIN";
  if ( turn==0 ) ;
} //End Two in a Row Recommendation
//
void twoInRowPrintln () {
} //End Two in a Row Println
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
