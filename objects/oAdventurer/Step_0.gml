/// @description Insert description here
// You can write your code in this editor
depth = -y;

if(heldItem != noone){
	with(heldItem){
		x = other.x;
		y = other.y+other.heldYOffset;
	}
	
	if(targetCounter == noone){
		targetCounter = get_available_counter();
		targetPosition = get_drop_off_wait_pos(targetCounter);
	}
	if(x == targetPosition[0] && y == targetPosition[1]){
<<<<<<< HEAD
		show_debug_message("1");
		if(!targetCounter.isFull){
			show_debug_message("2");
			targetCounter.containedItem = heldItem;
			targetCounter.isFull = true;
			heldItem = noone;
			hasItem = false;
		}else{
			show_debug_message("3");
			if(targetCounter.containedItem.condition == NO_DAMAGE){
				heldItem = targetCounter.containedItem;
				hasItem = true;
				targetCounter.containedItem = noone;
				targetCounter.isFull = false;
				targetPosition = [-100, random(room_height)];
			}
=======
		ds_grid_set(global.objectGrid, pos_to_grid_x(targetCounter.x), pos_to_grid_y(targetCounter.y), heldItem);
		with(heldItem){
			x = grid_to_pos_x(pos_to_grid_x(other.targetCounter.x))+TILESIZE/2;
			y = grid_to_pos_y(pos_to_grid_y(other.targetCounter.y))+TILESIZE/2;
>>>>>>> 6a5cefc9916deb288045707e8539916deb935c22
		}
	}else{
		show_debug_message("4");
		if(x != targetPosition[0]){
			velX = sign(targetPosition[0]-x)*moveSpeed;
			x+=	velX;
		}
		if(y != targetPosition[1]){
			velY = sign(targetPosition[1]-y)*moveSpeed;
			y+=	velY;
		}
	}
	
}

