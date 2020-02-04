///@description place_item
///@arg item
///@arg xx
///@arg yy

var item = argument0;
var xx = argument1;
var yy = argument2;

//ds_grid_set(global.objectGrid, pos_to_grid_x(xx), pos_to_grid_y(yy), item);
with(item){
	x = grid_to_pos_x(pos_to_grid_x(xx))+TILESIZE/2;
	y = grid_to_pos_y(pos_to_grid_y(yy))+TILESIZE/2;
}