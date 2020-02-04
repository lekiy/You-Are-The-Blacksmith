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

if(keyboard_check_pressed(ord("X"))){
	if(heldItem == noone){
		heldItem = instance_place(x+facingDirH*TILESIZE, y+facingDirV*TILESIZE, oItem);
		if(instance_place(x+facingDirH*TILESIZE, y+facingDirV*TILESIZE, oStation) != noone){
			var station = instance_place(x+facingDirH*TILESIZE, y+facingDirV*TILESIZE, oStation);
			if(station.isFull){
				heldItem = station.containedItem;
				hasItem = true;
				station.containedItem = noone;
				station.isFull = false;
			}
		}
		
	}else{
		if(instance_place(x+facingDirH*TILESIZE, y+facingDirV*TILESIZE, oStation) != noone){
			var station = instance_place(x+facingDirH*TILESIZE, y+facingDirV*TILESIZE, oStation);
			if(!station.isFull){
				station.containedItem = heldItem;
				station.isFull = true;
				heldItem = noone;
				hasItem = false;
			}
		}else{
			place_item(heldItem, x+facingDirH*TILESIZE, y+facingDirV*TILESIZE);
			heldItem = noone;
			hasItem = false;
		}
	}
}
if(keyboard_check_pressed(ord("Z"))){
	if(heldItem == noone){
		if(instance_place(x+facingDirH*TILESIZE, y+facingDirV*TILESIZE, oStation) != noone){
			var station = instance_place(x+facingDirH*TILESIZE, y+facingDirV*TILESIZE, oStation);
			if(station.isFull){
				var item = station.containedItem;
				if(item.rust > 0) item.rust--;
			}
		}
	}
}


if(heldItem != noone){
	hasItem = true;
	with(heldItem){
		x = other.x;
		y = other.y+other.heldYOffset;
	}
}

	

/*

var actionTarget = ds_grid_get(global.objectGrid, pos_to_grid_x(x)+facingDirH, pos_to_grid_y(y)+facingDirV);
if(actionTarget.object_index == oItem){
	highlight = true;
}	else hightlight = false;

if(keyboard_check_pressed(ord("X"))){
	if(hasItem){
		if(actionTarget == 0){
			place_item(item, x, y);	
			heldItem = noone;
			hasItem = false;
		}
	}else{
		if(actionTarget.object_index == oItem){
			heldItem = actionTarget;
			ds_grid_set(global.objectGrid, pos_to_grid_x(x)+facingDirH, pos_to_grid_y(y)+facingDirV, 0);
		}
	}
}

if(heldItem != noone){
	hasItem = true;
	with(heldItem){
		x = other.x;
		y = other.y+other.heldYOffset;
	}
}

/*switch(currentState){
	case idling: 
		actionTarget = ds_grid_get(global.objectGrid, pos_to_grid_x(x)+facingDirH, pos_to_grid_y(y)+facingDirV);
		hightlight = actionTarget.object_index == oItem ? true : false;
	break;
	
	case holding: break;
	case working: break;
	
}
*/


/*if(actionTarget != 0){
	highlight = true; 
	switch(actionTarget.object_index){
		case oItem:
			if(heldItem == noone){
				if(keyboard_check_pressed(ord("X"))){
					heldItem = actionTarget;
					ds_grid_set(global.objectGrid, pos_to_grid_x(x)+facingDirH, pos_to_grid_y(y)+facingDirV, 0);
				}
			}
			break;
		case oAnvil: 
			if(heldItem != noone){
				if(keyboard_check_pressed(ord("X"))){
					with(actionTarget){
						containedItem = heldItem;	
					}
					with(heldItem){
						x = grid_to_pos_x(pos_to_grid_x(other.x)+other.facingDirH);
						y = grid_to_pos_y(pos_to_grid_y(other.y)+other.facingDirV);
					}	
					heldItem = noone;
				}
			}
		break;
		
	}
}else if(actionTarget == 0 && heldItem != noone){
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
}*/

