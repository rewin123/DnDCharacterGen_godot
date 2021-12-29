extends PanelContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var race_base = dnd.Race.dark_elf

signal clicked_race

func _pressed_button():
	emit_signal("clicked_race", race_base)

# Called when the node enters the scene tree for the first time.
func _ready():
	
	$MarginContainer/VBoxContainer/Button.connect("pressed", self, "_pressed_button")
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
