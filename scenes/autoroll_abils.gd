extends PanelContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var grid_items = {}

var rolls = {}
			
var roll_idx = 0
var dice_idx = 0

var last_time_event = 0
var current_time = 0

var dice_dt = 0.01
var dice_max_dt = 0.3
var current_dice_dt = dice_dt

enum {INITED, ROLLING, STABLE}

var state = INITED

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	for row in range(0, 6):
	
		var panel = PanelContainer.new()
		var roll_number = Label.new()
		roll_number.set_text("Roll #" + String(row + 1))
		panel.add_child(roll_number)
		$VBoxContainer/RollTable.add_child(panel)
		
		grid_items[row] = {}
		
		for columns in range(0, 4):
			panel = PanelContainer.new()
			var dice_label = Label.new()
			dice_label.set_text(String(0))
			panel.add_child(dice_label)
			$VBoxContainer/RollTable.add_child(panel)
			grid_items[row][columns] = dice_label
			
		panel = PanelContainer.new()
		var result = Label.new()
		result.set_text("0")
		panel.add_child(result)
		$VBoxContainer/RollTable.add_child(panel)
		grid_items[row][4] = result

func _process(delta):
	current_time += delta
	
	if state == ROLLING:
		if current_time > last_time_event + current_dice_dt:
			last_time_event = current_time
			var roll = dnd.roll_dice(6)
			grid_items[roll_idx][dice_idx].set_text(String(roll))
			rolls[dice_idx] = roll
			current_dice_dt *= 1.3
			if current_dice_dt > dice_max_dt:
				dice_idx += 1
				current_dice_dt = dice_dt
				if dice_idx >= 4:
					set_roll_row(roll_idx)
					roll_idx += 1
					dice_idx = 0
					if roll_idx >= 6:
						state = STABLE
		
func set_roll_row(row_idx):
	var min_roll = rolls[0]
	var min_roll_idx = 0
	for i in range(1, 4):
		if min_roll > rolls[i]:
			min_roll = rolls[i]
			min_roll_idx = i + 0
			
	grid_items[row_idx][min_roll_idx].self_modulate = Color(0.5,0.5,0.5)
	
	var sum = 0
	for i in range(0, 4):
		if i != min_roll_idx:
			sum += rolls[i]
			
	grid_items[row_idx][4].set_text(String(sum))
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	if state == INITED:
		state = ROLLING
		$VBoxContainer/Button.disabled = true
