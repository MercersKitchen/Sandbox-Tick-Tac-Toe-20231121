/* Reset all Variables that should be reset
 - someoneWins should be reset: controls if the button can be pressed or not
 -
 */
void reset() {
  someoneWinsReset=false;
  counter=0;
  //
  tX1=false;
  tX2=false;
  tX3=false;
  tX4=false;
  tX5=false;
  tX6=false;
  tX7=false;
  tX8=false;
  tX9=false;
  tO1=false;
  tO2=false;
  tO3=false;
  tO4=false;
  tO5=false;
  tO6=false;
  tO7=false;
  tO8=false;
  tO9=false;
  tOff1=false;
  tOff2=false;
  tOff3=false;
  tOff4=false;
  tOff5=false;
  tOff6=false;
  tOff7=false;
  tOff8=false;
  tOff9=false;
  //
  xWinsBoolean=false;
  oWinsBoolean=false;
  addCounter1=true;
  addCounter2=true;
  addCounter3=true;
  addCounter4=true;
  addCounter5=true;
  addCounter6=true;
  addCounter7=true;
  addCounter8=true;
  addCounter9=true;
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
} //End Reset
//
// End Subprogram Reset Button
