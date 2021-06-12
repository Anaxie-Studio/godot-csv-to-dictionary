extends Node


func parse(file_path: String,
	id_column: String = "id",
	delimiter: String = ",") -> Dictionary:

	var file: File = File.new()
	file.open(file_path, File.READ)

	var dict_data: Dictionary = {}

	var line_index: int = -1
	var column_headers: PoolStringArray
	while not file.eof_reached():
		line_index += 1
		var line: PoolStringArray = file.get_csv_line(delimiter)

		if line_index == 0:
			column_headers = line
		else:
			var entry: Dictionary = {}
			for column_index in column_headers.size():
				entry[column_headers[column_index]]	= line[column_index]
			dict_data[id_column] = entry

	file.close()

	return dict_data
