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
   keyPressingXO(); //See XO KeyPressing
   threeIn_Row(); //See Game Over
   //
} //End Splash Screen
//
void splashScreenText() {
  textDraw(height, purpleInk, CENTER, CENTER, generalFont, restart, 0.6, restartX, restartY, restartWidth, restartHeight);  
} //End Splash Screen Text
//
// End Splash Screen
