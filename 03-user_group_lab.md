### **Lab Exercise: User and Group Management in RHEL**

This lab exercise focuses on managing users and groups in Red Hat Enterprise Linux (RHEL). By the end of this lab, you will be able to:
1. Create and delete users.
2. Create and delete groups.
3. Add users to groups.
4. Modify user properties.
5. Manage user passwords.

---

### **Lab Setup**:
1. **Environment**:
   - A Red Hat Enterprise Linux (RHEL) system or virtual machine.
   - Root or sudo access to perform administrative tasks.

2. **Pre-requisites**:
   - Ensure you have a terminal open with root or sudo privileges.

---

### **Lab Tasks**:

#### **Task 1: Create Users**
1. Create three users: `user1`, `user2`, and `user3`.
   ```bash
   sudo useradd user1
   sudo useradd user2
   sudo useradd user3
   ```
2. Set passwords for each user.
   ```bash
   sudo passwd user1
   sudo passwd user2
   sudo passwd user3
   ```

---

#### **Task 2: Create Groups**
1. Create two groups: `group1` and `group2`.
   ```bash
   sudo groupadd group1
   sudo groupadd group2
   ```

---

#### **Task 3: Add Users to Groups**
1. Add `user1` and `user2` to `group1`.
   ```bash
   sudo usermod -aG group1 user1
   sudo usermod -aG group1 user2
   ```
2. Add `user3` to `group2`.
   ```bash
   sudo usermod -aG group2 user3
   ```

---

#### **Task 4: Modify User Properties**
1. Change the home directory of `user1` to `/home/user1_new`.
   ```bash
   sudo usermod -d /home/user1_new user1
   ```
2. Change the login name of `user2` to `user2_new`.
   ```bash
   sudo usermod -l user2_new user2
   ```

---

#### **Task 5: Delete Users and Groups**
1. Delete `user3`.
   ```bash
   sudo userdel user3
   ```
2. Delete `group2`.
   ```bash
   sudo groupdel group2
   ```

---

### **Lab Deliverables**:
1. Take screenshots or copy the terminal output for each task.
2. Write a brief summary of what you learned during the lab.

---

### **Lab Questions**:
1. What is the difference between `useradd` and `adduser`?
2. How can you list all users on the system?
3. How can you check which groups a user belongs to?
4. What is the purpose of the `-aG` option in the `usermod` command?

---
