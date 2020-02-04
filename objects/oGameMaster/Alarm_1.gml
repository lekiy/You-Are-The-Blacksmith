/// @description Insert description here
// You can write your code in this editor
if (alarm[0]<=0)alarm[0] += 1
if(ds_list_size(global.counters) > 1){
	instance_create_layer(-50, random(room_height), "Instances", oTaxCollector);
	global.oTaxCollectorQueued=false
} else{
    global.oTaxCollectorQueued=true
}
alarm[1] = (120 +irandom_range(-5, 5))*room_speed;