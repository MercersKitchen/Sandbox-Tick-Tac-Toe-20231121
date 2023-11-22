/* To Do List
*/
//
//Global Variables
int appWidth, appHeight, smallDimension;
//
void setup() {
  //Display, based on Google Tic Tac Toe
  size(600, 400);
  appWidth = width; //displayWidth
  appHeight = height; //displayHeight
  smallDimension = ( appWidth<appHeight ) ? appWidth : appHeight;
  //
  //Population
  //
  //DIVs
  rect(); //gameSpace
  rect(); //Buttons (bottom): reset, quit
  rect(); //Buttons (top): 
  //
} //End setup
//
void draw() {} //End draw
//
void keyPressed() {} //End keyPressed
//
void mousePressed() {} //End mousePressed
//
//End MAIN Program
