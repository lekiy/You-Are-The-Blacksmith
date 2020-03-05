///@description check for desired input command
///@argument inputName

enum input {
	UP,
	DOWN,
	LEFT,
	RIGHT,
	ACTION1,
	ACTION2,
	INVENTORY,
	EXIT
}

switch(argument0){
	case input.UP: return keyboard_check(global.keyUp);
	case input.DOWN: return keyboard_check(global.keyDown);
	case input.LEFT: return keyboard_check(global.keyLeft);
	case input.RIGHT: return keyboard_check(global.keyRight);
	case input.ACTION1: return keyboard_check(global.keyAction1) || mouse_check_button(mb_left);
	case input.ACTION2: return keyboard_check(global.keyAction2) || mouse_check_button(mb_right);
	case input.INVENTORY: return keyboard_check(global.keyInventory);
	case input.EXIT: return keyboard_check(global.keyExit);
}

show_debug_message("Input option "+argument0+" does not exist") return false;