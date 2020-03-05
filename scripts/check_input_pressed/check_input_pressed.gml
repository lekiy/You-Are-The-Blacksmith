///@description check for desired input command
///@argument inputName


switch(argument0){
	case input.UP: return keyboard_check_pressed(global.keyUp);
	case input.DOWN: return keyboard_check_pressed(global.keyDown);
	case input.LEFT: return keyboard_check_pressed(global.keyLeft);
	case input.RIGHT: return keyboard_check_pressed(global.keyRight);
	case input.ACTION1: return keyboard_check_pressed(global.keyAction1) || mouse_check_button_pressed(mb_left);
	case input.ACTION2: return keyboard_check_pressed(global.keyAction2) || mouse_check_button_pressed(mb_right);
	case input.INVENTORY: return keyboard_check_pressed(global.keyInventory);
	case input.EXIT: return keyboard_check_pressed(global.keyExit);
}

show_debug_message("Input option "+argument0+" does not exist") return false;