if (bounceState){
    deltaheight += deltadeltaheight;
    height -= deltaheight;
    
    if (height <= 0){
        deltaheight = -deltaheight;
        deltaheight *= 0.9;
        //if absolute val of deltaheight is less than
        if (abs(deltaheight) <= 1.0){
            height = 0;
            //stop bouncing, just roll
            bounceState = false;
        }
    }
    
}

//if not on the ground yet
if (height > 0) {
    if (mask_index != spr_0Size){
        mask_index = spr_0Size;
    }
}
else if (height <= 0){
    //basically sets collisions on
    if (mask_index != sprite_index){
        mask_index = sprite_index;
    }
    
    if (place_meeting(x, y, obj_player)){
        room_restart();
    }
}
