isColliding = true
if(!other.drag){
	life-=other.dano
	vspd = 0
	instance_destroy(other)
}