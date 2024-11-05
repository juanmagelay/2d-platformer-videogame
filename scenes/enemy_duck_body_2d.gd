extends CharacterBody2D

@onready var animation_player = self.get_node("AnimationPlayer")

var animation_to_play = "Idle"

func _ready():
	animation_player.stop()
	animation_player.play("Idle")

func _on_area_2d_body_entered(body: Node2D) -> void:
	if (body.name == "CharacterBody2D"):
		print("You died.")
		get_tree().reload_current_scene()
