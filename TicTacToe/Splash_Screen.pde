void splashScreen() {
  /* Note: any visually-based code running in SetUp() controlled by MouseClick
   - background image
   */
  //
  /* Any other code for Splash Screen goes below
   - Start Button
   - Any other instructions
   - Splash Screen Details
   */
   background(255); //Testing only, not night mode friendly, full BLUE
   divisions(); //Testing Only
   splashScreenText();
   //
} //End Splash Screen
//
void splashScreenText() {
  textDraw(height, purpleInk, CENTER, CENTER, generalFont, restart, 0.6, restartX, restartY, restartWidth, restartHeight);
  textDraw(height, purpleInk, CENTER, CENTER, generalFont, quit, 0.6, quitX, quitY, quitWidth, quitHeight);
  textDraw(height, purpleInk, CENTER, CENTER, generalFont, easy, 0.4, easyX, easyY, easyWidth, easyHeight);
  textDraw(height, purpleInk, CENTER, CENTER, generalFont, medium, 0.6, mediumX, mediumY, mediumWidth, mediumHeight);
  textDraw(height, purpleInk, CENTER, CENTER, generalFont, hard, 0.8, hardX, hardY, hardWidth, hardHeight);
  textDraw(height, purpleInk, CENTER, CENTER, generalFont, twoPlayer, 0.7, twoPlayerX, twoPlayerY, twoPlayerWidth, twoPlayerHeight);
  textDraw(height, purpleInk, CENTER, CENTER, generalFont, random, 1, ssRandomX, ssRandomY, ssRandomWidth, ssRandomHeight);
  textDraw(height, purpleInk, CENTER, CENTER, generalFont, randomAI, 1, ssAiX, ssAiY, ssAiWidth, ssAiHeight);
  //textDraw(height, purpleInk, CENTER, CENTER, generalFont, click, 0.6, titleX, titleY, titleWidth, titleHeight);
  //textDraw(height, purpleInk, CENTER, CENTER, generalFont, click, 0.6, titleX, titleY, titleWidth, titleHeight);
  //textDraw(height, purpleInk, CENTER, CENTER, generalFont, click, 0.6, titleX, titleY, titleWidth, titleHeight);
  //textDraw(height, purpleInk, CENTER, CENTER, generalFont, click, 0.6, titleX, titleY, titleWidth, titleHeight);
  //textDraw(height, purpleInk, CENTER, CENTER, generalFont, click, 0.6, titleX, titleY, titleWidth, titleHeight);
  //textDraw(height, purpleInk, CENTER, CENTER, generalFont, click, 0.6, titleX, titleY, titleWidth, titleHeight);
  //textDraw(height, purpleInk, CENTER, CENTER, generalFont, click, 0.6, titleX, titleY, titleWidth, titleHeight);
  //textDraw(height, purpleInk, CENTER, CENTER, generalFont, click, 0.6, titleX, titleY, titleWidth, titleHeight);
  
} //End Splash Screen Text
//
// End Splash Screen
