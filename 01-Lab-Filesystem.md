File and directory management is a fundamental aspect of working with Linux and other Unix-like operating systems. 


Below is an overview of essential commands for managing files and directories:

---

### **1. `mkdir` (Make Directory)**
- Creates a new directory.
- **Syntax**:
  ```bash
  mkdir [options] <directory_name>
  ```
- **Examples**:
  ```bash
  mkdir myfolder                  # Creates a directory named "myfolder"
  mkdir -p parent/child/grandchild # Creates nested directories
  ```

---

### **2. `cd` (Change Directory)**
- Changes the current working directory.
- **Syntax**:
  ```bash
  cd <directory_path>
  ```
- **Examples**:
  ```bash
  cd /home/user/Documents         # Move to the "Documents" directory
  cd ..                          # Move up one directory level
  cd ~                           # Move to the home directory
  cd -                           # Switch to the previous directory
  ```

---

### **3. `ls` (List Directory Contents)**
- Lists files and directories in the current directory.
- **Syntax**:
  ```bash
  ls [options] [directory]
  ```
- **Common Options**:
  - `-l`: Long listing format (shows permissions, owner, size, etc.).
  - `-a`: Show hidden files (files starting with `.`).
  - `-h`: Human-readable file sizes.
  - `-R`: Recursively list subdirectories.
- **Examples**:
  ```bash
  ls                             # List files in the current directory
  ls -l /home/user               # Long listing of "/home/user"
  ls -a                          # List all files, including hidden ones
  ```

---

### **4. `pwd` (Print Working Directory)**
- Displays the full path of the current working directory.
- **Syntax**:
  ```bash
  pwd
  ```
- **Example**:
  ```bash
  pwd                            # Output: /home/user/Documents
  ```

---

### **5. `cp` (Copy Files and Directories)**
- Copies files or directories from one location to another.
- **Syntax**:
  ```bash
  cp [options] <source> <destination>
  ```
- **Common Options**:
  - `-r`: Recursively copy directories.
  - `-i`: Prompt before overwriting files.
  - `-v`: Verbose mode (show progress).
- **Examples**:
  ```bash
  cp file.txt /backup/           # Copy "file.txt" to "/backup/"
  cp -r myfolder /backup/        # Recursively copy "myfolder" to "/backup/"
  ```

---

### **6. `mv` (Move or Rename Files and Directories)**
- Moves or renames files and directories.
- **Syntax**:
  ```bash
  mv [options] <source> <destination>
  ```
- **Examples**:
  ```bash
  mv file.txt /backup/           # Move "file.txt" to "/backup/"
  mv oldname.txt newname.txt     # Rename "oldname.txt" to "newname.txt"
  ```

---

### **7. `rm` (Remove Files and Directories)**
- Deletes files or directories.
- **Syntax**:
  ```bash
  rm [options] <file_or_directory>
  ```
- **Common Options**:
  - `-r`: Recursively remove directories.
  - `-f`: Force removal (no prompts).
  - `-i`: Prompt before each removal.
- **Examples**:
  ```bash
  rm file.txt                    # Delete "file.txt"
  rm -r myfolder                 # Recursively delete "myfolder"
  rm -rf myfolder                # Forcefully and recursively delete "myfolder"
  ```

---

### **8. `find` (Search for Files and Directories)**
- Searches for files and directories based on specified criteria.
- **Syntax**:
  ```bash
  find <path> [options] [expression]
  ```
- **Common Options**:
  - `-name`: Search by name (supports wildcards).
  - `-type`: Search by type (`f` for files, `d` for directories).
  - `-size`: Search by size.
  - `-exec`: Execute a command on the found files.
- **Examples**:
  ```bash
  find /home/user -name "*.txt"  # Find all `.txt` files in "/home/user"
  find . -type d                 # Find all directories in the current folder
  find /var/log -size +1M        # Find files larger than 1MB in "/var/log"
  find . -name "*.log" -exec rm {} \;  # Delete all `.log` files in the current directory
  ```

---

### **Summary of Commands**:
| Command | Description                              | Example                                   |
|---------|------------------------------------------|-------------------------------------------|
| `mkdir` | Create a directory                      | `mkdir myfolder`                         |
| `cd`    | Change directory                        | `cd /home/user/Documents`                |
| `ls`    | List directory contents                 | `ls -l`                                  |
| `pwd`   | Print working directory                 | `pwd`                                    |
| `cp`    | Copy files/directories                  | `cp file.txt /backup/`                   |
| `mv`    | Move or rename files/directories        | `mv old.txt new.txt`                     |
| `rm`    | Remove files/directories                | `rm -r myfolder`                         |
| `find`  | Search for files/directories            | `find /home -name "*.txt"`               |

