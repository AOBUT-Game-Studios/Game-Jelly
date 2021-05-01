extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var multiplayer_config_ui = $Setup_Screen
onready var server_ip = $Setup_Screen/server_address
onready var device_ip = $CanvasLayer/Label
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_tree().connect("network_peer_connected", self, "_player_connected")
	get_tree().connect("network_peer_disconnected", self, "_player_disconnected")
	get_tree().connect("connected_to_server", self , "_connected_to_server")
	
	device_ip.text = Network.ip_address

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _player_connected(id) -> void:
	print("Player " + str(id) + " has Connected!")

func _player_disconnected(id) -> void:
	print("Player " + str(id) + " has disonnected! Big oof.")

func _on_host_pressed():
	multiplayer_config_ui.hide()
	Network.create_server()


func _on_join_pressed():
	if server_ip.text != "":
		multiplayer_config_ui.hide()
		Network.ip_address = server_ip.text
		Network.join_server()
