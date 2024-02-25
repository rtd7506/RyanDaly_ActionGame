/// @description Insert description here
// You can write your code in this editor


xInput=(keyboard_check(ord("D"))-keyboard_check(ord("A")))
yInput=(keyboard_check(ord("S"))-keyboard_check(ord("W")))

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


