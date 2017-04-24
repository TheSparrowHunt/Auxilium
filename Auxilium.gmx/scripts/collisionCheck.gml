//THIS IS NOT THE MOST ROBUST COLLISION CHECKING
//DO NOT TRY TO MOVE AN OBJECT FASTER THAN THE SMALLEST SOLID OBJECT
//AS IT WILL IGNORE IT AND MOVE TO THE OTHER SIDE!

//for loop iterating movements on width
for (var i=0; i < abs(movex); i+=0.1){
    if (place_meeting(x+(0.1*sign(movex)), y, obj_solid)){
        break;
    }
    x+=0.1*sign(movex);
}

for (var i=0; i < abs(movey); i+=0.1){
    if (place_meeting(x, y+(0.1*sign(movey)), obj_solid)){
        break;
    }
    y+=0.1*sign(movey);
}
