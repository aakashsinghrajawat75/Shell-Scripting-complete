# Complete Notes on Shell Scripting Loops

Loops allow you to run the exact same block of code multiple times without rewriting it. They are fantastic for processing lists of files, reading data line-byline, or simply repeating a task until a condition changes.

Here is a simple, human-friendly guide to all the loop structures in Shell Scripting:

## 1. The FOR Loop (Iterating over lists)
The `for` loop is generally used when you know exactly how many times you want to run the loop (e.g., iterating through a specific list of items or range of numbers).

* **Looping through a basic list:**
  ```bash
  for fruit in Apple Banana Cherry; do
      echo "I like $fruit"
  done
  ```
* **Looping through a number range (`{start..end}`):**
  ```bash
  for i in {1..5}; do
      echo "Counting: $i"
  done
  ```
* **The "C-Style" For Loop:**
  If you prefer traditional programming syntax (initialize; condition; increment).
  ```bash
  for ((x = 1; x <= 5; x++)); do
      echo "Value: $x"
  done
  ```
* **Practical Uses:**
  You can loop through the lines of a file using `$(cat file.txt)`, outputs of a command like `$(ls folder/)`, or elements in an array using `"${arr[@]}"`.

## 2. The WHILE Loop (Run *while* TRUE)
The `while` loop checks a condition first. If the condition is TRUE, it runs. It keeps repeating until the condition eventually becomes FALSE.

* **Basic counter example:**
  ```bash
  count=1
  while [ $count -le 5 ]; do
      echo "Number is $count"
      ((count++))  # Don't forget to increment, or it runs forever!
  done
  ```
* **Reading a file line-by-line (Very common!):**
  This is the safest and cleanest way to read files.
  ```bash
  while read line; do
      echo "File says: $line"
  done < "/path/to/my/file.txt"
  ```
* **Reading a CSV file:**
  By setting the Internal Field Separator (`IFS`) to a comma, you can cleanly parse a CSV file.
  ```bash
  while IFS="," read id name salary; do
      echo "Employee $name makes $salary"
  done < "employees.csv"
  ```

## 3. The UNTIL Loop (Run *while* FALSE)
The `until` loop is the exact opposite of the `while` loop. It runs its block of code *until* the condition becomes TRUE (meaning it executes as long as the condition evaluates to FALSE). 

* **Basic counter example:**
  ```bash
  num=1
  # This reads as: "Run this code UNTIL 'num' is greater than 5"
  until [ $num -gt 5 ]; do
      echo "Number: $num"
      ((num++))
  done
  ```

## 4. Infinite Loops
Sometimes you want a script to run forever in the background (like a monitoring service) until you manually kill it (Ctrl+C). 
*(Note: Always use `sleep` inside an infinite loop so you don't crash your computer's CPU!)*

* **Infinite While Loop:**
  ```bash
  while true; do
      echo "Still running..."
      sleep 2  # Pause for 2 seconds
  done
  ```
* **Infinite For Loop:**
  ```bash
  for (( ;; )); do
      echo "Also still running..."
      sleep 2
  done
  ```

---
By understanding these loops, your shell scripts can start automating massive, repetitive tasks completely hands-free!
