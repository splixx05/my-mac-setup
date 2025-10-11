function :add-task() {
	task='python3 ~/Tasks/t/t.py --task-dir ~/Tasks --list tasks'
	echo "Add a new task: "
	read -r input
	task "$input"
	clear
	task
}

function :edit-task() {
	task='python3 ~/Tasks/t/t.py --task-dir ~/Tasks --list tasks'
	echo "Enter the ID you want to edit: "
	read -r id
	echo "Enter the new description: "
	read -r input
	task -e "$id" "$input"
	clear
	task
}

function :del-task() {
	task='python3 ~/Tasks/t/t.py --task-dir ~/Tasks --list tasks'
	echo "Enter the ID you want to finish: "
	read -r id
	task -f "$id"
	clear
	task
}

function :task-cmds() {
	echo "To list all tasks --> task"
	echo "To add a task --> :add-task"
	echo "To edit a task --> :edit-task"
	echo "To finish/delete a task --> :del-task"
}
