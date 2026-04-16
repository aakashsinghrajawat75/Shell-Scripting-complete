# Complete Notes on Shell Scripting Strings

Strings are simply sequences of characters (like words, sentences, or paragraphs) treated as text. Shell scripting gives you some surprisingly powerful tools to manipulate text directly within your variables.

Here is a simple, human-friendly guide to working with strings:

## 1. Finding the Length of a String
Sometimes you need to know how many characters are inside a string. You can do this using standard syntax or the `expr` tool.

* **Modern way (Preferred):** Use the `#` symbol inside the curly braces.
  ```bash
  str="Hello World"
  echo "Length is: ${#str}"    # Output: 11
  ```
* **Using `expr`:**
  ```bash
  len=$(expr length "$str")
  echo "Length is: $len"
  ```

## 2. Converting to UPPERCASE or lowercase
You can change the capitalization of the text stored in a variable directly as you call it!

* **To UPPERCASE (`^^`):**
  ```bash
  str="hello world"
  echo "${str^^}"      # Output: HELLO WORLD
  ```
* **To lowercase (`,,`):**
  ```bash
  str="HELLO WORLD"
  echo "${str,,}"      # Output: hello world
  ```

## 3. String Replacement (Find and Replace)
If you want to swap out a word within a string for another word, use a forward slash `/` syntax.

* **Format:** `${variable/old_word/new_word}`
* **Example:**
  ```bash
  str="Hello, I am Aakash"
  replace="${str/Hello/Hi}"
  echo "$replace"      # Output: Hi, I am Aakash
  ```

## 4. String Slicing (Getting a Substring)
Slicing means cutting out a specific piece of a string.

* **Modern way (Preferred):** Use a colon `:` followed by the starting position (0-indexed). Uniquely in Bash, if you only provide the start, it goes to the end. You can also specify an optional length.
  ```bash
  str="Hello, I am Aakash"
  
  # Give me everything from position 12 onwards
  echo "${str:12}"     # Output: Aakash
  ```
* **Using `expr substr`:** Note that `expr substr` is 1-indexed (position 1 is the first letter) and requires both a start and a length to cut.
  ```bash
  # Give me 8 characters starting at position 13
  sub_str=$(expr substr "$str" 13 8)
  echo "$sub_str"      # Output: Aakash
  ```

## 5. String Comparison
You can check if two strings are exactly identical using an `if` statement with the `=` operator.
*(Remember passing strings surrounded by double quotes inside the brackets prevents bugs!)*

```bash
str1="Apple"
str2="Apple"

if [ "$str1" = "$str2" ]; then
  echo "The strings are exactly the same!"
else
  echo "The strings are different."
fi
```

---
Text manipulation is a massive part of shell scripting. By knowing how to check lengths, swap capitalization, slice substrings, and replace phrases, you can handle almost any log file or text processing task!

---

## Author

> **Aakash Kushwah**

> **GitHub: [aakashsinghrajawat75](https://github.com/aakashsinghrajawat75)**

---
