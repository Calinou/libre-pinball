# Copyright (c) 2015 Calinou - MIT license
# See LICENSE.md for more information.

extends Node2D

var global
var table_name = "Test"

func _ready():
	global = get_node("/root/Global")
	print(tr("table_loaded").replace("%s", table_name))
	global.table_window_title("Test")