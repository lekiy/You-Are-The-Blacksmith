/// @description Insert description here
// You can write your code in this editor
if(global.waitingCustomers < ds_list_size(global.counters)){
    instance_create_layer(-50, random(room_height), "Instances", oTaxCollector);
} else{
    global.oTaxCollectorQueued=false
}