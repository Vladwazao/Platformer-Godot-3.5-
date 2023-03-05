extends Area2D

onready var animation = $AnimatedSprite

func _on_Grass_body_entered(body):
	animation.play("Touch")

func _on_AnimatedSprite_animation_finished():
	animation.play("idle")
