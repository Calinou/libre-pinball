# Copyright (c) 2015 Calinou - MIT license
# See LICENSE.md for more information.

extends Control

var global

var show_fps = false

func _ready():
	set_process_input(true)
	set_fixed_process(true)

func _fixed_process(delta):
	global = get_node("/root/Global")
	var fps = OS.get_frames_per_second()
	if show_fps:
		get_node("Frames per Second").set_text(str(fps) + " FPS")
	else:
		get_node("Frames per Second").set_text("")
	
	get_node("Score").set_text(str(global.score))
	get_node("Lives").set_text(str(global.lives))

func _input(event):
	if Input.is_action_pressed("toggle_fps_display") and not show_fps:
		show_fps = true
	elif Input.is_action_pressed("toggle_fps_display") and show_fps:
		show_fps = false
