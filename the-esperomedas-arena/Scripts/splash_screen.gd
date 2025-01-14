extends Control

#Defines cutscene variable.
var cutscene = preload("res://Scenes/pre_menu_cutscene.tscn")

#Calls scene.
func _on_splash_screen_finished() -> void:
	get_tree().change_scene_to_packed(cutscene)
