# Copyright (c) 2015 Calinou - MIT license
# See LICENSE.md for more information.

extends KinematicBody2D

# Save positions of launcher for later use:
var pos_x
var pos_y
var sound_to_play = true

func _ready():
	set_process_input(true)
	set_fixed_process(true)

	pos_x = get_pos().x
	pos_y = get_pos().y

func _fixed_process(delta):
	if Input.is_action_pressed("use_launcher"):
		set_pos(Vector2(pos_x, pos_y - 8))
		if sound_to_play:
			get_node("SamplePlayer").play("launcher")
		sound_to_play = false