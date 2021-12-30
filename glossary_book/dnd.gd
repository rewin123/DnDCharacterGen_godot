class_name dnd


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

enum Ability {strength, dexterity, constitution, intelegence, wisdom, charisma}
	

enum Class {
	barbarian,
	bard,
	cleric,
	druid,
	fighter,
	monk,
	paladin,
	ranger,
	rogue,
	sorcerer,
	warlock,
	wizard
}

enum Race {
	mountain_dwarf,
	hill_dwarf,
	high_elf,
	forest_elf,
	dark_elf,
	lightfoot_halfling,
	stout_halfling,
	human,
	dragonborn,
	forest_gnome,
	rock_gnome,
	halfelf,
	halforc,
	tiefling}

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

static func get_ability_names():
	var res = {Ability.strength : "Сила",
	Ability.dexterity : "Ловкость",
	Ability.constitution : "Телосложение",
	Ability.intelegence : "Интеллект",
	Ability.wisdom : "Мудрость",
	Ability.charisma : "Харизма",
	}
	return res

static func get_zero_abilities():
	var res = {}
	res[Ability.strength] = 0
	res[Ability.dexterity] = 0
	res[Ability.constitution] = 0
	res[Ability.intelegence] = 0
	res[Ability.wisdom] = 0
	res[Ability.charisma] = 0
	return res
	
static func roll_dice(d):
	return 1 + randi() % d

static func get_class_ability_order():
	var res = {}
	res[Class.barbarian] = [Ability.strength, Ability.constitution, Ability.dexterity, Ability.intelegence, Ability.wisdom, Ability.charisma]
	res[Class.bard] = [Ability.charisma, Ability.dexterity, Ability.constitution, Ability.intelegence, Ability.wisdom, Ability.strength]
	res[Class.cleric] = [Ability.wisdom, Ability.constitution, Ability.strength, Ability.dexterity, Ability.intelegence, Ability.charisma]
	res[Class.druid] = [Ability.wisdom, Ability.constitution, Ability.strength, Ability.dexterity, Ability.intelegence, Ability.charisma]
	res[Class.fighter] = [Ability.strength, Ability.constitution, Ability.dexterity, Ability.intelegence, Ability.wisdom, Ability.charisma]
	res[Class.monk] = [Ability.dexterity, Ability.constitution, Ability.strength, Ability.intelegence, Ability.wisdom, Ability.charisma]
	res[Class.paladin] = [Ability.strength, Ability.charisma, Ability.constitution, Ability.dexterity, Ability.intelegence, Ability.wisdom]
	res[Class.ranger] = [Ability.dexterity, Ability.wisdom, Ability.constitution, Ability.strength, Ability.intelegence, Ability.charisma]
	res[Class.rogue] = [Ability.dexterity, Ability.strength, Ability.constitution, Ability.intelegence, Ability.wisdom, Ability.charisma]
	res[Class.sorcerer] = [Ability.charisma, Ability.constitution, Ability.dexterity, Ability.strength, Ability.intelegence, Ability.wisdom]
	res[Class.warlock] = [Ability.charisma, Ability.constitution, Ability.dexterity, Ability.strength, Ability.intelegence, Ability.wisdom]
	res[Class.wizard] = [Ability.intelegence, Ability.constitution, Ability.dexterity, Ability.strength, Ability.wisdom, Ability.charisma]
	return res
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
