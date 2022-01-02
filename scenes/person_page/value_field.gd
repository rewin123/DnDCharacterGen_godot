extends MarginContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var field_name = ""
var field_value = ""

# Called when the node enters the scene tree for the first time.
func _ready():
	$HBoxContainer/ValueName.text = field_name
	$HBoxContainer/Value.text = field_value


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
