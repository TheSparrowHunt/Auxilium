//creating the grid
global.grid = mp_grid_create(0,0, room_width/16, room_height/16, 16, 16);

//adding the solid objects
mp_grid_add_instances(global.grid, obj_solid, true);


