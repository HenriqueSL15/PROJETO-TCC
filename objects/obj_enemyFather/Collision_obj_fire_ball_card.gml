isColliding = true
if(!other.drag && other.stopped){
	if(image_index > 0.58){
		life-=3
		vspd = 0
		instance_destroy(other)
	}
}