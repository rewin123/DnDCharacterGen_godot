extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var instance_race_plate = load("res://scenes/race_select/race_plate.tscn")

var instance_race_book = preload("res://glossary_book/races/race_book.gd")
var race_book = instance_race_book.new()
var person = null
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func plate_sort(a, b):
	if a[1] > b[1]:
		return true
	else:
		return false

func race_placing(person_):
	person = person_
	
	print("race_placing call")
	
	var class_ability_order = dnd.get_class_ability_order()
	
	var plates_order = []
	
	for race in race_book.all_races:
		print(race_book.name_races[race])
		
		var cost = 0
		cost += race_book.buf_races[race][class_ability_order[person.person_base["class"]][0]]
		cost += race_book.buf_races[race][class_ability_order[person.person_base["class"]][1]]
		
		if cost > 0:
			var plate = instance_race_plate.instance()
			plate.get_node("MarginContainer/VBoxContainer/Label").text = race_book.name_races[race] + " +" + str(cost)
			plate.get_node("MarginContainer/VBoxContainer/Label2").text = race_book.text_races[race]
			plate.get_node("MarginContainer/VBoxContainer/PanelContainer/TextureRect").texture = load(race_book.img_races[race])
			
			plates_order.append([plate, cost])
			
	plates_order.sort_custom(self, "plate_sort")
	for plate_set in plates_order:
		$ScrollContainer/VBoxContainer.add_child(plate_set[0])
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
