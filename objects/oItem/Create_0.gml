/// @description Insert description here
// You can write your code in this editor

#macro NO_DAMAGE 0
#macro RUSTY 1
#macro SHATTERED 2
#macro DULL 3
#macro GOOEY 4


rust = irandom_range(2, 4);
heat = 0;

condition = RUSTY;


item_i = irandom(7)

swordImg[NO_DAMAGE] = item_i;
swordImg[RUSTY] = item_i+8;


sprite_index = sWeapon;
image_index = swordImg[condition];

