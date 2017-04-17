//if the camera should follow what its going to after it gets there
//for following the object after we reach it
if (argument0 == true){
    camListenRegular();
    //if we're completely done moving
    if (x = finalx && y = finaly){
        camState = camState.FOLLOW;
    }
}
//for not following the object after we reach it
else{
    camListenRegular();
}
