extends PanelContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var grid_items = {}

var rolls = {}
var dice_result = []
			
var roll_idx = 0
var dice_idx = 0

var last_time_event = 0
var current_time = 0

var dice_dt = 0.01
var dice_max_dt = 0.02
var current_dice_dt = dice_dt

enum {INITED, ROLLING, STABLE, APPLYING}

var state = INITED

var person = null

var race_book_instance = preload("res://glossary_book/races/race_book.gd")
var race_book = race_book_instance.new()

func set_person(person_):
	person = person_
	
func add_panel(node, text):
	var panel = PanelContainer.new()
	var label = Label.new()
	label.set_text(text)
	panel.add_child(label)
	node.add_child(panel)
	return label

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	for row in range(0, 6):
	
		var panel = PanelContainer.new()
		var roll_number = Label.new()
		roll_number.set_text("Roll #" + String(row + 1))
		panel.add_child(roll_number)
		$ScrollContainer/VBoxContainer/RollTable.add_child(panel)
		
		grid_items[row] = {}
		
		for columns in range(0, 4):
			panel = PanelContainer.new()
			var dice_label = Label.new()
			dice_label.set_text(String(0))
			panel.add_child(dice_label)
			$ScrollContainer/VBoxContainer/RollTable.add_child(panel)
			grid_items[row][columns] = dice_label
			
		panel = PanelContainer.new()
		var result = Label.new()
		result.set_text("0")
		panel.add_child(result)
		$ScrollContainer/VBoxContainer/RollTable.add_child(panel)
		grid_items[row][4] = result
		
func set_stable():
	state = STABLE
	$ScrollContainer/VBoxContainer/Button.disabled = false
	$ScrollContainer/VBoxContainer/Button.text = "Далее"
	
	
func set_applying():
	state = APPLYING
	dice_result.sort()
	for ch in $ScrollContainer/VBoxContainer/RollTable.get_children():
		$ScrollContainer/VBoxContainer/RollTable.remove_child(ch)
		ch.queue_free()
	$ScrollContainer/VBoxContainer/RollTable.columns = 2
	
	var race = person.person_base["race"]
	var cls = person.person_base["class"]
	var class_order = dnd.get_class_ability_order()
	var my_order = class_order[cls]
	var ability_names = dnd.get_ability_names()
	
	for i in range(0,6):
		
		var buf = race_book.buf_races[race][my_order[i]]
		
		add_panel($ScrollContainer/VBoxContainer/RollTable, "Хар.")
		add_panel($ScrollContainer/VBoxContainer/RollTable, str(ability_names[my_order[i]]))
		
		add_panel($ScrollContainer/VBoxContainer/RollTable, "Бонус расы")
		add_panel($ScrollContainer/VBoxContainer/RollTable, "+" + str(buf))
		
		add_panel($ScrollContainer/VBoxContainer/RollTable, "Бросок")
		add_panel($ScrollContainer/VBoxContainer/RollTable, str(dice_result[-i-1]))
		
		add_panel($ScrollContainer/VBoxContainer/RollTable, "Результат")
		add_panel($ScrollContainer/VBoxContainer/RollTable, str(dice_result[-i-1] + buf))
		
		person.person_base[my_order[i]] = dice_result[-i-1] + buf
	

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
						set_stable()
		
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
	
	dice_result.append(sum)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	if state == INITED:
		state = ROLLING
		$ScrollContainer/VBoxContainer/Button.disabled = true
	elif state == STABLE:
		set_applying()
