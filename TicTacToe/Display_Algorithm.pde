//Global Variables
int appWidth, appHeight, smallDimension;
//
void displayAlgorithm() {
  smallDimension = ( appWidth >= appHeight ) ? appHeight : appWidth; //Ternary Operator
  //Purpose: CANVAS fits in monitor & dimension size is known
  //Output #1: Console confirms CANVAS will fit in the monitor
  //Output #4: Console confirms dimension sizes (smaller and larger)
  if ( width <= displayWidth && height <= displayHeight ) {
    /*If useing fullScreen, use
     - displayWidth & displayHeight
     - instead of width & height
     */
    println("CANVAS fits in DISPLAY GEOMETRY");
    println("Display Dimension:", "width:"+width, "height:"+height, "Display Width:"+displayWidth, "Display Height:"+displayHeight );
  } else {
    println("CANVAS is too BIG, make it smaller");
    exit();
  }
  //Output #2: Console confirms display orientation
  //Output #3: if error with any of above, program will exit or be broken
  //           Hint: "Bru, turn your phun."
  if ( width >= height ) { //landscape-square
    println("DISPLAY is Landscape or Square");
  } else { //portrait
    println("DISPLAY is Portrait");
    println("Bru, turn your phun.");
    exit();
    //Optional: "Are you sure" Exit Screen, YES or NO
  }
} //End Display Algorithm
