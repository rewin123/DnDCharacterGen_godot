extends CanvasLayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var message_instance = load("res://scenes/flowup_message.tscn")

var time = 0
var messages = []


func add_message(text, live_time = 2):
	var mes = message_instance.instance()
	mes.set_text(text)
	messages.append( {
		"object" : mes,
		"time" : time + 0,
		"live_time" : live_time
		}
	)
	$Messages.add_child(mes)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	time += delta
	
	var i = 0
	while i < len(messages):
		var mes_dict = messages[i]
		if time - mes_dict["time"] >= mes_dict["live_time"]:
			mes_dict["object"].queue_free()
			messages.remove(i)
			i -= 1
		i += 1
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
