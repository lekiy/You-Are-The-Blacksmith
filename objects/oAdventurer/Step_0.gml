/// @description Insert description here
// You can write your code in this editor
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
		with(heldItem){
			x = other.targetCounter.x;
			y = other.targetCounter.y;
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

