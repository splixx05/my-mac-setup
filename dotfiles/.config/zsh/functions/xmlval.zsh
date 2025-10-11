xmlval() {
	schema_v4="$HOME/XML/schemas/camt053V4.xsd"
	schema_v8="$HOME/XML/schemas/camt053V8.xsd"
	schema_v9="$HOME/XML/schemas/pain001V9.xsd"

	echo "Available schemas:"
	echo "Camt.053 V 04 --> 1"
	echo "Camt.053 V 08 --> 2"
	echo "pain.001 V 09 --> 3"
	echo " "
	echo "Pls choose the schema (1, 2, or 3): "
	read -r choice

	chosen_schema=""
	if [[ "$choice" == "1" ]]; then
		chosen_schema="$schema_v4"
	elif [[ "$choice" == "2" ]]; then
		chosen_schema="$schema_v8"
	elif [[ "$choice" == "3" ]]; then
		chosen_schema="$schema_v9"
	else
		echo "Invalid choice. Exiting."
		exit 1
	fi

	if [[ -z "$chosen_schema" ]]; then
		echo "No schema selected or an error occurred. Exiting."
		exit 1
	fi

	echo "Pls define which document do you want to validate (e.g., camt1234.xml): "
	read -r document_name

	xmllint --noout --schema "$chosen_schema" "$HOME/XML/$document_name"
}
