isColliding = true
if(!other.drag && other.stopped && c == 0){
	life-=dano
	obj_mago.smallHit = true
	vspd = 0
	c = 1
	alarm[11] = 60
}