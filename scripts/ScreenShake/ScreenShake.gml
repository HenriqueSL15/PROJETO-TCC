// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ScreenShake(){

}

function screenshake(val1){
	var shake = instance_create_layer(x,y,"HABILIDADES",obj_screenshake)	
	shake.shake = val1
}