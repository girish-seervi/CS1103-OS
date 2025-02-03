# Resuming the background task
echo -e "\nResuming the background task..."
kill -CONT $task_pid
# Verifying if the task is resumed
echo -e "\nChecking task status after resuming (should be running):"
ps -o pid,stat,cmd -p $task_pid # Shows the PID, status (should be R), and command
