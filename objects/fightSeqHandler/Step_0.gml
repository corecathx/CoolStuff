if (curTime == 1){
	audio_play_sound(startEncounter,3,false)
}	

if (curTime == 40 || curTime == 48 || curTime == 56){
	audio_play_sound(heartBlink,3,false)
	
	if (curTime == 40){
		instance_create_depth(room_width/2, room_height/2,-1,block)	
	}
	
	if (curTime == 40 || curTime == 56){
		instance_create_depth(obj_char.x, obj_char.y, -2, heartObject)	
	}
	if (curTime == 48){
		instance_destroy(heartObject)
	}
}	

if (curTime == 64){
	audio_play_sound(fall,3,false)
	heartObject.tweenPos()
}	

curTime += 1