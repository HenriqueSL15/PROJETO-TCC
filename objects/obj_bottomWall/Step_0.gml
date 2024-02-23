var isColliding = collision_rectangle(x,y,x + sprite_width,y - sprite_height, obj_player,0,0);
show_debug_message(x)
if(isColliding != noone){
	image_alpha -= addUp;
}else {
	image_alpha += addUp;	
}

image_alpha = clamp(image_alpha,0.75,1)