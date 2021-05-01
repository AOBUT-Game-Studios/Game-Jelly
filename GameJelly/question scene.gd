extends Control
#loads question choosing scene
const prompts = preload("res://prompts1.tscn")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$count.text = "What is wroug with you logan"
	var questionChooser = prompts.instance()
	add_child(questionChooser)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var q = get_child(4)
	$count.text = String(int($Timer.time_left))
	$Question.text = q.question
	pass


func _on_Timer_timeout():
	
	pass # Replace with function body.
