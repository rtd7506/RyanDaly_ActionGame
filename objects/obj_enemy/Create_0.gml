/// @description Insert description here
// You can write your code in this editor

event_inherited()

mole = instance_create_depth(x,y,depth-1,obj_mole)
mole.host = self

gun = instance_create_depth(x,y,depth,obj_enemyGun)
gun.host = self

moves = [1,0,0]
moveX = 0
moveY = 0
moveSpd = 0.5//0.35
xVel = 0
yVel = 0

moveStep = 30
aimStep = 30

alarm[0] = moveStep

idle = true
aggressive = false

animsIdle = [spr_scIdleF,spr_scIdleB]
xDir = 1 //scale of -1 or 1
yDir = 0 //scale of 0 or 1
