extends KinematicBody2D

var rotation = -0.3
var sound_to_play = true

func _ready():
	set_fixed_process(true)
	set_process_input(true)
	OS.set_iterations_per_second(125)

func _fixed_process(delta):
	if rotation >= 0.3:
		rotation = 0.3

	if rotation <= -0.3:
		rotation = -0.3

	if Input.is_action_pressed("flipper_left"):
		rotation += 0.06
		if sound_to_play:
			get_node("SamplePlayer").play("paddle")
			sound_to_play = false
	else:
		rotation -= 0.06
		sound_to_play = true
	
	get_node(".").set_rot(rotation)
