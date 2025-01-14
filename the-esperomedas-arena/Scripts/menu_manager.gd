extends Node

#Defines scene variable.
var gamestart = preload("res://Scenes/main.tscn")

#Calls change scene action when button is pressed.
func _on_begin_pressed() -> void:
	get_tree().change_scene_to_packed(gamestart)


#Quits the game when button is pressed.
func _on_leave_pressed() -> void:
	get_tree().quit()
