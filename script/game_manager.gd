extends Node
var score=0
@onready var score_label= $score_label
@onready var timer= $Timer
func add_point():
	score +=1
	score_label.text="Congrats!You have collected "+str(score)+" coins"
	if score==8:
		timer.start()
func _on_timer_timeout() -> void:
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
