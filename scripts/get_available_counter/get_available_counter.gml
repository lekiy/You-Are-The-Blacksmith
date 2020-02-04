///@get_available_counter

var counter = noone;

for(var i = 0; i < ds_list_size(global.counters); i++){
	if(global.counters[| i].isAvailable){
		counter =  global.counters[| i];	
	}
}

return counter;