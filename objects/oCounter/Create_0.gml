event_inherited();

isAvailable = true;
ds_list_add(global.counters, self);

image_speed = 0;
image_index = irandom_range(1, 3);

if(instance_place(x, y-1, oCounter) && !instance_place(x, y+1, oCounter)){
	image_index = 0;	
}	