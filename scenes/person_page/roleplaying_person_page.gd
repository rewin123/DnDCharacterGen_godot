extends PanelContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var person = null
var dice_label_instance = load("res://scenes/person_page/dice_label.tscn")
var value_field_instance = load("res://scenes/person_page/value_field.tscn")

signal show_message(text)

func _on_message_show(text):
	emit_signal("show_message", text)

func set_person(person_):
	person = person_

func spawn_dice_label(text, bonus, dice = 20):
	var dice_label = dice_label_instance.instance()
	dice_label.label_name = text
	dice_label.bonus = bonus
	$ScrollContainer/VBoxContainer.add_child(dice_label)
	dice_label.connect("dice_message", self, "_on_message_show")

func spawn_header(text):
	var label = Label.new()
	label.text = text
	$ScrollContainer/VBoxContainer.add_child(label)
	
func spawn_value(text, value):
	var field = value_field_instance.instance()
	field.field_name = text
	field.field_value = value
	
	$ScrollContainer/VBoxContainer.add_child(field)
	pass
	
# Called when the node enters the scene tree for the first time.
func _ready():
	
	spawn_value("Сила ", str(person.person_base[dnd.Ability.strength]))
	spawn_dice_label("", (person.person_base[dnd.Ability.strength] - 10) / 2)
	
	spawn_value("Ловкость ", str(person.person_base[dnd.Ability.dexterity]))
	spawn_dice_label("", (person.person_base[dnd.Ability.dexterity] - 10) / 2)
	
	spawn_value("Выносливость ", str(person.person_base[dnd.Ability.constitution]))
	spawn_dice_label("", (person.person_base[dnd.Ability.constitution] - 10) / 2)
	
	spawn_value("Интеллект ", str(person.person_base[dnd.Ability.intelegence]))
	spawn_dice_label("", (person.person_base[dnd.Ability.intelegence] - 10) / 2)
	
	spawn_value("Мудрость ", str(person.person_base[dnd.Ability.wisdom]))
	spawn_dice_label("", (person.person_base[dnd.Ability.wisdom] - 10) / 2)
	
	spawn_value("Харизма ", str(person.person_base[dnd.Ability.charisma]))
	spawn_dice_label("", (person.person_base[dnd.Ability.charisma] - 10) / 2)
	
	spawn_header("Спасброски")
	spawn_dice_label("Сила", (person.person_base[dnd.Ability.strength] - 10) / 2)
	spawn_dice_label("Ловкость", (person.person_base[dnd.Ability.dexterity] - 10) / 2)
	spawn_dice_label("Выносливость", (person.person_base[dnd.Ability.constitution] - 10) / 2)
	spawn_dice_label("Интеллект", (person.person_base[dnd.Ability.intelegence] - 10) / 2)
	spawn_dice_label("Мудрость", (person.person_base[dnd.Ability.wisdom] - 10) / 2)
	spawn_dice_label("Харизма", (person.person_base[dnd.Ability.charisma] - 10) / 2)
	
	spawn_header("Навыки")
	spawn_dice_label("Акробатика", (person.person_base[dnd.Ability.dexterity] - 10) / 2)
	spawn_dice_label("Атлетика", (person.person_base[dnd.Ability.strength] - 10) / 2)
	spawn_dice_label("Внимание", (person.person_base[dnd.Ability.wisdom] - 10) / 2)
	spawn_dice_label("Выживание", (person.person_base[dnd.Ability.wisdom] - 10) / 2)
	spawn_dice_label("Дрессировка", (person.person_base[dnd.Ability.wisdom] - 10) / 2)
	spawn_dice_label("Запугивание", (person.person_base[dnd.Ability.charisma] - 10) / 2)
	spawn_dice_label("Выступление", (person.person_base[dnd.Ability.charisma] - 10) / 2)
	spawn_dice_label("История", (person.person_base[dnd.Ability.intelegence] - 10) / 2)
	spawn_dice_label("Ловкость рук", (person.person_base[dnd.Ability.dexterity] - 10) / 2)
	spawn_dice_label("Магия", (person.person_base[dnd.Ability.intelegence] - 10) / 2)
	spawn_dice_label("Медицина", (person.person_base[dnd.Ability.wisdom] - 10) / 2)
	spawn_dice_label("Обман", (person.person_base[dnd.Ability.charisma] - 10) / 2)
	spawn_dice_label("Природа", (person.person_base[dnd.Ability.intelegence] - 10) / 2)
	spawn_dice_label("Проницательность", (person.person_base[dnd.Ability.wisdom] - 10) / 2)
	spawn_dice_label("Расследование", (person.person_base[dnd.Ability.intelegence] - 10) / 2)
	spawn_dice_label("Религия", (person.person_base[dnd.Ability.intelegence] - 10) / 2)
	spawn_dice_label("Скрытность", (person.person_base[dnd.Ability.dexterity] - 10) / 2)
	spawn_dice_label("Убеждение", (person.person_base[dnd.Ability.charisma] - 10) / 2)
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
