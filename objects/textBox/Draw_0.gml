draw_set_color(c_white)
draw_rectangle(20,(room_height/2)+80,room_width-20, room_height-20, false);//outline

draw_set_color(c_black)
draw_rectangle(25,(room_height/2)+85,room_width-25, room_height-25, false);//inside

draw_set_color(c_white)
draw_set_font(mainFont)
draw_text(40,(room_height/2)+100, "* " + currentDrawnText)
