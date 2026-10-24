extends Control

@onready var game_manager = $game_manager

func _on_start_pressed() -> void:
	pass # Replace with function body.


func _on_tutorial_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/tutorial.tscn")
func _on_exit_pressed() -> void:
	get_tree().quit()
