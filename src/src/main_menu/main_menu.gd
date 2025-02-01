extends Control

@onready var main_menu: Control = $MarginContainer/MainMenu
@onready var options: Control = $MarginContainer/Options
@onready var credits: Control = $MarginContainer/Credits


func _ready() -> void:
	main_menu.show()
	options.hide()
	credits.hide()


func _on_play_button_pressed() -> void:
	get_tree().change_scene_to_file("res://src/levels/level0/game.tscn")


func _on_options_button_pressed() -> void:
	main_menu.hide()
	options.show()
	credits.hide()


func _on_credits_button_pressed() -> void:
	main_menu.hide()
	options.hide()
	credits.show()


func _on_quit_button_pressed() -> void:
	get_tree().quit()


func _on_back_button_pressed() -> void:
	main_menu.show()
	options.hide()
	credits.hide()
