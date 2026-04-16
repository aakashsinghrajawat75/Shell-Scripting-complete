# Complete Notes on Shell Scripting Conditionals

Conditionals are the "decision-makers" in your scripts. They allow your program to be smart—to look at data and say, "If this is true, do action A; otherwise, do action B."

Here is a simple, human-friendly guide to all the conditional statements in Shell Scripting:

## 1. The Simple IF Statement
This is the most basic decision. You only care about doing something if a specific condition is TRUE. If it's false, the script just moves on and does nothing.

* **Syntax:**
  ```bash
  if [ condition ]
  then
      # Code to run if true
  fi
  ```
  *(Note: You must close every `if` block with `fi`—which is just "if" spelled backwards!)*

* **Example:**
  ```bash
  num=10
  if [ $num -eq 10 ]; then
      echo "The number is exactly 10!"
  fi
  ```

## 2. The IF-ELSE Statement (Fork in the Road)
This is for when there are exactly two possibilities. If the condition is true, do one thing. If it is false, do something else.

* **Syntax:**
  ```bash
  if [ condition ]
  then
      # Code to run if true
  else
      # Code to run if false
  fi
  ```

* **Example:**
  ```bash
  marks=45
  if [ $marks -gt 50 ]; then
      echo "You passed!"
  else
      echo "You failed."
  fi
  ```

* **The Shortcut:**
  You can do a quick one-line IF-ELSE using logical operators (`&&` for "then" and `||` for "else"):
  `[[ $age -ge 18 ]] && echo "Can vote" || echo "Cannot vote"`

## 3. The IF-ELIF-ELSE Statement (Multiple Choices)
Use this when you have more than two possibilities. "Elif" stands for "Else If". The script will check conditions one by one from top to bottom. The moment it finds a TRUE condition, it executes that block and skips the rest.

* **Syntax & Example:**
  ```bash
  if [ $marks -ge 85 ]; then
      echo "Grade: A"
  elif [ $marks -ge 70 ]; then
      echo "Grade: B"
  elif [ $marks -ge 45 ]; then
      echo "Grade: C"
  else
      echo "Grade: Fail"   # Executed if ALL above are false
  fi
  ```

## 4. Nested IF-ELSE Statements
Sometimes, a decision depends on another decision. You can put an `if` block completely inside another `if` block.

* **Example:**
  Imagine checking both Age AND Country to vote.
  ```bash
  if [ $age -ge 18 ]; then
      
      if [ "$country" == "India" ]; then
          echo "Eligible to vote!"
      else
          echo "You are 18+, but not an Indian citizen."
      fi

  else
      echo "You are too young to vote."
  fi
  ```

## 5. The SWITCH CASE Statement
If you are repeatedly checking the exact same variable against many different possible values (like a menu system), `if-elif-else` gets messy. The `case` statement is much cleaner.

* **Syntax:**
  ```bash
  case $variable in
      pattern1)
          # Code for pattern 1
          ;;
      pattern2)
          # Code for pattern 2
          ;;
      *)
          # Default code if absolutely nothing matches
          ;;
  esac
  ```
  *(Note: Every block ends with a double semicolon `;;` and the whole statement is closed with `esac`—"case" backwards!)*

* **Example (A simple menu):**
  ```bash
  read -p "Press 1 for Date, 2 for Files: " choice
  case $choice in
      1) date ;;
      2) ls *.sh ;;
      *) echo "Invalid Choice!" ;;
  esac
  ```

---
Conditionals are what make your scripts intelligent. By mastering `if`, `else`, `elif`, and `case`, your scripts can handle any situation intelligently!

---

## Author

> **Aakash Kushwah**

> **GitHub: [aakashsinghrajawat75](https://github.com/aakashsinghrajawat75)**

---
