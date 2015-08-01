# Copyright (c) 2015 Calinou - MIT license
# See LICENSE.md for more information.

extends KinematicBody2D

var rotation = -0.3
var sound_to_play = true

func _ready():
	set_fixed_process(true)
	set_process_input(true)

func _fixed_process(delta):
	# Cap rotation values
	if rotation >= 0.3:
		rotation = 0.3

	if rotation <= -0.3:
		rotation = -0.3

	# When `paddle_left` is pressed, start rotating and play sound once
	if Input.is_action_pressed("paddle_left"):
		rotation += 0.06
		if sound_to_play:
			get_node("SamplePlayer").play("paddle")
			sound_to_play = false
	else:
		rotation -= 0.06
		sound_to_play = true

	set_rot(rotation)
