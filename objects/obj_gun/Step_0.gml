/// @description Insert description here
// You can write your code in this editor

dir = point_direction(obj_player.x,obj_player.y-2,mouse_x,mouse_y)

x = obj_player.x + lengthdir_x(length,dir)
y = obj_player.y-2 + lengthdir_y(length,dir)

if mouse_check_button_pressed(mb_left) && canShoot{
	instance_create_depth(x,y,0,obj_bullet)
	sprite_index = spr_gunShoot
	image_index = 0
	canShoot = false
	alarm[0] = shotCooldown
	ScreenShake(5,1)
	obj_player.Force(-1,dir)
}

if y < obj_player.y{
	depth = obj_player.depth+1
}else{
	depth = obj_player.depth-1
}