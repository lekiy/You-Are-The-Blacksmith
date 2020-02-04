/// @description Insert description here
// You can write your code in this editor
if(!serviced){
    if(targetCounter == noone){
        targetCounter = get_available_counter();
		if(targetCounter != noone){
			targetCounter.isAvailable = false;
		}
    }else{
        var target = get_drop_off_wait_pos(targetCounter);
        if(move_to_point(target[0], target[1]) && hasArrived){
            if(!targetCounter.isFull){
                hasArrived=true;
                audio_play_sound(grumbles[irandom(2)], 6, false);
            }
        }else if(targetCounter.isFull){
            if(targetCounter.containedItem.object_index = oMoneyBag.object_index){
                serviced = true;
                global.customersServed++;
                targetCounter.isAvailable = true;
                heldItem = targetCounter.containedItem;
                hasItem = true;
                targetCounter.containedItem = noone;
                targetCounter.isFull = false;
            }
        }
    }
}else{
    move_to_point(-100, random(room_height));
}

if(heldItem != noone){
    with(heldItem){
        x = other.x;
        y = other.y+other.heldYOffset;
    }
}

if(x < -80){
    instance_destroy();
}