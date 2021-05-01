extends Node
var rng = RandomNumberGenerator.new()
var questionNum
var question
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	question = "default"
	rng.randomize()
	questionNum = rng.randf_range(0,20)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
