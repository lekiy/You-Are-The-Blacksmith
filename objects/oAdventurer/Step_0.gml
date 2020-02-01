/// @description Insert description here
// You can write your code in this editor
depth = -y;

if(heldItem != noone){
	with(heldItem){
		x = other.x;
		y = other.y+other.heldYOffset;
	}
	
	if(!serviced){
		targetCounter = get_available_counter();
		targetPosition = get_drop_off_wait_pos(targetCounter);
	}
	if(x == targetPosition[0] && y == targetPosition[1]){
		ds_grid_set(global.objectGrid, pos_to_grid_x(targetCounter.x), pos_to_grid_y(targetCounter.y), heldItem);
		with(heldItem){
			x = grid_to_pos_x(pos_to_grid_x(other.targetCounter.x))+TILESIZE/2;
			y = grid_to_pos_y(pos_to_grid_y(other.targetCounter.y))+TILESIZE/2;
		}
		heldItem = noone;
	}else{
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

