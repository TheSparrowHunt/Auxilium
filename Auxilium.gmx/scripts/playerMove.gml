//TEMPORARY, for god's sake remember to change this for collision detection and
//moving the same amount regardless of direction!
if (global.up){
    y-=1;
}
if (global.down){
    y+=1;
}
if (global.left){
    x-=1;
}
if (global.right){
    x+=1;
}
