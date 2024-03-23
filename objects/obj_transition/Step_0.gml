if(entrando){
	img+=img_vel

	if(img - img_num > cols + 2){
		if(room_exists(destino)){
			room_goto(destino)	
			entrando = false
		}
	}
}else {
	img -=img_vel	
	
	if(img < 5){
		instance_destroy()
	}
}