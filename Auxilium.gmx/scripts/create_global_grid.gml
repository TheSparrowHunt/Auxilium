//creating the grid
global.grid = mp_grid_create(0,0, room_width/64, room_height/64, 64, 64);

//adding the solid objects
mp_grid_add_instances(global.grid, obj_solidForPathFinding, true);


