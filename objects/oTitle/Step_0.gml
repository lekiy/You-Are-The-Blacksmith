/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(vk_up)){
	index++;	
}else if(keyboard_check_pressed(vk_down)){
	index--;
}

if(index > 1) index = 0;
if(index < 0) index = 1;

if(keyboard_check_pressed(ord("X"))){
	script_execute(option[index]);
}