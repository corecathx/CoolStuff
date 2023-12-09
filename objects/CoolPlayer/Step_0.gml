var xVar = 0; // x
var yVar = 0; // y

if (keyboard_check(vk_left)){
	xVar -= 2 * speedPos;
}
if (keyboard_check(vk_right)){
	xVar += 2 * speedPos;
}
if (keyboard_check(vk_up)){
	yVar -= 2 * speedPos;
}
if (keyboard_check(vk_down)){
	yVar += 2 * speedPos;
}

if (place_meeting(x+xVar,y,Object1)) xVar = 0

if (place_meeting(x,y+yVar,Object1)) yVar = 0
	
y += yVar;
x += xVar;

