extends TextureButton

export var btnText : String

func _ready():
	$Label.text = btnText

# DAS WAR MEGA UNNÖTIG, MAN KANN EINFACH DAS SIGNAL pressed()
# IN DEM HAUPT SCRIPT VERWENDEN
#
#func _on_Button_pressed():
#	if nodePath != "" and functionToDo != "":
#		get_node(nodePath).call(functionToDo)
#	elif functionToDo != "":
#		callFunction(functionToDo)	
#
#func callFunction(fnc, env = null):
#	var script = GDScript.new()
#	script.set_source_code("extends Node\n\nfunc run():\n\t" + fnc)
#	script.reload()
#	
#	var obj = Node.new()
#	obj.set_name("scriptCaller")
#	get_parent().add_child(obj)
#	obj.set_script(script)
#	obj.run()
