/* Writing X&O using KeyBoard
 - This repeats code. How can it be made simpler (Arrays, Procedures, and Loops)?
 - How can the repeating code be turned off when not needed? Hint: IF
 */
//
void keyPressingXO() {
  if ( tX[1]==true ) {
    textDraw(height, purpleInk, CENTER, CENTER, generalFont, x, 0.5, tttX1, tttY1, tttWidth, tttHeight);
    tOffX[1]=true;
    if ( addCounter[1]==true ) writeXOrder(1);
  }
  if ( tX[2]==true ) {
    textDraw(height, purpleInk, CENTER, CENTER, generalFont, x, 0.5, tttX2, tttY2, tttWidth, tttHeight);
    tOffX[2]=true;
    if ( addCounter[2]==true ) writeXOrder(2);
  }
  if ( tX[3]==true ) {
    textDraw(height, purpleInk, CENTER, CENTER, generalFont, x, 0.5, tttX3, tttY3, tttWidth, tttHeight);
    tOffX[3]=true;
    if ( addCounter[3]==true ) writeXOrder(3);
  }
  if ( tX[4]==true ) {
    textDraw(height, purpleInk, CENTER, CENTER, generalFont, x, 0.5, tttX4, tttY4, tttWidth, tttHeight);
    tOffX[4]=true;
    if ( addCounter[4]==true ) writeXOrder(4);
  }
  if ( tX[5]==true ) {
    textDraw(height, purpleInk, CENTER, CENTER, generalFont, x, 0.5, tttX5, tttY5, tttWidth, tttHeight);
    tOffX[5]=true;
    if ( addCounter[5]==true ) writeXOrder(5);
  }
  if ( tX[6]==true ) {
    textDraw(height, purpleInk, CENTER, CENTER, generalFont, x, 0.5, tttX6, tttY6, tttWidth, tttHeight);
    tOffX[6]=true;
    if ( addCounter[6]==true ) writeXOrder(6);
  }
  if ( tX[7]==true ) {
    textDraw(height, purpleInk, CENTER, CENTER, generalFont, x, 0.5, tttX7, tttY7, tttWidth, tttHeight);
    tOffX[7]=true;
    if ( addCounter[7]==true ) writeXOrder(7);
  }
  if ( tX[8]==true ) {
    textDraw(height, purpleInk, CENTER, CENTER, generalFont, x, 0.5, tttX8, tttY8, tttWidth, tttHeight);
    tOffX[8]=true;
    if ( addCounter[8]==true ) writeXOrder(8);
  }
  if ( tX[9]==true ) {
    textDraw(height, purpleInk, CENTER, CENTER, generalFont, x, 0.5, tttX9, tttY9, tttWidth, tttHeight);
    tOffX[9]=true;
    if ( addCounter[9]==true ) writeXOrder(9);
  }
  if ( tO[1]==true ) {
    textDraw(height, purpleInk, CENTER, CENTER, generalFont, o, 0.5, tttX1, tttY1, tttWidth, tttHeight);
    tOffO[1]=true;
    if ( addCounter[1]==true ) writeOOrder(1);
  }
  if ( tO[2]==true ) {
    textDraw(height, purpleInk, CENTER, CENTER, generalFont, o, 0.5, tttX2, tttY2, tttWidth, tttHeight);
    tOffO[2]=true;
    if ( addCounter[2]==true ) writeOOrder(2);
  }
  if ( tO[3]==true ) {
    textDraw(height, purpleInk, CENTER, CENTER, generalFont, o, 0.5, tttX3, tttY3, tttWidth, tttHeight);
    tOffO[3]=true;
    if ( addCounter[3]==true ) writeOOrder(3);
  }
  if ( tO[4]==true ) {
    textDraw(height, purpleInk, CENTER, CENTER, generalFont, o, 0.5, tttX4, tttY4, tttWidth, tttHeight);
    tOffO[4]=true;
    if ( addCounter[4]==true ) writeOOrder(4);
  }
  if ( tO[5]==true ) {
    textDraw(height, purpleInk, CENTER, CENTER, generalFont, o, 0.5, tttX5, tttY5, tttWidth, tttHeight);
    tOffO[5]=true;
    if ( addCounter[5]==true ) writeOOrder(5);
  }
  if ( tO[6]==true ) {
    textDraw(height, purpleInk, CENTER, CENTER, generalFont, o, 0.5, tttX6, tttY6, tttWidth, tttHeight);
    tOffO[6]=true;
    if ( addCounter[6]==true ) writeOOrder(6);
  }
  if ( tO[7]==true ) {
    textDraw(height, purpleInk, CENTER, CENTER, generalFont, o, 0.5, tttX7, tttY7, tttWidth, tttHeight);
    tOffO[7]=true;
    if ( addCounter[7]==true ) writeOOrder(7);
  }
  if ( tO[8]==true ) {
    textDraw(height, purpleInk, CENTER, CENTER, generalFont, o, 0.5, tttX8, tttY8, tttWidth, tttHeight);
    tOffO[8]=true;
    if ( addCounter[8]==true ) writeOOrder(8);
  }
  if ( tO[9]==true ) {
    textDraw(height, purpleInk, CENTER, CENTER, generalFont, o, 0.5, tttX9, tttY9, tttWidth, tttHeight);
    tOffO[9]=true;
    if ( addCounter[9]==true ) writeOOrder(9);
  }
} //End Key Pressed X
//
// End Sub Program Two Player Mode
