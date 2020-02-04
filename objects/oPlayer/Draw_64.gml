/// @description Insert description here
// You can write your code in this editor

var station = instance_place(x+facingDirH*TILESIZE/2, y+facingDirV*TILESIZE/2, oStation);
if station != noone{
    /*draw_set_color(c_green);
    draw_rectangle(station.x-1, station.y-1, station.x+19, station.y+19, true);
    draw_set_color(noone);*/

    var icon=noone;
    var sItem = station.containedItem;
    if (station.object_index==oStation.object_index){
        if(sItem && !hasItem)icon=sPickupIcon;
        else if(!sItem && hasItem)icon=sDropOffIcon;
    }
    if (station.object_index==oAnvil.object_index){
        if(sItem && sItem.condition!=NO_DAMAGE && !usingStation && !instance_exists(oHitMeter))icon=sHammerIcon;
        else if(sItem && sItem.condition==NO_DAMAGE && !hasItem)icon=sPickupIcon;
        else if(!sItem && hasItem)icon=sDropOffIcon;
    }
	if (station.object_index==oFurnace.object_index){
        if(sItem && !hasItem)icon=sPickupIcon;
        else if(!sItem && hasItem)icon=sDropOffIcon;
    }
	if (station.object_index==oBarrel.object_index){
        if(sItem && !hasItem)icon=sPickupIcon;
        else if(!sItem && hasItem)icon=sDropOffIcon;
    }
	if (station.object_index==oChest.object_index){
        if(!sItem && !hasItem && global.gold>=25)icon=sChestIcon;
        //else if(sItem && !hasItem)icon=sPickupIcon;
      //  else if(!sItem && hasItem)icon=sDropIcon;

    }
    if (icon!=noone) draw_sprite(icon,0,x,y-40);
}