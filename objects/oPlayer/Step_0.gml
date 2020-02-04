/// @description Insert description here
// You can write your code in this editor
depth = -y;

if(!usingStation){
	dirH = keyboard_check(vk_right)-keyboard_check(vk_left);
	dirV = keyboard_check(vk_down)-keyboard_check(vk_up);

	velX = dirH*moveSpeed;
	velY = dirV*moveSpeed;

	if(velX != 0) spriteDir = sign(velX);

	if(velX != 0){	
		facingDirH = sign(velX);
		facingDirV = 0;
	}else if(velY != 0){
		facingDirH = 0;
		facingDirV = sign(velY);
	
	}
	if(facingDirH != 0){
		sprite_index = sPlayerWalkSide;
	} else if(facingDirV != 0){
		if(facingDirV == 1){
			sprite_index = sPlayerWalkFront;	
		}else if(facingDirV == -1){
			sprite_index = sPlayerWalkBack;	
		}
	}
	
	if(velX != 0 || velY != 0){
		image_speed = 1;	
	}else{
		image_speed = 0;	
	}
	handle_wall_collision();

	if(keyboard_check_pressed(ord("X"))){
		if(heldItem == noone){
			heldItem = instance_place(x+facingDirH*TILESIZE/2, y+facingDirV*TILESIZE/2, oItem);
			if(instance_place(x+facingDirH*TILESIZE/2, y+facingDirV*TILESIZE/2, oStation) != noone){
				var station = instance_place(x+facingDirH*TILESIZE/2, y+facingDirV*TILESIZE/2, oStation);
				if(station.isFull){
					heldItem = station.containedItem;
					audio_play_varried(sndPickup, 6, false, 0.1);
					hasItem = true;
					station.containedItem = noone;
					station.isFull = false;
				}
			}
		
		}else{
			if(instance_place(x+facingDirH*TILESIZE/2, y+facingDirV*TILESIZE/2, oStation) != noone){
				var station = instance_place(x+facingDirH*TILESIZE/2, y+facingDirV*TILESIZE/2, oStation);
				if(!station.isFull){
					if(station.object_index == oBarrel){
						if(heldItem.heat > 0.3){
							audio_play_varried(sndQuench, 7, false, .1);
						}
					}else audio_play_varried(sndDropOff3, 7, false, .1);
					station.containedItem = heldItem;
					
					station.isFull = true;
					heldItem = noone;
					hasItem = false;
					
				}
			}else{
				place_item(heldItem, x+facingDirH*TILESIZE/2, y+facingDirV*TILESIZE/2);
				heldItem = noone;
				hasItem = false;
			}
		}
	}

}
if(keyboard_check_pressed(ord("Z"))){
	
	if(heldItem == noone){
		if(instance_place(x+facingDirH*TILESIZE/2, y+facingDirV*TILESIZE/2, oStation) != noone){
			var station = instance_place(x+facingDirH*TILESIZE/2, y+facingDirV*TILESIZE/2, oStation);
			if(station.isFull && station.object_index == oAnvil){
				var item = station.containedItem;
				if(item.rust > 0) {
					if(!instance_exists(oHitMeter)){
						instance_create_layer(x, y-40, "Instances", oHitMeter);
						usingStation = true;
					}else{
						var meter = oHitMeter;
						if(!meter.stopped){
							meter.stopped = true;
							var hitValue = (15-point_distance(15, 0, meter.sliderX, 0))/15;
							if(item.heat < 0.45){
								audio_play_varried(sndAnvil4, 8, false, .1);
								hitValue = 0;
							}else{
								if(hitValue > 0.88){
									hitValue = 1.5;
									audio_play_varried(sndHammerCrit, 8, false, .1);
								}else audio_play_varried(sndHammerHit, 8, false, .1);
							}
							item.rust -= hitValue;
							
							usingStation = false;
						}
					}	
				}
			}else if(station.object_index == oChest && global.gold>=25){
                station.containedItem=instance_create_layer(x, y, "Instances", oMoneyBag)
                global.gold-=25
                heldItem = station.containedItem;
				station.containedItem=noone;
                hasItem = true;
            }
		}
	}
}


if(heldItem != noone){
	hasItem = true;
	with(heldItem){
		x = other.x;
		y = other.y+other.heldYOffset;
	}
}