spd = 3.5;
hspd = 0;
vspd = 0;
hasSword = true
movable = true
time = 0
alreadyClicked = false
letGo = false

fog = [false, noone]
fogDistance = [[15,13],[25,13]]

var previousMove = hspd;

strength = 0

walls = [obj_wall,obj_topWall,obj_bottomWall,obj_wallUp]

dash_dir = -1;
dash_vspd = 6;
dash_timer = 15;
dash = true;
dash_delay = 15 * 1;



states = States_off;