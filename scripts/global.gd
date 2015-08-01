# Copyright (c) 2015 Calinou - MIT license
# See LICENSE.md for more information.

extends Node

func _ready():
	# 125 FPS physics:
	OS.set_iterations_per_second(125)

	print("Libre Pinball [0.0.2]")
