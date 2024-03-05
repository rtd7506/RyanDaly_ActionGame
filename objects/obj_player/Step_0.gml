/// @description Insert description here
// You can write your code in this editor

if !dying && !inCutscene{
	xInput=(keyboard_check(ord("D"))-keyboard_check(ord("A")))
	yInput=(keyboard_check(ord("S"))-keyboard_check(ord("W")))
}
xVel=xInput*moveSpd+forceX
yVel=yInput*moveSpd+forceY


if (abs(xVel)+abs(yVel)> moveSpd){
	xVel = xVel/sqrt(2)
	yVel = yVel/sqrt(2)
}

//Collisions
if !place_meeting(x+xVel,y,obj_wall){
	x+=xVel
}
if !place_meeting(x,y+yVel,obj_wall){
	y+=yVel
}

//Forces
if forceX != 0 || forceY != 0{
	if forceX > forceDecay{
		forceX -= forceDecay
	}else if forceX < -forceDecay{
		forceX += forceDecay
	}else{
		forceX = 0
	}
	
	if forceY > forceDecay{
		forceY -= forceDecay
	}else if forceY < -forceDecay{
		forceY += forceDecay
	}else{
		forceY = 0
	}
}

depth = -y/100

if keyboard_check_pressed(vk_space) && dying{
	room_restart()
}

if place_meeting(x,y,obj_cutsceneTrigger) && !inCutscene{
	inCutscene = true
	alarm[0] = 120
	audio_sound_gain(snd_musicLoop,0.5,800)
}

if inCutscene{
	xInput = 1
	yInput = 0
}
//draw_clear_alpha(c_white,1)
//show_debug_message(hurtTimer)
if hurtTimer > 0{
	hurtTimer -= 1
	//layer_set_visible(hurtLayer,true)
	if !layer_get_visible(hurtLayer){
		layer_set_visible(hurtLayer,true)
	}
	//[0.5,1] to [0.7,1.4]
	var edge1 = 0.5+(hp/10)
	var edge2 = edge1*2
	fx_set_parameter(hurtFx,"g_VignetteEdges",[edge1,edge2])
}else{
	if layer_get_visible(hurtLayer){
		layer_set_visible(hurtLayer,false)
		hp = 3
	}
}


if !audio_is_playing(snd_musicLoop){
	audio_play_sound(snd_musicLoop,10,0,0.75)
}