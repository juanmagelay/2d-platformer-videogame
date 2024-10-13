extends CharacterBody2D

@onready var animation_player = self.get_node("AnimationPlayer")

var animation_to_play = "Idle"

func _ready():
	animation_player.stop()
	animation_player.play("Idle")
