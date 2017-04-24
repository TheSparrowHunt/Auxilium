//creating the grid
global.grid = mp_grid_create(0,0, room_width/90, room_height/90, 90, 90);

//adding the solid objects
mp_grid_add_instances(global.grid, obj_solidForPathFinding, true);


