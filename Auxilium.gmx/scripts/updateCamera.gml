//updates the camera's position using views 
//round is there to make sure it moves on the pixel grid
view_xview[0] = round(x-(global.screenWidth/2));
view_yview[0] = round(y-(global.screenHeight/2));


//set the object following
//this is a horrible hack, fix later
if (instance_number(obj_player) > 0){
    obj_following = asset_get_index("obj_player");
}
