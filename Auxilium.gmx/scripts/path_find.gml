//creating a map grid for the whole map to pathfind on
grid = mp_grid_create(0,0, room_width/32, room_height/32, 32, 32);
//new path
path = path_add();
//adds the instances of type obj_solid (and its children) to the grid
mp_grid_add_instances(path, obj_solid, 1);
//generates the path from the grid
mp_grid_path(grid, path, x, y, obj_player.x, obj_player.y, true);
//start the path
//path_start(path, 1, "", true);
