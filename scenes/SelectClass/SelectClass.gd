extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var class_overview_scene = load("res://scenes/class_overview.tscn")

var player_base = {}

# Called when the node enters the scene tree for the first time.
func _ready():
	print('Hello world!')
	pass # Replace with function body.

func go_to_overview():
	print("Overview")
	add_child(class_overview_scene.instance())

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
