temp = argument0;
draw_self();

/*
draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, image_angle, merge_colour(merge_colour(make_colour_rgb(255, 0, 0), make_colour_rgb(255, 127, 0), temp/100), make_colour_rgb(255, 255, 0), (temp * 0.5)/100), temp/50);
*/

draw_sprite_ext(asset_get_index(string(sprite_get_name(sprite_index)) + "_blade"), 0, x, y, image_xscale, image_yscale, image_angle, merge_colour(merge_colour(make_colour_rgb(255, 0, 0), make_colour_rgb(255, 127, 0), temp/100), make_colour_rgb(255, 255, 0), (temp * 0.5)/100), temp/50);

