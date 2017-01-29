//if the camera isn't already at it's destination
if (x != finalx){
  //if the camera isn't already lerping between positions
  if(lerpCounterx == 0.0){
    lerpCounterx = 0.1;
    lerpModifierx = startingCameraSpeed;
  }
  //if the camera has overshot its destination
  else if (lerpCounterx > 1.0){
    lerpCounterx = 1.0;
  }
  //if we're lerping, although we should probably call this something else as it's no longer linear!
  else{
    //adjusts the rate of change
    lerpModifierx -= lerpModifierModifierx;
    //protection against it zeroing and staying in place
    if (lerpModifierx < minimumCameraMovement){
      lerpModifierx = minimumCameraMovement;
    }
        
    //adjusts the change
      lerpCounterx += lerpModifierx;
  }
  //make x be a point between where it came from and where it's going
  x = lerp(fromx, finalx, lerpCounterx);
}
else{
  lerpCounterx = 0.0;
  //set this position as the from point for when we move the camera again
  fromx = x;
}

//if the camera isn't already at it's destination
if (y != finaly){
  //if the camera isn't already lerping between positions
  if(lerpCountery == 0.0){
    lerpCountery = 0.1;
    lerpModifiery = startingCameraSpeed;
  }
  //if the camera has overshot its destination
  else if (lerpCountery > 1.0){
    lerpCountery = 1.0;
  }
  //if we're lerping, although we should probably call this something else as it's no longer linear!
  else{
    //adjusts the rate of change
    lerpModifiery -= lerpModifierModifiery;
    //protection against it zeroing and staying in place
    if (lerpModifiery < minimumCameraMovement){
      lerpModifiery = minimumCameraMovement;
    }
        
    //adjusts the change
    lerpCountery += lerpModifiery;
  }
  //make y be a point between where it came from and where it's going
  y = lerp(fromy, finaly, lerpCountery);
}
else{
  lerpCountery = 0.0;
  //set this position as the from point for when we move the camera again
  fromy = y;
}
