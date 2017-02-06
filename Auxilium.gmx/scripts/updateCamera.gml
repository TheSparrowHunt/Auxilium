//update the width and height of the view
view_wview[0] = global.screenWidth;
view_hview[0] = global.screenHeight;

//applying any window dimension changes (hopefully)
surface_resize(application_surface, window_get_width(), window_get_height());

//corner of port setting 
view_xport[0] = 0;
view_yport[0] = 0;

//updates the camera's position using views 
//round is there to make sure it moves on the pixel grid
view_xview[0] = round(x-(global.screenWidth/2));
view_yview[0] = round(y-(global.screenHeight/2));

//set the object following
//this is a horrible hack, fix later
if (instance_number(obj_player) > 0){
    obj_following = asset_get_index("obj_player");
}
