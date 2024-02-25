/// @description Insert description here
// You can write your code in this editor
/*
if idle{
	if xVel < 0{
		xDir = -1
	}else if xVel > 0{
		xDir = 1
	}
	if yVel < 0{
		yDir = 1
	}else if yVel > 0{
		yDir = 0
	}
}
if aggressive{
	if obj_player.x > x{
		xDir = 1
	}else{
		xDir = -1
	}
	if obj_player.y < y-15{
		yDir = 1
	}else if obj_player.y > y{
		yDir = 0
	}
}
*/
var gunDir = gun.dir mod 360
if gunDir < 0{
	gunDir += 360
}
if gunDir < 90 || gunDir > 270{
	xDir = 1
}else{
	xDir = -1
}
if gunDir < 15 || gunDir > 165{
	yDir = 0
}else{
	yDir = 1
}

image_xscale = xDir

sprite_index = animsIdle[yDir]
draw_self()


