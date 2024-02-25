/// @description Insert description here
// You can write your code in this editor

xVel = moveX*moveSpd+forceX
yVel = moveY*moveSpd+forceY

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

//Detection
if !collision_line(x,y,obj_player.x,obj_player.y,obj_wall,0,0){
	aggressive = true
	idle = false
}else{
	idle = true
	aggressive = false
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