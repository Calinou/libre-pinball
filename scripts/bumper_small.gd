# Copyright (c) 2015 Calinou - MIT license
# See LICENSE.md for more information.

extends StaticBody2D

# Color timer: change the blue color value over time to create some animation
var color_timer = 0.25
var color_timer_increment = true

func _ready():
	set_fixed_process(true)

func _fixed_process(delta):
	# If the `color_timer` reached 1, start decrementing
	if color_timer >= 1:
		color_timer = 1
		color_timer_increment = false

	# If the `color_timer` reached 0.25, start incrementing
	if color_timer <= 0.25:
		color_timer = 0.25
		color_timer_increment = true
	
	if color_timer_increment:
		color_timer += 0.01
	else:
		color_timer -= 0.01

	get_node("Polygon2D").set_color(Color(1, 1, color_timer))