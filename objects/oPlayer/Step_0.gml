/// @description Insert description here
// You can write your code in this editor

dirH = keyboard_check(vk_right)-keyboard_check(vk_left);
dirV = keyboard_check(vk_down)-keyboard_check(vk_up);

velX = dirH*moveSpeed;
velY = dirV*moveSpeed;

if(velX != 0) spriteDir = sign(velX);

if(velX != 0){	
	facingDirH = sign(velX);
	facingDirV = 0;
}else if(velY != 0){
	facingDirH = 0;
	facingDirV = sign(velY);
	
}
handle_wall_collision();

var actionTarget = ds_grid_get(global.objectGrid, pos_to_grid_x(x)+facingDirH, pos_to_grid_y(y)+facingDirV);
if(actionTarget != 0){
	highlight = true; 
	if(actionTarget.object_index == oItem){
		
		if(!hasItem){
			if(keyboard_check_pressed(ord("X"))){
				show_debug_message("true");
				heldItem = actionTarget;
				ds_grid_set(global.objectGrid, pos_to_grid_x(x)+facingDirH, pos_to_grid_y(y)+facingDirV, 0);
			}
		}
	}
}else if(actionTarget == 0 && hasItem){
	if(keyboard_check_pressed(ord("X"))){	
		ds_grid_set(global.objectGrid, pos_to_grid_x(x)+facingDirH, pos_to_grid_y(y)+facingDirV, heldItem);
		with(heldItem){
			x = grid_to_pos_x(pos_to_grid_x(other.x)+other.facingDirH);
			y = grid_to_pos_y(pos_to_grid_y(other.y)+other.facingDirV);
		}
		heldItem = noone;
		hasItem = false;
	}
}else{
	highlight = false;	
}

if(heldItem != noone){
	hasItem = true;
	with(heldItem){
		x = other.x;
		y = other.y+other.heldYOffset;
	}
}