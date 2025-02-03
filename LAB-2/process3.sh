# Pausing the background task
echo -e "\nPausing the background task..."
kill -STOP $task_pid
# Verifying if the task is paused
echo -e "\nChecking task status after pausing (should be stopped):"
ps -o pid,stat,cmd -p $task_pid # Shows the PID, status (should be T), and command
