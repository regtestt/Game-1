extends Node

var coinCounter: int


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	coinCounter = get_child_count()
##	print(coinCounter)
	pass


func noCoins(): return coinCounter == 0