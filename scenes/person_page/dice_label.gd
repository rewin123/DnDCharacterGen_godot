extends MarginContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var bonus = 0
var dice_edges = 20
var label_name = ""

signal dice_message(text)

# Called when the node enters the scene tree for the first time.
func _ready():
	$HSplitContainer/Label.text = label_name
	if bonus >= 0:
		$HSplitContainer/Button.text = "+" + str(bonus)
	else:
		$HSplitContainer/Button.text = str(bonus)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	var result = dnd.roll_dice(dice_edges)
	var mes = label_name + " " + str(result) + " + " + str(bonus) + ": " + str(result + bonus)
	emit_signal("dice_message", mes)
	print(result)
