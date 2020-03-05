/// @description Insert description here
// You can write your code in this editor


#macro TILESIZE 20
#macro GRIDWIDTH room_width/TILESIZE
#macro GRIDHEIGHT room_height/TILESIZE

/*global.objectGrid = ds_grid_create(room_width/20, room_height/20);


var item = instance_create_layer(grid_to_pos_x(GRIDWIDTH/2), grid_to_pos_y(GRIDHEIGHT/2), "Instances", oItem);
ds_grid_add(global.objectGrid, GRIDWIDTH/2, GRIDHEIGHT/2, item);*/

global.counters = ds_list_create();
global.customersServed = 0;
global.waitingCustomers = 0;
global.oTaxCollectorQueued=false;
global.easterEgg = false;
global.gold=3;

ini_open("settings.ini");
global.keyUp = ini_read_real("keybinds", "keyUp", ord("W"));
global.keyDown = ini_read_real("keybinds", "keyDown", ord("S"));
global.keyLeft = ini_read_real("keybinds", "keyLeft", ord("A"));
global.keyRight = ini_read_real("keybinds", "keyRight", ord("D"));
global.keyAction1 = ini_read_real("keybinds", "keyAction1", ord("Z"));
global.keyAction2 = ini_read_real("keybinds", "keyAction2", ord("X"));
global.keyInventory = ini_read_real("keybinds", "keyInventory", ord("E"));
global.keyExit = ini_read_real("keybinds", "keyExit", vk_escape);
ini_close();


alarm[0] = 5*room_speed;
alarm[1] = 60*room_speed;
randomize();
audio_play_sound(mscBlacksmith, 3, true);
