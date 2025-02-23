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
LAB_DIR="$HOME/permissions_lab"
FILE="$LAB_DIR/file1.txt"
DIR="$LAB_DIR/dir1"

# Task 1: Check if files and directories are created
echo "=== Validating Task 1 ==="
if [ -d "$LAB_DIR" ] && [ -f "$FILE" ] && [ -d "$DIR" ]; then
    print_result "PASS" "Task 1: Files and directories created"
else
    print_result "FAIL" "Task 1: Files and directories created"
fi

# Task 2: Check file and directory permissions
echo "=== Validating Task 2 ==="
FILE_PERM=$(stat -c "%A" "$FILE")
DIR_PERM=$(stat -c "%A" "$DIR")

if [ "$FILE_PERM" == "-rw-r--r--" ] && [ "$DIR_PERM" == "drwxr-xr-x" ]; then
    print_result "PASS" "Task 2: File and directory permissions"
else
    print_result "FAIL" "Task 2: File and directory permissions"
fi

# Task 3: Check file ownership
echo "=== Validating Task 3 ==="
FILE_OWNER=$(stat -c "%U" "$FILE")

if [ "$FILE_OWNER" == "username" ]; then  # Replace "username" with the actual username
    print_result "PASS" "Task 3: File ownership"
else
    print_result "FAIL" "Task 3: File ownership"
fi

# Task 4: Check group ownership
echo "=== Validating Task 4 ==="
DIR_GROUP=$(stat -c "%G" "$DIR")

if [ "$DIR_GROUP" == "groupname" ]; then  # Replace "groupname" with the actual group name
    print_result "PASS" "Task 4: Group ownership"
else
    print_result "FAIL" "Task 4: Group ownership"
fi

# Task 5: Check advanced permissions
echo "=== Validating Task 5 ==="
FILE_PERM=$(stat -c "%A" "$FILE")
DIR_PERM=$(stat -c "%A" "$DIR")

if [ "$FILE_PERM" == "-rwxr--r--" ] && [ "$DIR_PERM" == "d-wx--x--x" ]; then
    print_result "PASS" "Task 5: Advanced permissions"
else
    print_result "FAIL" "Task 5: Advanced permissions"
fi

echo "=== Validation Complete ==="
