/// @description Insert description here
// You can write your code in this editor
/*if(global.waitingCustomers < ds_list_size(global.counters)){
	instance_create_layer(-50, random(room_height), "Instances", oAdventurer);
	
}
alarm[0] = (15 + irandom_range(-5, 5))*room_speed;*/

if (alarm[1]<=0)alarm[1] += 1
if(global.waitingCustomers < ds_list_size(global.counters) && !global.oTaxCollectorQueued){
    instance_create_layer(-50, random(room_height), "Instances", oAdventurer);
} else if (global.waitingCustomers < ds_list_size(global.counters) && global.oTaxCollectorQueued){
    alarm[2] = (6 + irandom_range(-3, 3))*room_speed;
}
alarm[0] = (15 + irandom_range(-5, 5))*room_speed;