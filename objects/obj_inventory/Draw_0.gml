for(var i = 0; i < INVENTORY_SLOTS; i += 1){
	var xx = x + (i mod rowLength) * 128 + 2
	var yy = y + (i div rowLength) * 150 + 2
	if (inventory[i] != -1) {
		draw_sprite(spr_items, inventory[i],xx,yy)
	}
}