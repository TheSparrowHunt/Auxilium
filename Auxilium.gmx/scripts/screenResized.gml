var maximumScaleX = 1;
//iterating through all of these and testing against the default 
for(var i=1; i < 100; i++){
    if (window_get_width() > global.defaultWidth*i){
        maximumScaleX = i;
    }
}

var maximumScaleY = 1;
for(var i=1; i < 100; i++){
    if (window_get_height() > global.defaultHeight*i){
        maximumScaleY = i;
    }
}

//selects the smallest of the two
global.screenMultiplier = min(maximumScaleX, maximumScaleY);

//if it's 0 set to 1 (no visible area protection)
if (global.screenMultiplier < 1){
    global.screenMultiplier = 1;
}

//setting the width and height for these (for multiple aspect ratios)
global.screenWidth = ceil(window_get_width()/global.screenMultiplier);
global.screenHeight = ceil(window_get_height()/global.screenMultiplier);
if (global.screenWidth % 2 !=0){
    global.screenWidth += 1;
}

if (global.screenHeight % 2 != 0){
    global.screenHeight +=1;
}

//update the width and height of the view
view_wview[0] = global.screenWidth;
view_hview[0] = global.screenHeight;

//applying any window dimension changes (hopefully)
//minimized protection
var width = window_get_width();
var height = window_get_height();

if (width == 0){
    width = 1;
}
if (height == 0){
    height = 1;
}


surface_resize(application_surface, width, height);

//corner of port setting 
view_xport[0] = 0;
view_yport[0] = 0;

//to make sure we don't run the code for this when it's not necessary
global.previousWindowSize = width*height;
