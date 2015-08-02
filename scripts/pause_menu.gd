# Copyright (c) 2015 Calinou - MIT license
# See LICENSE.md for more information.

extends Control

var global
var paused = false

func _ready():
	set_process_input(true)

func _input(event):
	global = get_node("/root/Global")
	if Input.is_action_pressed("pause") and not paused:
		global.pause()
		paused = true
	elif Input.is_action_pressed("pause") and paused:
		global.resume()
		paused = false

func _on_Resume_Button_pressed():
	global = get_node("/root/Global")
	global.resume()

func _on_Quit_Button_pressed():
	global = get_node("/root/Global")
	global.quit()

func _on_Restart_Button_pressed():
	global = get_node("/root/Global")
	global.restart()

func _on_Main_Menu_Button_pressed():
	global = get_node("/root/Global")
	global.go_to_main_menu()
