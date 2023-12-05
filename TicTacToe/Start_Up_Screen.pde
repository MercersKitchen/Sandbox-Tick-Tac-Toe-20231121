void startUpScreen() {
  //Setup Text Introduction, could be images or an animation
  //Note: animations are difficult in void setup (i.e. need a WHILE)
  float titleX = width*1/5;
  float titleY = height*1/10;
  float titleWidth = width*3/5;
  float titleHeight = height*1/10;
  //rect(titleX, titleY, titleWidth, titleHeight); //DIV only for Initial Screen
  textDraw(height, purpleInk, CENTER, CENTER, generalFont, click, 0.6, titleX, titleY, titleWidth, titleHeight); //Should go in draw()
  //
} //End Start Up Screen
