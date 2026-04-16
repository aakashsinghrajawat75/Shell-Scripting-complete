# Complete Notes on Shell Scripting Basics

When you're just starting out with Shell Scripting, there are a few fundamental commands and concepts you need to know. These allow you to print messages to the screen, take input from the user, and write notes to yourself within the code.

Here is a human-friendly guide to the absolute basics:

## 1. Printing Text to the Screen (Output)
To display a message or the result of a script on the user's screen, you mainly use `echo` or `printf`.

* **echo**: The simplest way to print a line of text. It automatically adds a new line at the end.
  ```bash
  echo "Hello, World!"
  ```

* **printf**: Gives you more formatting control, similar to the C programming language. It does *not* automatically add a new line at the end unless you tell it to with `\n`.
  ```bash
  printf "Hello!\nMy name is script.\n"
  ```

* **Handling Special Characters (like Newlines)**: 
  If you want to use special characters like `\n` (which means "start a new line") inside an `echo` command, you *must* use the `-e` flag. Otherwise, it will just literally print "\n".
  ```bash
  echo -e "Line one\nLine two"
  ```

## 2. Taking Input from the User
To make your scripts interactive, you need to read what the user types. You do this using the `read` command.

* **Basic input:**
  ```bash
  echo "Enter your name:"
  read name
  echo "Hello, $name"
  ```

* **Multiple inputs at once:**
  ```bash
  echo "Enter two numbers:"
  read num1 num2
  ```

* **The Shortcut (-p flag):**
  Instead of using `echo` to print a message and then `read` to get the input on the next line, you can combine them into a single line using the `-p` (prompt) flag.
  ```bash
  read -p "Enter your age: " age
  echo "You are $age years old."
  ```

## 3. Writing Comments
Comments are notes written in your code that the computer *completely ignores*. They are there only for human readability—to explain what a piece of code does or to temporarily disable parts of your script.

* **Single-line Comments:**
  Start the line (or put it after a command) with the `#` symbol.
  ```bash
  # This script calculates total memory
  echo "Calculating..." # Printing status
  ```

* **Multi-line Comments:**
  If you have a very long explanation, putting `#` on every line can be tedious. You can use block comments (also known as HereDocs) or a colon trick:

  *Method A (HereDoc style):*
  ```bash
  <<COMMENT
  This is a multi-line comment.
  Everything between the first 'COMMENT' and the
  last 'COMMENT' will be ignored by the shell.
  COMMENT
  ```

  *Method B (Colon Trick):*
  ```bash
  : ' This is another
  way to write a
  multi-line comment. '
  ```

---
By mastering how to display output (`echo`, `printf`), take input (`read`), and explain your code (`#`), you have the foundation to build interactive and well-documented scripts!

---

## Author

> **Aakash Kushwah**

> **GitHub: [aakashsinghrajawat75](https://github.com/aakashsinghrajawat75)**

---
