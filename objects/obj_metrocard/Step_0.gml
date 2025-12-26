/// @description Insert description here
// You can write your code in this editor

if mouse_check_button_pressed(mb_left) && collision_point(mouse_x, mouse_y, id, false, false) {
	dragging = true
}

if mouse_check_button_released(mb_left) {
	dragging = false
	x = orig_x
	START_SWIPE = false
}

if dragging{
	x = mouse_x
}
	
if x <= 160 && START_SWIPE {
	START_SWIPE = false
	TIME_END_SWIPE = get_timer()
	show_debug_message(TIME_END_SWIPE-TIME_START_SWIPE)
	if !(250000 >= TIME_END_SWIPE-TIME_START_SWIPE && TIME_END_SWIPE-TIME_START_SWIPE >= 150000) {
		SHAKE_SCREEN = true
	} else {
		FIREWORKS = true
	}
} else if 160 < x && x <= 1100 && !START_SWIPE {
	TIME_START_SWIPE = get_timer()
	START_SWIPE = true
}

if TIME_END_SWIPE != -1 && TIME_START_SWIPE != -1 && TIME_END_SWIPE > TIME_START_SWIPE {
	if 250000 >= TIME_END_SWIPE-TIME_START_SWIPE && TIME_END_SWIPE-TIME_START_SWIPE >= 150000 {
		STATUS = "paid"
	} else {
		STATUS = "swipeagain"
	}
} else {
	STATUS = "wait"
}

if SHAKE_SCREEN {
	SHAKE_SCREEN = false
	screenShake(5,15)
}

if FIREWORKS {
	FIREWORKS = false
	for (var i=0; i<30; i++){
	makeParticles(random(room_width), random(room_height), y-4, 0, 30)
	}
}


