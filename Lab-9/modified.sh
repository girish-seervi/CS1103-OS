#!/bin/bash
# Shell Script for Piping Commands
# Usage: ./piping_commands.sh
# Function to display the contents of the current directory
list_directory_contents() {
      echo "Listing contents of the current directory:"
      ls -l
      echo ""
}
# Function to filter and sort directory contents
filter_and_sort_contents() {
      read -p "Enter a pattern to filter files (e.g., .txt for text files): " pattern
      echo "Filtering and sorting files with pattern '$pattern'..."
      # Use ls, grep, and sort in a pipeline
      ls -l | grep "$pattern" | sort
      echo ""
}
search(){
      read -p "Enter file name to be searched (e.g., myfile.txt ): " file
      echo "Displaying file : "
      ls -l | grep "$file" 
      
}
count(){
      read -p "Enter pattern to be searched " pat
      echo "Directories : "
      ls -d */ | grep "$pat"
      echo "Number of entries : "
      ls -d */ | grep -c "$pat"
      echo "Files : "
      ls -l | grep "$pat"
      echo "Number of entries : "
      ls -l | grep -c "$pat"
}
exeno(){
     read -p "Enter Directory : " pat
     echo "Number of executable files in $pat : "
     ls -l $pat | grep -c ".exe"
}
# Main menu for user interaction
echo "Piping Commands Manager"
echo "1. List contents of the current directory"
echo "2. Filter and sort directory contents"
echo "3. Search for a given file "
echo "4. Count number of files and directories " 
echo "5. Count number of executable files in a given directory "
echo "6. Exit"
# Loop until the user chooses to exit
while true; do
     read -p "Select an option (1-6): " option
     case $option in
           1) # List directory contents
              list_directory_contents
              ;;
           2) # Filter and sort directory contents
              filter_and_sort_contents
              ;;
           3) # Search for a file
              search
              ;;
           4) # Count number of files and directories
              count
              ;;
           5) # Count number of executable files in a given directory 
              exeno
              ;;
           6) # Exit the script
              echo "Exiting the Piping Commands Manager. Goodbye!"
              exit 0
              ;;
           *) # Invalid option
              echo "Invalid option. Please select 1-6."
              ;;
     esac
echo "" # Print a newline for better readability
done
