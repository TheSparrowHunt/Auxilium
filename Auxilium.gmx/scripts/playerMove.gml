//switch&case for the direction state, choosing animations to play based on direction
switch(directionState){
    case directionState.UP:        sprite_index = spr_playerWalkUp;        image_xscale =  1; break;
    case directionState.DOWN:      sprite_index = spr_playerWalkDown;      image_xscale =  1; break;
    case directionState.LEFT:      sprite_index = spr_playerWalkRight;     image_xscale = -1; break;
    case directionState.RIGHT:     sprite_index = spr_playerWalkRight;     image_xscale =  1; break;
    case directionState.UPLEFT:    sprite_index = spr_playerWalkUpRight;   image_xscale = -1; break;
    case directionState.UPRIGHT:   sprite_index = spr_playerWalkUpRight;   image_xscale =  1; break;
    case directionState.DOWNLEFT:  sprite_index = spr_playerWalkDownRight; image_xscale = -1; break;
    case directionState.DOWNRIGHT: sprite_index = spr_playerWalkDownRight; image_xscale =  1; break;
}
if (image_speed != 1/6){
  image_speed = 1/6;
}
//if the player wasn't walking on the last frame
if (previousState != state.MOVE){
  image_index = 0;
}
//if the player wasn't facing the same direction
else if (directionState != previousDirectionState){
  image_index = 0;
}



movex = 0;
movey = 0;
//Moving the same amount regardless of direction!
if (directionState == directionState.UPLEFT){
    movex=-sqrt(0.5*spd);
    movey=-sqrt(0.5*spd);
}

if (directionState == directionState.UPRIGHT){
    movex=+sqrt(0.5*spd);
    movey=-sqrt(0.5*spd);
}

if (directionState == directionState.DOWNLEFT){
    movex=-sqrt(0.5*spd);
    movey=+sqrt(0.5*spd);
}

if (directionState == directionState.DOWNRIGHT){
    movex=+sqrt(0.5*spd);
    movey=+sqrt(0.5*spd);
}
if (directionState == directionState.UP){
    movey=-spd;
}
if (directionState == directionState.DOWN){
     movey=+spd;
}
if (directionState == directionState.LEFT){
     movex=-spd;
}
if (directionState == directionState.RIGHT){
    movex=+spd;
}
collisionCheck();
