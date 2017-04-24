if (global.up){
    if (global.left){
      directionState = directionState.UPLEFT;
    }
    else if (global.right){
      directionState = directionState.UPRIGHT;
    }
    else{
      directionState = directionState.UP;
    }
}
else if (global.down){
    if (global.left){
      directionState = directionState.DOWNLEFT;
    }
    else if (global.right){
      directionState = directionState.DOWNRIGHT;
    }
    else{
      directionState = directionState.DOWN;
    }
}
else if (global.left){
      directionState = directionState.LEFT;
}
else if (global.right){
      directionState = directionState.RIGHT;
}

