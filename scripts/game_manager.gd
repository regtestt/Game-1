extends Node

@onready var label: Label = $"../Player/Label"
@onready var coins: Node = $"../coins"

var m : int = 0
var s : int = 0
var ms : int = 0
	
# Called when the node enters the scene tree for the first time.	
func _process(_delta):
	
	label.text = 'TU TIEMPO FUE: ' + str(m) + ":" + str(s - m*60) + ":" + str(ms - s*1000)		
	if !coins.noCoins(): 
		label.visible = false
		ms = Time.get_ticks_msec()
		s = ms/1000
		m = s/60

	if coins.noCoins:
		label.visible = true
		
	

	
	
	
	
	
