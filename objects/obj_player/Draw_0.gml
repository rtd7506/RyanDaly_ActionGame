/// @description Insert description here
// You can write your code in this editor

if !(xVel == 0 && yVel == 0){
	if mouse_y < y-15{
		sprite_index = runB
	}else{
		sprite_index = runF
	}
}else{
	if mouse_y < y-15{
		sprite_index = idleB
	}else{
		sprite_index = idleF
	}
}
if !inCutscene{
	if !dying{
		if mouse_x < x{
			image_xscale = -1
		}else{
			image_xscale = 1
		}
	}
}
if dying{
	xInput = 0
	yInput = 0
	sprite_index = spr_scDeath
	//show_debug_message(image_index)
	if image_index > 3{
		dead = true
		image_speed = 0
		image_index = 5
	}
}
if dead{
	sprite_index = spr_scDeath
	image_index = 5
}
if flashTime > 0{
	flashTime -= 1
	sprite_index = spr_scFlash
}

draw_sprite(spr_shadow,0,x,y+5)
draw_self()



