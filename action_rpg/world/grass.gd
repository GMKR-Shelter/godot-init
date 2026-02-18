extends Node2D

@export var GRASS_EFFECT: PackedScene
@onready var hurtbox: Hurtbox = $Hurtbox


func _ready() -> void:
	hurtbox.hurt.connect(_on_hurt)

func _on_hurt(other_hitbox: Hitbox) -> void:
	var grass_effect_instace = GRASS_EFFECT.instantiate()
	get_tree().current_scene.add_child(grass_effect_instace)
	grass_effect_instace.global_position = global_position
	queue_free()
