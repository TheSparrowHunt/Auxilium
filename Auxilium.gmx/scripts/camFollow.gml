//temporary variables to this script for testing whether the player is out of a certain range
var objectx = obj_following.x;
var objecty = obj_following.y;
//the range of movement the player can move in before the screen starts moving with them
//play around with this value!
var rangex = global.screenWidth/4;
var rangey = global.screenHeight/4;
//with the object we're following
/*with (obj_following){
    //get the objects x and y and store them in objectx and objecty
    other.objectx = x;
    other.objecty = y;
}*/
//if/while its out of the range of free movement of x
while(abs(x - objectx) > rangex){
  //move the camera's position until it's no longer out of range
  x -= sign(x - objectx)
}
//same but for y
while(abs(objecty - y) > rangey){
  y -= sign(y - objecty)
}
