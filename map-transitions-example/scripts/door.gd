extends Area2D

@export var next_map: PackedScene
@export var player_group_name: StringName

func _on_body_entered(body: Node2D) -> void:
	if body.get_name() == player_group_name:
		#get_tree().change_scene_to_packed(next_map)
		get_tree().change_scene_to_packed.bind(next_map).call_deferred()
		#print("player collided")
