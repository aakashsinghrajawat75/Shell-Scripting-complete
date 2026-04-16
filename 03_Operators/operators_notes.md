# Complete Notes on Shell Scripting Operators

Operators are special symbols or keywords that are used to perform operations on variables and values. In shell scripting, operators help you compare data, perform math, check multiple conditions, and even test information about files. There are several categories of operators that you will commonly use.

Here is a human-friendly guide to all types of operators in Shell Scripting:

## 1. Integer Comparison Operators
These tools are used exclusively to compare two numerical values (integers).

* `-eq` or `==`  : Equal to (e.g., if A is equal to B)
* `-ne` or `!=`  : Not equal to
* `-gt`          : Greater than (e.g., if A is larger than B)
* `-ge`          : Greater than or equal to
* `-lt`          : Less than
* `-le`          : Less than or equal to

## 2. String Comparison Operators
When working with text (strings), use these symbols.

* `=`            : Equal to (Check if two strings are exactly the same)
* `!=`           : Not equal to
* `-z`           : Checks if a string is empty (Length is zero)
* `-n`           : Checks if a string is NOT empty (Length is non-zero)

## 3. Arithmetic Operators
These are your basic math operations.

* `+`            : Addition
* `-`            : Subtraction
* `*`            : Multiplication
* `/`            : Division
* `%`            : Modulus / Remainder (gives you what's left over after a division)
* `**`           : Exponentiation (Power, e.g., 2**3 gives 8)

*How to do math in shell scripting:*
- Using `expr`:   `value=$(expr 10 + 20)` (Notice the spaces around the plus sign)
- Using `let`:    `let sum=10+20` or `let a++`
- Using `(( ))`:  `(( sum = 10 + 20 ))` (This is the most modern and preferred way)

## 4. Logical Operators (Boolean)
These help you combine multiple conditions together to form complex logical decisions.

* `&&` or `-a`   : Logical AND (The result is TRUE only if ALL conditions are true)
* `||` or `-o`   : Logical OR  (The result is TRUE if ANY of the conditions is true)
* `!`            : Logical NOT (Reverses the condition; true becomes false, false becomes true)

*Syntax differences:*
- `&&` and `||` are used inside double square brackets: `[[ condition1 && condition2 ]]`
- `-a` and `-o` are used inside single square brackets: `[ condition1 -a condition2 ]`

## 5. File Test Operators
These operators are very powerful and are used to evaluate properties related to files and directories on your computer.

* `-e`           : Checks if a file or directory exists.
* `-f`           : Checks if it's a regular file (not a directory or device).
* `-d`           : Checks if it's a directory.
* `-s`           : Checks if the file is NOT empty (size is greater than 0).
* `-r`           : Checks if you have read permission for the file.
* `-w`           : Checks if you have write permission for the file.
* `-x`           : Checks if you have execute permission for the file.

## 6. Shortcut IF (Short-circuit Evaluation)
Instead of writing a full `if-then-else` block, you can use logical operators as a shortcut to execute a command conditionally.

*Format:*
`[[ condition ]] && execute_if_true || execute_if_false`

*Example:*
`[[ $age -ge 18 ]] && echo "Eligible to vote" || echo "Not eligible to vote"`

---
By understanding these operators, you can build scripts that can intelligently inspect data, crunch numbers, structure logic loops, and perform file safety checks before executing!

---

## Author

> **Aakash Kushwah**

> **GitHub: [aakashsinghrajawat75](https://github.com/aakashsinghrajawat75)**

---
