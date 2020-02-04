///@discription
///@arg x
///@arg y

var xx = argument[0];
var yy = argument[1];

if(point_distance(x, y, xx, yy) > moveSpeed){
	var dir = point_direction(x, y, xx, yy);
	velX = lengthdir_x(moveSpeed, dir);
	velY = lengthdir_y(moveSpeed, dir);
	
	x+=velX;
	y+=velY;
	return false;
}else{
	x = xx;
	y = yy;
	return true;
}