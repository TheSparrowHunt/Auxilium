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
