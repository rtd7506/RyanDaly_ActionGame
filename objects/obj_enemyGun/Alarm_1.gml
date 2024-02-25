/// @description Shoot
// You can write your code in this editor
if host.aggressive{
	instance_create_depth(x,y,depth-1,obj_enemyBullet)
	sprite_index = spr_gunShoot
	image_index = 0
	ScreenShake(10,0.5)
	host.Force(-1,dir)
}

alarm[1] = shootStep

