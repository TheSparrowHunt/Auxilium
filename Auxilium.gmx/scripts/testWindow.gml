var scaleTotal = 0;
var maximumScaleX = 0;
for(var i=1; i < 100; i++){
    if (window_get_width() > global.screenWidth*i){
        maximumScaleX++;
    }
}

var maximumScaleY = 0;
for(var i=1; i < 100; i++){
    if (window_get_height() > global.screenHeight*i){
        maximumScaleY++;
    }
}

global.screenMultiplier = min(maximumScaleX, maximumScaleY);
if (global.screenMultiplier < 1){
    global.screenMultiplier = 1;
}
