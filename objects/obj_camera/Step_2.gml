/// @description Insert description here
// You can write your code in this editor

if shaking{
	intensity -= shakeDecay
	shakeX = random_range(-intensity,intensity)
	shakeY = random_range(-intensity,intensity)
	if intensity < 0.1{
		shaking = false
		shakeX = 0
		shakeY = 0
		priority = 1000
	}
}

camera_set_view_pos(view_camera[0],followTarget.x-camera_get_view_width(view_camera[0])/2+shakeX,followTarget.y-camera_get_view_height(view_camera[0])/2-10+shakeY)

