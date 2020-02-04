/// @description Insert description here
// You can write your code in this editor
depth = -y-TILESIZE;
if(rust > 0){
	condition = RUSTY;
}

if(rust <= 0){
	condition = NO_DAMAGE;	
}
heat-=100/15/room_speed;
heat = clamp(heat, 0, 100);
//show_debug_message(heat);
if(global.easterEgg == true){
sprite_index = swordImg[condition];
}else{
	image_index = swordImg[condition];	
}