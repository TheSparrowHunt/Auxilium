//switch&case for the direction state, choosing animations to play based on direction
switch(directionState){
    case directionState.UP:        sprite_index = spr_playerStandUp;        image_xscale =  1; break;
    case directionState.DOWN:      sprite_index = spr_playerStandDown;      image_xscale =  1; break;
    case directionState.LEFT:      sprite_index = spr_playerStandRight;     image_xscale = -1; break;
    case directionState.RIGHT:     sprite_index = spr_playerStandRight;     image_xscale =  1; break;
    case directionState.UPLEFT:    sprite_index = spr_playerStandUpRight;   image_xscale = -1; break;
    case directionState.UPRIGHT:   sprite_index = spr_playerStandUpRight;   image_xscale =  1; break;
    case directionState.DOWNLEFT:  sprite_index = spr_playerStandDownRight; image_xscale = -1; break;
    case directionState.DOWNRIGHT: sprite_index = spr_playerStandDownRight; image_xscale =  1; break;
}

//if the player wasn't standing on thew last frame
if (previousState != state.STAND){
  image_index = 0;
}
//if the player wasn't facing the same direction
else if (directionState != previousDirectionState){
  image_index = 0;
}
//if the player is facing the same direction
else{
  //increase the index of the frame
  image_index++;
  //if the image index is now over the number of frames in the animation
  if (image_index > image_number-1){
    //set it to zero
    image_index = 0;
  }
}
