var xVar = 0; // x
var yVar = 0; // y

if (keyboard_check(vk_left)){
	xVar -= 2 * speedPos;
	image_index = 1;
}
if (keyboard_check(vk_right)){
	xVar += 2 * speedPos;
	image_index = 2;
}
if (keyboard_check(vk_up)){
	yVar -= 2 * speedPos;
	image_index = 3;
}
if (keyboard_check(vk_down)){
	yVar += 2 * speedPos;
	image_index = 0;
}

if (keyboard_check_pressed(vk_shift)){
	var plr = instance_create_depth(x,y,1,bullet);
	var ea = 0;
	if (image_index == 0) ea = 180;
	if (image_index == 1) ea = 270;
	if (image_index == 2) ea = 90;
	if (image_index == 3) ea = 0;
	plr.initalize(ea);
}

if (place_meeting(x+xVar,y,Object1)) xVar = 0

if (place_meeting(x,y+yVar,Object1)) yVar = 0
	
y += yVar;
x += xVar;

