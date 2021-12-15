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

func race_placing(person_):
	person = person_
	
	print("race_placing call")
	
	for race in race_book.all_races:
		print(race)
		var plate = instance_race_plate.instance()
		plate.get_node("MarginContainer/VBoxContainer/Label").text = race_book.name_races[race]
		plate.get_node("MarginContainer/VBoxContainer/Label2").text = race_book.text_races[race]
		plate.get_node("MarginContainer/VBoxContainer/PanelContainer/TextureRect").texture = load(race_book.img_races[race])
		
		$ScrollContainer/VBoxContainer.add_child(plate)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
