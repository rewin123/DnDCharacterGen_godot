extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var class_overview_scene = load("res://scenes/class_overview.tscn")
var race_select_scene = load("res://scenes/race_select/race_select.tscn")

var person_instance = preload("res://glossary_book/person.gd")
onready var person = person_instance.new()

var current_node = null

func alert(text: String, title: String='Message') -> void:
	var dialog = AcceptDialog.new()
	dialog.dialog_text = text
	dialog.window_title = title
	dialog.connect('modal_closed', dialog, 'queue_free')
	add_child(dialog)
	dialog.popup_centered()

func _simple_next_scene(next_scene, person_):
	current_node.queue_free()
	current_node = next_scene
	current_node.set_person(person_)
	current_node.connect("next_scene", self, "_simple_next_scene")
	current_node.connect("show_message", self, "_show_message")
	add_child(current_node)
	
	
func _show_message(text):
	print("some message: " + text)
	$CanvasLayer.add_message(text)
	
func _go_to_race_select(dnd_class):
	person.person_base["class"] = dnd_class
	print("class ", dnd_class)
	current_node.queue_free()
	current_node = race_select_scene.instance()
	current_node.connect("next_scene", self, "_simple_next_scene")
	add_child(current_node)
	current_node.race_placing(person)
	

func _on_dialogic_event(val):
	print("Class ", val)
	var overview = class_overview_scene.instance()
	overview.common_setup(val)
	overview.connect("next_scene", self, "_go_to_race_select")
	add_child(overview)
	current_node = overview

# Called when the node enters the scene tree for the first time.
func _ready():
	print('Hello world!')
	var new_dialog = Dialogic.start('SelectClass') 
	add_child(new_dialog)
	new_dialog.connect("dialogic_signal", self, "_on_dialogic_event")


	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
