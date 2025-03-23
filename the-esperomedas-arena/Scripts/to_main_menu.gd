extends Control

#Defines scene as variable.
var mainmenu = preload("res://Scenes/main_menu.tscn")
var skipbutton = true
#Calls scene.
func _on_cutscene_finished() -> void:
	get_tree().change_scene_to_packed(mainmenu)
