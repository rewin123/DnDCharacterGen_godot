extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var class_overview_scene = load("res://scenes/class_overview.tscn")

signal test_signal

var player_base = {}

func _on_dialogic_event(val):
	print("Class ", val)
	var overview = class_overview_scene.instance()
	overview.common_setup(val)
	add_child(overview)

# Called when the node enters the scene tree for the first time.
func _ready():
	print('Hello world!')
	var new_dialog = Dialogic.start('SelectClass') 
	add_child(new_dialog)
	new_dialog.connect("dialogic_signal", self, "_on_dialogic_event")
	pass # Replace with function body.

func go_to_overview():
	print("Overview")
	add_child(class_overview_scene.instance())

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
