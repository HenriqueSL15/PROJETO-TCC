randomize()
value = 0
canCount = false
other.i++
if(other.i == 600){
	canCount = true
	instance_destroy(other)
}

if(other.i % 6 == 0){
	value = irandom(9)
	show_debug_message(value)	
}

if(value == 5){
	canCount = true
	if (other.i <= 540){
		other.i = 540	
	}
}