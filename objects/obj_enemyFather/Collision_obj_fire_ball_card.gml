isColliding = true
if(!other.drag && other.stopped){
	if(image_index > 0.58 && c == 0){
		life-=other.dano
		vspd = 0
		c = 1
		obj_mago.smallHit = true
		alarm[11] = 60
	}
}