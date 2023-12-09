image_xscale = 2
image_yscale = 2

object_text = [
	"This is a Save Point.\n  Where all of your game progress will\n  be saved once you interacted with it.", 
	"Save completed."
]

function onInteract()
{
	audio_play_sound(soundTest, 5, false)
}