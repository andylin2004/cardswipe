/// @description Insert description here
// You can write your code in this editor

if STATUS == "paid" {
	draw_text(20,20,"GO\nBALANCE: $69.42")
} else if STATUS == "swipeagain" {
	draw_text(20,20,"PLEASE SWIPE AGAIN")
	//draw_text(20,20,"Speed"+string(TIME_END_SWIPE-TIME_START_SWIPE))
} else if STATUS == "wait" {
	draw_text(20,20,"SWIPE!")
}


