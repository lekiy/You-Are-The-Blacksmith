/// @description Insert description here
// You can write your code in this editor
if(heldItem != noone){
	with(heldItem){
		x = other.x;
		y = other.y+heldYOffset;
	}
	
	if(!serviced){
		targetCounter = get_available_counter();
		targetPosition = get_drop_off_wait_pos(targetCounter);
	}
	if(x == targetPosition[0] && y == targetPosition[1]){
		
	}else{
		if(x != targetPosition[0]){
			velX = sign(y-targetPosition[0])*moveSpeed;
			x+=	velX;
		}
		if(y != targetPosition[1]){
			velX = sign(y-targetPosition[1])*moveSpeed;
			y+=	velX;
		}
	}
	
}

