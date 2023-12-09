currentLine = defined_texts[curArrayInd]
maxString = string_length(currentLine)+1

if (times > textSpeed && curString < maxString){
	if (string_char_at(currentLine, curString) != " ") 
		audio_play_sound(soundText,2,false)
	currentDrawnText +=	string_char_at(currentLine,curString)
	curString++
	times = 0
}
var press1 = array_contains(keys_handler.keybind_confirms, true)
var press2 = array_contains(keys_handler.keybind_cancels, true)
if (press1 || press2)
{
	if (curString == maxString)
	{
		show_debug_message(string(curArrayInd) + " -- " + string(array_length(defined_texts)-1))
		if (curArrayInd >= array_length(defined_texts)-1)
		{
			instance_destroy()
		} 
		else
		{
			curArrayInd++;
			maxString = 0
			curString = 1
			currentDrawnText = ""
			times = 0
		}
	} else{
		currentDrawnText = currentLine;
		curString = maxString;
	}
}

times+=1