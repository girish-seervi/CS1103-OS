# Killing the background task
echo -e "\nKilling the background task..."
kill $task_pid
# Confirming the task has been terminated
echo -e "\nChecking task status after termination (should not exist):"
ps -p $task_pid && echo "Process still exists." || echo "Process terminated."
