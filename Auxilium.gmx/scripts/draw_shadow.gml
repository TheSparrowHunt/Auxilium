draw_set_colour(global.black);

//draw_set_alpha(0.5*(1-(height/100)));
draw_set_alpha(1);
draw_ellipse(x-(sprWidth/2), y+(sprHeight/3), x+(sprWidth/2), y+(2*(sprHeight/3)), false);
clearDraw();
