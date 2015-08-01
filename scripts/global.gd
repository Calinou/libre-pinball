# Copyright (c) 2015 Calinou - MIT license
# See LICENSE.md for more information.

extends Node

func _ready():
	# 125 FPS physics:
	OS.set_iterations_per_second(125)

	print("Libre Pinball [0.0.3]")
	set_process_input(true)

func pause():
	get_tree().set_pause(true)
	get_node("/root/Table 1/Pause Menu").show()

func resume():
	get_node("/root/Table 1/Pause Menu").hide()
	get_tree().set_pause(false)

func quit():
	get_tree().quit()