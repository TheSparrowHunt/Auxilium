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
if (image_speed != 1/3){
  image_speed = 1/3;
}
//if the player wasn't standing on thew last frame
if (previousState != state.STAND){
  image_index = 0;
}
//if the player wasn't facing the same direction
else if (directionState != previousDirectionState){
  image_index = 0;
}