---

### **Note**:
1. **Use `-i` or `-I` with `rm` and `cp`**:
   - Avoid accidental deletions or overwrites by enabling interactive prompts.
2. **Use `-r` for directories**:
   - Always use the `-r` option when working with directories in `cp` and `rm`.
3. **Backup before deleting**:
   - Use `cp` to create backups before performing bulk deletions.
4. **Test `find` commands**:
   - Use `-print` or `-ls` with `find` to preview results before using `-exec`.


---
### **Lab Exercise**:
### **Lab Exercise: File and Directory Management in Linux**

This lab exercise is designed to help you practice and master essential file and directory management commands in Linux. Follow the steps below and complete the tasks.

---

### **Lab Objectives**:
1. Create, navigate, and manage directories.
2. List and inspect directory contents.
3. Copy, move, and rename files and directories.
4. Delete files and directories.
5. Search for files and directories using the `find` command.

---

### **Lab Setup**:
1. **Environment**:
   - Use a Linux terminal (e.g., Ubuntu, Fedora, or any Linux distribution).
   - Alternatively, use an online Linux terminal like [replit.com](https://replit.com) or [jslinux](https://bellard.org/jslinux/).

2. **Directory Structure**:
   - Start by creating a lab directory called `linux_lab` in your home directory.

---

### **Lab Tasks**:

#### **Task 1: Create Directories**
1. Create a directory named `linux_lab` in your home directory.
   ```bash
   mkdir ~/linux_lab
   ```
2. Navigate into the `linux_lab` directory.
   ```bash
   cd ~/linux_lab
   ```
3. Create the following directory structure inside `linux_lab`:
   ```
   linux_lab/
   ├── documents/
   ├── images/
   └── backups/
   ```
   Use the `mkdir` command with the `-p` option to create nested directories:
   ```bash
   mkdir -p documents images backups
   ```

---

#### **Task 2: Create and List Files**
1. Create a text file named `notes.txt` in the `documents` directory.
   ```bash
   touch documents/notes.txt
   ```
2. Create two more files in the `documents` directory:
   - `report.txt`
   - `todo.txt`
   ```bash
   touch documents/report.txt documents/todo.txt
   ```
3. List the contents of the `documents` directory using the `ls` command.
   ```bash
   ls documents
   ```

---

#### **Task 3: Copy and Move Files**
1. Copy the `notes.txt` file from the `documents` directory to the `backups` directory.
   ```bash
   cp documents/notes.txt backups/
   ```
2. Move the `todo.txt` file from the `documents` directory to the `backups` directory.
   ```bash
   mv documents/todo.txt backups/
   ```
3. Rename the `report.txt` file in the `documents` directory to `final_report.txt`.
   ```bash
   mv documents/report.txt documents/final_report.txt
   ```

---

#### **Task 4: Delete Files and Directories**
1. Delete the `final_report.txt` file from the `documents` directory.
   ```bash
   rm documents/final_report.txt
   ```
2. Delete the `backups` directory and all its contents.
   ```bash
   rm -r backups
   ```

---

#### **Task 5: Search for Files**
1. Create a few test files in the `linux_lab` directory:
   ```bash
   touch file1.txt file2.log file3.txt file4.log
   ```
2. Use the `find` command to locate all `.txt` files in the `linux_lab` directory.
   ```bash
   find ~/linux_lab -name "*.txt"
   ```
3. Use the `find` command to locate all `.log` files in the `linux_lab` directory and delete them.
   ```bash
   find ~/linux_lab -name "*.log" -exec rm {} \;
   ```

---

#### **Task 6: Advanced Practice**
1. Create a directory named `projects` inside `linux_lab`.
   ```bash
   mkdir ~/linux_lab/projects
   ```
2. Copy all `.txt` files from the `linux_lab` directory to the `projects` directory.
   ```bash
   cp ~/linux_lab/*.txt ~/linux_lab/projects/
   ```
3. List the contents of the `projects` directory in long format.
   ```bash
   ls -l ~/linux_lab/projects
   ```
4. Display the current working directory using the `pwd` command.
   ```bash
   pwd
   ```

---

### **Lab Deliverables**:
1. Take screenshots or copy the terminal output for each task.
2. Write a brief summary of what you learned during the lab.

---

### **Lab Questions**:
1. What is the purpose of the `-p` option in the `mkdir` command?
2. How does the `-r` option work with the `cp` and `rm` commands?
3. What is the difference between the `mv` and `cp` commands?
4. How can you use the `find` command to search for files modified in the last 7 days?
   - Hint: Use the `-mtime` option.

---




