/// @description Insert description here
// You can write your code in this editor

event_inherited()
moveSpd = 0.9

xVel=0
yVel=0

gun = instance_create_depth(x,y,0,obj_gun)

idleF = spr_scIdleF
idleB = spr_scIdleB
runF = spr_scRunF
runB = spr_scRunB
death = spr_scDeath

hp = 3
dying = false
dead = false

flashTime = 0

inCutscene = false
cutsceneStep = 0
audio_stop_sound(snd_musicIntro)
audio_sound_gain(snd_musicLoop,1,0)
//audio_play_sound(snd_musicLoop,10,0,0.75)

hurtLayer = layer_get_id("HurtLayer")
hurtTimer = 0
hurtFx = layer_get_fx(hurtLayer)
fxEdges = fx_get_parameter(hurtFx,"g_VignetteEdges")
show_debug_message(fxEdges)//fx_get_parameter_names(hurtFx))


function Hit(_dir,_damage){
	flashTime = 5
	if hp <= 1{
		dying = true
		image_index = 0
		Force(3,_dir)
		if object_index = obj_player{
			ScreenShake(0,3)
			TimeControl(20,40)
		}
		audio_sound_gain(snd_musicLoop,0.25,600)
	}else{
		hp -= _damage
		Force(1.5,_dir)
		if object_index = obj_player{
			TimeControl(10,1)
			ScreenShake(0,3)
		}
	}
	hurtTimer = 240
	audio_play_sound(snd_sciHurt,0,0,1.5,0,random_range(0.75,1.25))
	
	
}