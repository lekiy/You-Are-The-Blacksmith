


enum state {
	idling,
	holding,
	working
}
image_speed = 0;


dirH = 0;
dirV = 0;
velX = 0;
velY = 0;

spriteDir = 1;

moveSpeed = 100/room_speed;

hasAction = false;

hasItem = false;
heldItem = noone;
heldYOffset = -10;
highlight = 0;

facingDirH = 0;
facingDirV = 0;

usingStation = false;

currentState = state.idling;