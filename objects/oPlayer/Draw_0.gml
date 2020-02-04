/// @description Insert description here
// You can write your code in this editor

/*if(highlight){
	draw_set_color(c_green);
}else{
	draw_set_color(c_yellow);
}

draw_rectangle(grid_to_pos_x(pos_to_grid_x(x)+facingDirH), grid_to_pos_y(pos_to_grid_y(y)+facingDirV), grid_to_pos_x(pos_to_grid_x(x)+facingDirH)+TILESIZE, grid_to_pos_y(pos_to_grid_y(y)+facingDirV)+TILESIZE, true);
draw_set_color(c_white);*/

draw_sprite_ext(sprite_index, image_index, x, y, spriteDir, 1, 0, c_white, 1);