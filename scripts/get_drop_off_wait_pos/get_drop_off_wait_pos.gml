///@Discription get_drop_off_wait_pos
///arg counter


var counter = argument0;

var targetX = grid_to_pos_x(pos_to_grid_x(counter.x))-TILESIZE/2;
var targetY = grid_to_pos_y(pos_to_grid_y(counter.y))-TILESIZE/2;

return [targetX, targetY];


