# Copyright (c) 2015 Calinou - MIT license
# See LICENSE.md for more information.

extends Node2D

var ball
var hud

var lifes = 2
var timer = 0
var pos_x
var pos_y

func _ready():
	

	set_fixed_process(true)

func _fixed_process(delta):
	# Prevent the ball from being reset while the game is started:
	timer += 1

	if timer >= 10:
		timer = 10

func _on_Bottom_Area_body_enter(area):
	ball = get_node("../Ball/RigidBody2D")
	if timer >= 10 and lifes > 0:
		lifes -= 1
		# Reset ball position and velocity:
		ball.set_global_pos(Vector2(64, 64))
		ball.set_linear_velocity(Vector2(0, 0))
		print(tr("life_lost") + " " + str(lifes))
	elif timer >= 10:
		hud = get_node("../HUD/Game Over")
		hud.show()
		print(tr("game_over"))