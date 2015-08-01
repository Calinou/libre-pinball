extends Control

func _ready():
	print("Main menu loaded.")

func _on_Play_pressed():
	get_tree().change_scene("res://scenes/table_1.xml")

func _on_Quit_pressed():
	get_tree().quit()

func _on_Language_item_selected(ID):
	TranslationServer.set_locale(ID)
