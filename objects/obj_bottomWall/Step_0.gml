var isColliding = collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom, obj_player,0,0);

if(isColliding != noone){
	image_alpha -= addUp;
}else {
	image_alpha += addUp;	
}

image_alpha = clamp(image_alpha,0.75,1)