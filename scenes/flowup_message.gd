extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var text = ""

func set_text(text_):
	text = text_

# Called when the node enters the scene tree for the first time.
func _ready():
	$PanelContainer/Label.text = text


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
