/* To Do List
*/
//
//Global Variables
int appWidth, appHeight, smallDimension;
float gameSpaceX, gameSpaceY, gameSpaceWidth, gameSpaceHeight;
float bottomButtonX, bottomButtonY, bottomButtonWidth, bottomButtonHeight;
float topButtonX, topButtonY, topButtonWith, topButtonHeight;
//
void setup() {
  //Display, based on Google Tic Tac Toe
  size(600, 400);
  appWidth = width; //displayWidth
  appHeight = height; //displayHeight
  smallDimension = ( appWidth<appHeight ) ? appWidth : appHeight;
  //
  //Population
  gameSpaceX = appWidth*0;
  gameSpaceY = smallDimension;
  gameSpaceWidth = appWidth;
  gameSpaceHeight = smallDimension;
  bottomButtonX = gameSpaceX;
  bottomButtonY = smallDimension;
  bottomButtonWidth = appWidth;
  bottomButtonHeight = smallDimension;
  topButtonX = gameSpaceX;
  topButtonY = smallDimension;
  topButtonWith = appWidth;
  topButtonHeight = smallDimension;
  //
  //DIVs
  rect( gameSpaceX, gameSpaceY, gameSpaceWidth, gameSpaceHeight );
  rect( bottomButtonX, bottomButtonY, bottomButtonWidth, bottomButtonHeight ); //reset, quit
  rect( topButtonX, topButtonY, topButtonWith, topButtonHeight ); // 
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
