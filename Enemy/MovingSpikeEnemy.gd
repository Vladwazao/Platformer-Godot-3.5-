#tool
extends Path2D

enum ANIMATION_TYPE {
	LOOP,
	BOUNCE
}

export(ANIMATION_TYPE) var animation_type 

onready var animationPlayer: = $AnimationPlayer

func _ready():
	play_updated_animation(animationPlayer)

func play_updated_animation(ap):
	match animation_type:
		ANIMATION_TYPE.LOOP:
			ap.play("MoveAlongPath")
		ANIMATION_TYPE.BOUNCE:
			ap.play("MoveAlongPathBounce")
