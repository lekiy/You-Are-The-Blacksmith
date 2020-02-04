if(keyboard_check(vk_up))
{
	heat_index++;
}
if(keyboard_check(vk_down))
{
	heat_index--;
}
if(heat_index >= 0 || heat_index <= 0)
{
	heat_index /= 1.01;
}
