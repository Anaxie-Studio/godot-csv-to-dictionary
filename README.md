# godot-csv-to-dictionary
 
Provides a singleton called CsvToDictionaryParser with the parse function. It takes the path to the csv file and optionally the name of the column, the data is supposed to be grouped by (defaults to "id") and the delimiter (defaults to ","). The csv is read and grouped by the specified and column, which returns a dictionary. Booleans are parsed automatically if they are strings named "true" or "false" (case-insensitive).
