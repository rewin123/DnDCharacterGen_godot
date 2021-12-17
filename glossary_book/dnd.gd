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

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
