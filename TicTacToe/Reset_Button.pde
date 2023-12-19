/* Reset all Variables that should be reset
 - someoneWins should be reset: controls if the button can be pressed or not
 -
 */
void reset() {
  someoneWinsReset=false;
  counter=0;
  //
  readArrays();
  xWinsBoolean=false;
  oWinsBoolean=false;
  //
  noStroke(); //Activate this code when board is drawn with lines
  rect( tttX1, tttY1, tttWidth, tttHeight ); //TTT Space 1
  rect( tttX2, tttY2, tttWidth, tttHeight ); //TTT Space 2
  rect( tttX3, tttY3, tttWidth, tttHeight ); //TTT Space 3
  rect( tttX4, tttY4, tttWidth, tttHeight ); //TTT Space 4
  rect( tttX5, tttY5, tttWidth, tttHeight ); //TTT Space 5
  rect( tttX6, tttY6, tttWidth, tttHeight ); //TTT Space 6
  rect( tttX7, tttY7, tttWidth, tttHeight ); //TTT Space 7
  rect( tttX8, tttY8, tttWidth, tttHeight ); //TTT Space 8
  rect( tttX9, tttY9, tttWidth, tttHeight ); //TTT Space 9
  stroke(1); //reset default, see nostroke() above
  //
  initializeTwoInRow();
  //
  readArrays(); //See Population
} //End Reset
//
// End Subprogram Reset Button
