# Display the jobs running in the background
echo -e "\nListing jobs:"
jobs
# Check if the process is running using ps
echo -e "\nChecking if the task is running..."
ps -p $task_pid
