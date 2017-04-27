tempSprWidth = sprite_get_width(sprite_index);
tempSprHeight = sprite_get_height(sprite_index);

with (myShadow){
    x = other.x;
    y = other.y;
    sprWidth = other.tempSprWidth;
    sprHeight = other.tempSprHeight;
    height = other.height;
    sprWidth = (sprWidth)+(sprWidth*(height/100));
    sprHeight = (sprHeight)+(sprHeight*(height/100));
}
