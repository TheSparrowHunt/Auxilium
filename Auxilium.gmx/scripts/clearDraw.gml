//This is a script that sets drawing modes etc. back to their defaults, 
//every time you use a new draw feature that doesn't get reset here,
//add the default, otherwise you can end up with inconsisitent drawing
//call this always at the end of your draw event!
draw_set_font(global.font0);
draw_set_halign(fa_left);
draw_set_color(global.white);
