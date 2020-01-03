extends TextureButton

export var btnText : String
export var nodePath : String
export var functionToDo : String

func _ready():
	$Label.text = btnText
	if nodePath != "" and functionToDo != "":
		get_node(nodePath).call(functionToDo)