/*
  USE THIS AS A REFERENCE WHEN IMPLEMENTING ANY CONTROLS!
  NOTE: THIS OBJECT IS "permanent", MEANING IT EXISTS FOREVER UNTIL YOU DELETE IT OR END THE GAME
*/

//initialising the control variables
//DIRECT POLLING
global.up = false;
global.down = false;
global.left = false;
global.right = false;

//action buttons
//should be A on 360 pads, X on PS pads
global.face0 = false;

//should be X on 360 pads, square on PS pads
global.face1 = false;

//should be B on 360 pads, circle on PS pads
global.face2 = false;

//should be Y on 360 pads, triangle on PS pads
global.face3 = false;

//should be start
global.start = false

//haven't bothered implementing triggers shoulder buttons as I don't think we'll need them

//PRESSED POLLING
//initialising the 
global.upPressed = false;
global.downPressed = false;
global.leftPressed = false;
global.rightPressed = false;

//action buttons
//should be A on 360 pads, X on PS pads
global.face0Pressed = false;

//should be X on 360 pads, square on PS pads
global.face1Pressed = false;

//should be B on 360 pads, circle on PS pads
global.face2Pressed = false;

//should be Y on 360 pads, triangle on PS pads
global.face3Pressed = false;

//should be start
global.startPressed = false
