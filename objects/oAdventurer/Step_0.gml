/// @description Insert description here
// You can write your code in this editor
depth = -y;

if(!serviced){
	if(targetCounter == noone){
		targetCounter = get_available_counter();
		targetCounter.isAvailable = false;
	}else{
		var target = get_drop_off_wait_pos(targetCounter);
		if(move_to_point(target[0], target[1]) && heldItem != noone){
			if(!targetCounter.isFull){
				targetCounter.containedItem = heldItem;
				targetCounter.isFull = true;
				heldItem = noone;
				hasItem = false;
				
				audio_play_varried(grumbles[irandom(2)], 7, false, .1);
				audio_play_varried(sndDropOff1, 6, false, .1);
				
			}
		}else if(targetCounter.isFull){
			if(targetCounter.containedItem.condition == NO_DAMAGE && targetCounter.containedItem.heat < 0.1){
				serviced = true;
				global.gold+=payVal;
				audio_play_varried(sndPickup1, 3, false, 0.1);
				if(payVal >= 5){
					audio_play_varried(sndCoin2, 5, false, 0.1);
				}else audio_play_varried(sndCoin, 5, false, .1);
				global.customersServed++;
				targetCounter.isAvailable = true;
				heldItem = targetCounter.containedItem;
				hasItem = true;
				targetCounter.containedItem = noone;
				targetCounter.isFull = false;	
			}
		}else{
			image_speed = 1;	
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
