keys = [keyboard_check(vk_left), 
	    keyboard_check(vk_down),
		keyboard_check(vk_up),
		keyboard_check(vk_right)]
actions = [
	[-2,0],
	[0,2],
	[0,-2],
	[2, 0]
]
indexes = [
	player_left, player_front, player_back, player_right
]

if (instance_exists(textBox) || touchedAlready){
	keys = [false, false, false, false]	
}

if (keyboard_check_pressed(ord("R"))){
	room_restart()	
}
for (var i = 0; i < array_length(keys); i++)
{
	var multi = (keyboard_check(vk_shift) ? 2 : 1)
	if (keys[i]){
		x += actions[i][0] * multi;
		y += actions[i][1] * multi;
		sprite_index = indexes[i];
	}
	
	if (!array_contains(keys, true)){
		image_speed = 0;
		image_index = 0;
	} else{
		image_speed = 1 * multi;
	}
}

objectsCanBeTouched = [collisionTest,
					   riverman]
					   
objectsCanBeEncountered = [papyrusobj]

for (var i = 0; i < array_length(objectsCanBeTouched); i++)
{
	var uuCaca = objectsCanBeTouched[i]
	if (place_meeting(x,y,uuCaca))
	{
		if (array_contains(keys_handler.keybind_confirms, true))
		{
			if (!instance_exists(textBox))
			{
				var aa = instance_create_depth(0,0, -1, textBox)
				var dialog = uuCaca.object_text
				aa.setVariables(dialog, 2)			
				uuCaca.onInteract()
			}
		}
	}
}

for (var i = 0; i < array_length(objectsCanBeEncountered); i++)
{
	var uuCaca = objectsCanBeEncountered[i]
	if (place_meeting(x,y,uuCaca))
	{
		if (!touchedAlready){
			var the = instance_create_depth(0,0,-2, fightSeqHandler)
			touchedAlready = true
		}
		
	}
}

image_xscale = 2
image_yscale = 2