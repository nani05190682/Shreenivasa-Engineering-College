#!/bin/bash

# Function to print colored text
print_result() {
    if [ "$1" == "PASS" ]; then
        echo -e "\e[32m$2: PASS\e[0m"  # Green for PASS
    else
        echo -e "\e[31m$2: FAIL\e[0m"  # Red for FAIL
    fi
}

# Variables
LAB_DIR="$HOME/linux_lab"
DOCUMENTS_DIR="$LAB_DIR/documents"
IMAGES_DIR="$LAB_DIR/images"
BACKUPS_DIR="$LAB_DIR/backups"
PROJECTS_DIR="$LAB_DIR/projects"

# Task 1: Check if directories are created
echo "=== Validating Task 1 ==="
if [ -d "$LAB_DIR" ] && [ -d "$DOCUMENTS_DIR" ] && [ -d "$IMAGES_DIR" ] && [ -d "$BACKUPS_DIR" ]; then
    print_result "PASS" "Task 1: Directories created"
else
    print_result "FAIL" "Task 1: Directories created"
fi

# Task 2: Check if files are created in the documents directory
echo "=== Validating Task 2 ==="
if [ -f "$DOCUMENTS_DIR/notes.txt" ] && [ -f "$DOCUMENTS_DIR/report.txt" ] && [ -f "$DOCUMENTS_DIR/todo.txt" ]; then
    print_result "PASS" "Task 2: Files created in documents"
else
    print_result "FAIL" "Task 2: Files created in documents"
fi

# Task 3: Check if files are copied and moved
echo "=== Validating Task 3 ==="
if [ -f "$BACKUPS_DIR/notes.txt" ] && [ -f "$BACKUPS_DIR/todo.txt" ] && [ ! -f "$DOCUMENTS_DIR/todo.txt" ] && [ -f "$DOCUMENTS_DIR/final_report.txt" ]; then
    print_result "PASS" "Task 3: Files copied and moved"
else
    print_result "FAIL" "Task 3: Files copied and moved"
fi

# Task 4: Check if files and directories are deleted
echo "=== Validating Task 4 ==="
if [ ! -f "$DOCUMENTS_DIR/final_report.txt" ] && [ ! -d "$BACKUPS_DIR" ]; then
    print_result "PASS" "Task 4: Files and directories deleted"
else
    print_result "FAIL" "Task 4: Files and directories deleted"
fi

# Task 5: Check if files are searched and deleted
echo "=== Validating Task 5 ==="
if [ ! -f "$LAB_DIR/file4.log" ] && [ -f "$LAB_DIR/file1.txt" ] && [ -f "$LAB_DIR/file2.log" ] && [ -f "$LAB_DIR/file3.txt" ]; then
    print_result "PASS" "Task 5: Files searched and deleted"
else
    print_result "FAIL" "Task 5: Files searched and deleted"
fi

# Task 6: Check if projects directory is created and files are copied
echo "=== Validating Task 6 ==="
if [ -d "$PROJECTS_DIR" ] && [ -f "$PROJECTS_DIR/file1.txt" ] && [ -f "$PROJECTS_DIR/file3.txt" ]; then
    print_result "PASS" "Task 6: Projects directory and files copied"
else
    print_result "FAIL" "Task 6: Projects directory and files copied"
fi

echo "=== Validation Complete ==="
