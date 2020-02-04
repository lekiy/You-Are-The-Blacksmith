/// @description Insert description here
// You can write your code in this editor

#macro NO_DAMAGE 0
#macro RUSTY 1
#macro SHATTERED 2
#macro DULL 3
#macro GOOEY 4


rust = 4;


condition = RUSTY;



swordImg[NO_DAMAGE] = sSword;
swordImg[RUSTY] = sSwordBroken;

sprite_index = swordImg[condition];

