/// @description Random Aim
// You can write your code in this editor
if host.idle{
	aimDir = irandom_range(0,360)
}
alarm[2] = irandom_range(60,randomAimStep)
