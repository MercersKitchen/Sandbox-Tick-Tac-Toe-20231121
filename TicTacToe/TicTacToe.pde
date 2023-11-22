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
  gameSpaceY = smallDimension * 11/31;
  gameSpaceWidth = appWidth-1;
  gameSpaceHeight = smallDimension*15/31;
  bottomButtonX = gameSpaceX;
  bottomButtonY = smallDimension*26/31;
  bottomButtonWidth = gameSpaceWidth;
  bottomButtonHeight = smallDimension*5/31;
  topButtonX = gameSpaceX;
  topButtonY = smallDimension*0;
  topButtonWith = gameSpaceWidth;
  topButtonHeight = smallDimension*11/31;
  //
  //DIVs
  rect( gameSpaceX, gameSpaceY, gameSpaceWidth, gameSpaceHeight );
  rect( bottomButtonX, bottomButtonY, bottomButtonWidth, bottomButtonHeight ); //reset, quit
  rect( topButtonX, topButtonY, topButtonWith, topButtonHeight ); //
  /*
  rect(); //TTT Space 1
   rect(); //TTT Space 2
   rect(); //TTT Space 3
   rect(); //TTT Space 4
   rect(); //TTT Space 5
   rect(); //TTT Space 6
   rect(); //TTT Space 7
   rect(); //TTT Space 8
   rect(); //TTT Space 9
   rect(); //Restart Button
   rect(); //QUIT Button
   rect(); //Mode Button
   rect(); //Mode Drop Down Menu
   rect(); //Easy, 1 Player
   rect(); //Medium, 1 Player
   rect(); //Hard, 1 Player
   rect(); //2-player Mode
   rect(); //Screen Saver Random
   rect(); //Screen Saver AI v AI
   rect(); //Scoreboard
   rect(); //Scoreboard: X Side, Name
   rect(); //Scoreboard: X Side, Wins Integer
   rect(); //Scoreboard: Y Side, Name
   rect(); //Scoreboard: Y Side, Wins Integer
   rect(); //Instructions Text
   rect(); //Share Button
   rect(); //Share Button: screen shot
   rect(); //Share Button: export & restart with preference
   rect(); //Share Button: personalization menu activation
   rect(); //Personalization Menu
   */
  //
} //End setup
//
void draw() {
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
//End MAIN Program
