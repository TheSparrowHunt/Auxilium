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
