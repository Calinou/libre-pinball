# Copyright (c) 2015 Calinou - MIT license
# See LICENSE.md for more information.

extends Control

func _ready():
	print("Main menu loaded.")

func _on_Play_Button_pressed():
	get_tree().change_scene("res://scenes/table_1.xml")

func _on_Quit_Button_pressed():
	get_node("/root/Global").quit()
