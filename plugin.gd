tool
extends EditorPlugin


func _enter_tree() -> void:
	add_autoload_singleton(
		"CSV 2 Dictionary Parser",
		"csv_to_dictionary_parser.gd"
	)


func _exit_tree() -> void:
	remove_autoload_singleton("CSV 2 Dictionary Parser")
