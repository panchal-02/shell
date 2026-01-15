# Day 02 – Input Validation with Conditionals in Bash

This script is part of **Day 02** of my shell scripting learning journey.

The focus of this exercise was to understand how **conditional logic (`if / elif / else`)** works in Bash and how scripts behave differently based on user input.

---

## 📌 What This Script Does

The script:
- Accepts user input for name, gender, age, and height
- Uses conditional statements to classify age
- Uses conditional logic to evaluate height based on gender
- Demonstrates decision-making in Bash scripts
- Shows how script flow changes based on input values

---

## 🛠 Concepts Covered

- Reading user input using `read -p`
- Using `if`, `elif`, and `else` statements
- Numeric comparisons using `(( ))`
- String comparisons using `[[ ]]`
- Nested conditional logic
- Sequential execution using `sleep`

---

## 🧠 Logic Overview

### Age Classification
- Age ≤ 18 → Child  
- Age between 19 and 49 → Young  
- Age ≥ 50 → Old  

### Height Classification
- Male:
  - Height > 100 cm → Tall
  - Otherwise → Short
- Female:
  - Height > 90 cm → Tall
  - Otherwise → Short

---

## ▶️ How to Run the Script

Make the script executable:
```bash
chmod +x condition.sh
# Day 02 – Input Validation with Conditionals

This is **Day 02** of my shell scripting learning journey.

On this day, I focused on **conditional logic and input validation** in Bash to make scripts more reliable and closer to real-world usage.

---

## 📌 What This Script Covers

- Taking user input using `read`
- Using conditional statements (`if`, `elif`, `else`)
- Performing numeric comparisons with `(( ))`
- Performing string comparisons with `[[ ]]`
- Handling different execution paths based on input
- Structuring readable and maintainable Bash scripts

---

## 🛠 Script Overview

The script performs the following:

1. Accepts user details (name, gender, age, height)
2. Classifies age into categories using conditional logic
3. Evaluates height based on gender using nested conditions
4. Prints results based on validated inputs
5. Demonstrates separation of numeric and string logic in Bash

---

## ▶️ How to Run the Script

Make the script executable:
```bash
chmod +x condition.sh

