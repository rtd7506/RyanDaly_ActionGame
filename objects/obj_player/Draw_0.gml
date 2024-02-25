/// @description Insert description here
// You can write your code in this editor

if mouse_x < x{
	image_xscale = -1
}else{
	image_xscale = 1
}
if mouse_y < y-15{
	sprite_index = spr_scIdleB
}else{
	sprite_index = spr_scIdleF
}


draw_self()



