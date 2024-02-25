/// @description Insert description here
// You can write your code in this editor


x += lengthdir_x(moveSpd,dir)
y += lengthdir_y(moveSpd,dir)

if place_meeting(x,y,obj_wall){
	Destroy()
}
if instance_place(x,y,targets){//place_meeting(){
	var _other = instance_place(x,y,targets)
	_other.Force(1.5,dir)
	if _other == obj_player.id{
		ScreenShake(0,3)
	}
	Destroy()
}