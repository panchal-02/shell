# Day 16 – Array Operations in Bash

This script is part of **Day-16** of my Bash scripting learning journey.  
The focus of this exercise is to understand **arrays in Bash**, why they are needed, and how they behave differently from normal variables.

---

## 📌 What This Script Does

- Demonstrates the difference between **normal variables** and **arrays**
- Shows how Bash splits words in normal variables
- Uses arrays to safely store values with spaces
- Loops through array elements
- Accesses array elements using index
- Takes user input directly into an array
- Performs arithmetic operations using array values

---

## 🧠 Why Arrays Are Important

In Bash:
- Normal variables split values by spaces
- Arrays allow storing **multiple values safely**
- Arrays are essential for:
  - Loops
  - Monitoring scripts
  - Automation
  - Handling user input

---

## 🛠 Concepts Covered

- Normal variable vs array
- Declaring arrays
- Looping through arrays
- Accessing array elements by index
- `"${array[@]}"` usage
- Reading input into an array using `read -a`
- Basic arithmetic using array values

---

## 📄 Script Explanation

### 🔹 Normal Variable Behavior
```bash
name="iron man spider man"
for i in $name; do
    echo "$i"
done

