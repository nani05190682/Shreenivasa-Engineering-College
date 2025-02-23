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
USER1="user1"
USER2="user2_new"  # Updated username
USER3="user3"
GROUP1="group1"
GROUP2="group2"

# Task 1: Check if users are created
echo "=== Validating Task 1 ==="
if id "$USER1" &>/dev/null && id "$USER2" &>/dev/null && ! id "$USER3" &>/dev/null; then
    print_result "PASS" "Task 1: Users created and deleted"
else
    print_result "FAIL" "Task 1: Users created and deleted"
fi

# Task 2: Check if groups are created
echo "=== Validating Task 2 ==="
if getent group "$GROUP1" &>/dev/null && ! getent group "$GROUP2" &>/dev/null; then
    print_result "PASS" "Task 2: Groups created and deleted"
else
    print_result "FAIL" "Task 2: Groups created and deleted"
fi

# Task 3: Check if users are added to groups
echo "=== Validating Task 3 ==="
if groups "$USER1" | grep -q "$GROUP1" && groups "$USER2" | grep -q "$GROUP1"; then
    print_result "PASS" "Task 3: Users added to groups"
else
    print_result "FAIL" "Task 3: Users added to groups"
fi

# Task 4: Check if user properties are modified
echo "=== Validating Task 4 ==="
if [ "$(getent passwd "$USER1" | cut -d: -f6)" == "/home/user1_new" ] && id "$USER2" &>/dev/null; then
    print_result "PASS" "Task 4: User properties modified"
else
    print_result "FAIL" "Task 4: User properties modified"
fi

echo "=== Validation Complete ==="
