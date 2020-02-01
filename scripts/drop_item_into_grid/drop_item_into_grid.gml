///@discription
///@arg heldItem
///@arg targetX
///@arg targetY

var heldItem = argument0;
var targetX = argument1;
var targetY = argument2;

ds_grid_set(global.objectGrid, pos_to_grid_x(targetX), pos_to_grid_y(targetY), heldItem);
with(heldItem){
	x = grid_to_pos_x(pos_to_grid_x(targetX))+TILESIZE/2;
	y = grid_to_pos_y(pos_to_grid_y(targetY))+TILESIZE/2;
}