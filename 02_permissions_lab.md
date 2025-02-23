### **Lab Exercise: File Permissions and Ownership in Linux**

This lab exercise focuses on understanding and managing file permissions and ownership using commands like `chmod`, `chown`, and `chgrp`. By the end of this lab, you will be able to:
1. Modify file permissions using `chmod`.
2. Change file ownership using `chown`.
3. Change group ownership using `chgrp`.

---

### **Lab Setup**:
1. **Environment**:
   - Use a Linux terminal (e.g., Ubuntu, Fedora, or any Linux distribution).
   - Alternatively, use an online Linux terminal like [replit.com](https://replit.com) or [jslinux](https://bellard.org/jslinux/).

2. **Directory Structure**:
   - Create a directory called `permissions_lab` in your home directory.

---

### **Lab Tasks**:

#### **Task 1: Create Files and Directories**
1. Create a directory named `permissions_lab` in your home directory.
   ```bash
   mkdir ~/permissions_lab
   ```
2. Navigate into the `permissions_lab` directory.
   ```bash
   cd ~/permissions_lab
   ```
3. Create a file named `file1.txt` and a directory named `dir1`.
   ```bash
   touch file1.txt
   mkdir dir1
   ```

---

#### **Task 2: Modify File Permissions with `chmod`**
1. Check the current permissions of `file1.txt` and `dir1` using the `ls -l` command.
   ```bash
   ls -l
   ```
2. Change the permissions of `file1.txt` to `rw-r--r--` (644) using `chmod`.
   ```bash
   chmod 644 file1.txt
   ```
3. Change the permissions of `dir1` to `rwxr-xr-x` (755) using `chmod`.
   ```bash
   chmod 755 dir1
   ```
4. Verify the changes using `ls -l`.

---

#### **Task 3: Change File Ownership with `chown`**
1. Check the current owner and group of `file1.txt` and `dir1` using `ls -l`.
2. Change the owner of `file1.txt` to another user (replace `username` with an actual user on your system).
   ```bash
   sudo chown username file1.txt
   ```
3. Verify the change using `ls -l`.

---

#### **Task 4: Change Group Ownership with `chgrp`**
1. Check the current group of `file1.txt` and `dir1` using `ls -l`.
2. Change the group of `dir1` to another group (replace `groupname` with an actual group on your system).
   ```bash
   sudo chgrp groupname dir1
   ```
3. Verify the change using `ls -l`.

---

#### **Task 5: Advanced Permissions**
1. Add execute permission for the owner of `file1.txt` using symbolic notation.
   ```bash
   chmod u+x file1.txt
   ```
2. Remove read permission for the group and others from `dir1` using symbolic notation.
   ```bash
   chmod go-r dir1
   ```
3. Verify the changes using `ls -l`.

---

### **Lab Deliverables**:
1. Take screenshots or copy the terminal output for each task.
2. Write a brief summary of what you learned during the lab.

---

### **Lab Questions**:
1. What does the permission `rwxr-xr-x` mean in numeric notation?
2. How can you recursively change the permissions of all files and directories inside a directory?
3. What is the difference between `chown` and `chgrp`?
4. How can you give read, write, and execute permissions to the owner, and only read permission to the group and others?

---
