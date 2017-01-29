
//ALERT and ATTACK should stop the player from moving and manage themselves
if (state != state.ALERT && state != state.ATTACK){
    //The player can change to any state
    fullStateChange();
}
else{
 //if the player is currently attacking
 if (state == state.ATTACK){
    //if the attack should finish now
    if (attackCounter > attackLength){
        //the player can change to any state
         fullStateChange();
    }
    else{
        //otherwise continue doing the action they are doing
        attackCounter++;
    }
 }
 //if the player is currently making an alert
 else{
    //if the placing of the alert is done now
    if (alertCounter > alertLength){
        //allow the player full state control
        fullStateChange();
    }
    else{
        //otherwise continue the action
        alertCounter++;
    }
 }
}
