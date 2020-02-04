/// @description Insert description here
// You can write your code in this editor
if(!stopped){
	step++;
}else{
	if(!finish){
		alarm[0] = 0.3*room_speed;	
		finish = true;
	}
}

sliderX = (sin(step*0.15)*width/2)+width/2;
