/* To Do List
 - Display Algorithm to give feedback for Geometry
 - DIVs: symetrical, based on referent measures for height and width (very similar)
 - Note: DIVs Variables create the buttons and spaces for images & text
 */
//
//Global Variables
Boolean OS_On=false;
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
  //Setup Text Introduction, could be images or an animation
  //Note: animations are difficult in void setup (i.e. need a WHILE)
  float titleX = width*1/5;
  float titleY = height*1/10;
  float titleWidth = width*3/5;
  float titleHeight = height*1/10;
  rect(titleX, titleY, titleWidth, titleHeight);
  textDraw(height, purpleInk, CENTER, CENTER, titleFont, title, 0.6, titleX, titleY, titleWidth, titleHeight); //Should go in draw()
  //
} //End setup
//
void draw() {
  if ( OS_On == true ) splashScreen();
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
  if ( OS_On == false ) OS_On = true;
} //End mousePressed
//
//End MAIN Program
