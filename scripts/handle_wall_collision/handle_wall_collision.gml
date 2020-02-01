///@description handle_wall_collision

if(place_meeting(x+velX, y, oWall)){
	while(!place_meeting(x+sign(velX), y, oWall)){
		x+=sign(velX);	
	}
	velX = 0;
}

x+=velX;

if(place_meeting(x, y+velY, oWall)){
	while(!place_meeting(x, y+sign(velY), oWall)){
		y+=sign(velY);	
	}
	velY = 0;
}
y+=velY;