var right = keyboard_check_pressed(vk_right)
var left = keyboard_check_pressed(vk_left)

if (right && page < 1){
	page+=1
}else if (left && page > 0){
	page-=1
}