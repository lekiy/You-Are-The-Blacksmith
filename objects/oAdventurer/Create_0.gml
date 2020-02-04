/// @description Insert description here
// You can write your code in this editor

heldItem = instance_create_layer(x, y, "Instances", oItem);
hasItem = true;
heldYOffset = -10;
targetCounter = noone;
moveTarget = [0, 0];

serviced = false;
moveSpeed = 60/room_speed;

grumbles[0] = sndGrumble1;
grumbles[1] = sndGrumble2;
grumbles[2] = sndGrumble3;

sprite[0] = sAdventurer1;
sprite[1] = sAdventurer3;
sprite[2] = sAdventurer4;

payVal = heldItem.rust*2;

sprite_index = sprite[irandom(2)];

image_speed = 0;