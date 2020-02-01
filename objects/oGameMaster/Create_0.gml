/// @description Insert description here
// You can write your code in this editor


#macro TILESIZE 20
#macro GRIDWIDTH room_width/TILESIZE
#macro GRIDHEIGHT room_height/TILESIZE

global.objectGrid = ds_grid_create(room_width/20, room_height/20);


var item = instance_create_layer(grid_to_pos_x(GRIDWIDTH/2), grid_to_pos_y(GRIDHEIGHT/2), "Instances", oItem);
ds_grid_add(global.objectGrid, GRIDWIDTH/2, GRIDHEIGHT/2, item);