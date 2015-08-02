# Copyright (c) 2015 Calinou - MIT license
# See LICENSE.md for more information.

extends Node

# Initial score compensation (7 bumpers):
var score = -700
# 3 lives:
var lives = 3

func _ready():
	# 125 FPS physics:
	OS.set_iterations_per_second(125)

	print("Libre Pinball [0.0.5]")
	set_process_input(true)

func _input(event):
	if Input.is_action_pressed("restart_game"):
		restart()

# Function to prepend the window title with the current table:
func table_window_title(name):
	OS.set_window_title(name + " - Libre Pinball")

func pause():
	get_tree().set_pause(true)
	get_node("/root/Table 1/Pause Menu").show()

func resume():
	get_node("/root/Table 1/Pause Menu").hide()
	get_tree().set_pause(false)

func quit():
	get_tree().quit()

func restart():
	get_tree().reload_current_scene()
	resume()
	score = -700
	lives = 3

func go_to_main_menu():
	get_tree().change_scene("res://scenes/main_menu.xml")
	resume()