/* To Do List: See other Subprograms for Expanded List
 - Display Algorithm to give feedback for Geometry
 - DIVs: symetrical, based on referent measures for height and width (very similar)
 - Note: DIVs Variables create the buttons and spaces for images & text
 */
//
//Global Variables
Boolean OS_On=false;
Boolean[] tX = new Boolean[10]; //Note[0] not used
Boolean[] tO = new Boolean[10]; //Note[0] not used
Boolean[] tOffX = new Boolean[10]; //Note[0] not used
Boolean[] tOffO = new Boolean[10]; //Note[0] not used
//
void setup() {
  //Display, based on Google Tic Tac Toe
  size(800, 500);
  appWidth = width; //displayWidth
  appHeight = height; //displayHeight
  smallDimension = ( appWidth<appHeight ) ? appWidth : appHeight;
  displayAlgorithm();
  reset(); //Populated variables related to RESET Button, previously populated in Global Variables
  population();
  //divisions();
  textSetup();
  initializeTwoInRow(); //see Two in a Row
  //
  startUpScreen();
  //
} //End setup
//
void draw() {
  if ( OS_On == true ) splashScreen();
} //End draw
//
void keyPressed() {
  //
  //2-Player Game Mode
  if ( key=='Q' || key=='q' && tOffX[1]==false && counter%2==0 ) tX[1]=true;
  if ( key=='W' || key=='w' && tOffX[2]==false && counter%2==0 ) tX[2]=true;
  if ( key=='E' || key=='e' && tOffX[3]==false && counter%2==0 ) tX[3]=true;
  if ( key=='A' || key=='a' && tOffX[4]==false && counter%2==0 ) tX[4]=true;
  if ( key=='S' || key=='s' && tOffX[5]==false && counter%2==0 ) tX[5]=true;
  if ( key=='D' || key=='d' && tOffX[6]==false && counter%2==0 ) tX[6]=true;
  if ( key=='Z' || key=='z' && tOffX[7]==false && counter%2==0 ) tX[7]=true;
  if ( key=='X' || key=='x' && tOffX[8]==false && counter%2==0 ) tX[8]=true;
  if ( key=='C' || key=='c' && tOffX[9]==false && counter%2==0 ) tX[9]=true;
  //
  if ( key=='7' && tOffO[1]==false && counter%2==1 ) tO[1]=true;
  if ( key=='8' && tOffO[2]==false && counter%2==1 ) tO[2]=true;
  if ( key=='9' && tOffO[3]==false && counter%2==1 ) tO[3]=true;
  if ( key=='4' && tOffO[4]==false && counter%2==1 ) tO[4]=true;
  if ( key=='5' && tOffO[5]==false && counter%2==1 ) tO[5]=true;
  if ( key=='6' && tOffO[6]==false && counter%2==1 ) tO[6]=true;
  if ( key=='1' && tOffO[7]==false && counter%2==1 ) tO[7]=true;
  if ( key=='2' && tOffO[8]==false && counter%2==1 ) tO[8]=true;
  if ( key=='3' && tOffO[9]==false && counter%2==1 ) tO[9]=true;
  //
  if ( key=='R' || key=='r' && someoneWinsReset==true) {
    reset();
  } //End Reset Button
  //
} //End keyPressed
//
void mousePressed() {
  if ( OS_On == false ) OS_On = true;
} //End mousePressed
//
//End MAIN Program
