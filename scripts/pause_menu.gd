# Copyright (c) 2015 Calinou - MIT license
# See LICENSE.md for more information.

extends Control

var paused = false

func _ready():
	set_process_input(true)

func _input(event):
	if Input.is_action_pressed("pause") and not paused:
		get_node("/root/Global").pause()
		paused = true
	elif Input.is_action_pressed("pause") and paused:
		get_node("/root/Global").resume()
		paused = false

func _on_Resume_Button_pressed():
	get_node("/root/Global").resume()

func _on_Quit_Button_pressed():
	get_node("/root/Global").quit()
