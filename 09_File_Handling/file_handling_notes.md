# Complete Notes on Shell Scripting File Handling

Reading from and writing to files is an absolute necessity for any script that processes data or logs events.

## 1. Writing to a File
You use redirection operators (`>` and `>>`) to send output into a file instead of the screen.

* **Overwrite (`>`):** Erases everything currently in the file and puts new data in.
  `echo "Hello" > file.txt`
* **Append (`>>`):** Adds the new data to the very bottom of the file without erasing what's already there.
  `echo "World" >> file.txt`

## 2. Reading from a File
The safest and most reliable way to read a file in Bash is using a `while read` loop.
```bash
while read line; do
    echo "File says: $line"
done < "file.txt"
```
*(This feeds the file directly into the loop, allowing you to process it line-by-line)*


---

## Author

> **Aakash Kushwah**

> **GitHub: [aakashsinghrajawat75](https://github.com/aakashsinghrajawat75)**

---
