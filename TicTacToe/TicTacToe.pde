/* To Do List: See other Subprograms for Expanded List
 - Display Algorithm to give feedback for Geometry
 - DIVs: symetrical, based on referent measures for height and width (very similar)
 - Note: DIVs Variables create the buttons and spaces for images & text
 */
//
//Global Variables
Boolean OS_On=false;
Boolean tX1=false, tX2=false, tX3=false, tX4=false, tX5=false, tX6=false, tX7=false, tX8=false, tX9=false;
Boolean tO1=false, tO2=false, tO3=false, tO4=false, tO5=false, tO6=false, tO7=false, tO8=false, tO9=false;
Boolean tOff1=false, tOff2=false, tOff3=false, tOff4=false, tOff5=false, tOff6=false, tOff7=false, tOff8=false, tOff9=false;
//
void setup() {
  //Display, based on Google Tic Tac Toe
  size(800, 500);
  appWidth = width; //displayWidth
  appHeight = height; //displayHeight
  smallDimension = ( appWidth<appHeight ) ? appWidth : appHeight;
  displayAlgorithm();
  population();
  //divisions();
  textSetup();
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
  if ( key=='Q' || key=='q' && tOff1==false && counter%2==0 ) tX1=true;
  if ( key=='W' || key=='w' && tOff2==false && counter%2==0 ) tX2=true;
  if ( key=='E' || key=='e' && tOff3==false && counter%2==0 ) tX3=true;
  if ( key=='A' || key=='a' && tOff4==false && counter%2==0 ) tX4=true;
  if ( key=='S' || key=='s' && tOff5==false && counter%2==0 ) tX5=true;
  if ( key=='D' || key=='d' && tOff6==false && counter%2==0 ) tX6=true;
  if ( key=='Z' || key=='z' && tOff7==false && counter%2==0 ) tX7=true;
  if ( key=='X' || key=='x' && tOff8==false && counter%2==0 ) tX8=true;
  if ( key=='C' || key=='c' && tOff9==false && counter%2==0 ) tX9=true;
  //
  if ( key=='7' && tOff1==false && counter%2==1 ) tO1=true;
  if ( key=='8' && tOff2==false && counter%2==1 ) tO2=true;
  if ( key=='9' && tOff3==false && counter%2==1 ) tO3=true;
  if ( key=='4' && tOff4==false && counter%2==1 ) tO4=true;
  if ( key=='5' && tOff5==false && counter%2==1 ) tO5=true;
  if ( key=='6' && tOff6==false && counter%2==1 ) tO6=true;
  if ( key=='1' && tOff7==false && counter%2==1 ) tO7=true;
  if ( key=='2' && tOff8==false && counter%2==1 ) tO8=true;
  if ( key=='3' && tOff9==false && counter%2==1 ) tO9=true;
} //End keyPressed
//
void mousePressed() {
  if ( OS_On == false ) OS_On = true;
} //End mousePressed
//
//End MAIN Program
