if (global.face1Pressed){
  state = state.ATTACK;
  attackCounter = 0;
}
//if alert make the alert
else if (global.face0Pressed){
  state = state.ALERT;
  alertCounter = 0;
}
//if any of those are true, the state is walking
else if (global.up || global.down || global.left || global.right){
  state = state.MOVE;
}
else{
  state = state.STAND;
}
