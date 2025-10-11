function :notes() {
	echo "Enter a new note"
	read -r note
	echo "$note" >>~/Notes/notes.txt
	clear
	cat ~/Notes/notes.txt
}
