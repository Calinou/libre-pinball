# Copyright (c) 2015 Calinou - MIT license
# See LICENSE.md for more information.

extends Control

var global = get_node("/root/Global")

func _ready():
	global = get_node("/root/Global")
	print(tr("main_menu_loaded"))
	global.table_window_title("Main Menu")

func _on_Play_Button_pressed():
	# TODO: Level selection, several tables
	get_tree().change_scene("res://scenes/table_1.xml")

func _on_Quit_Button_pressed():
	global = get_node("/root/Global")
	get_node("/root/Global").quit()
