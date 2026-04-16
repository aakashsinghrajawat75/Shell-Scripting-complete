# Notes on Regex and Text Filters

Unix comes with powerful built-in mini-languages specifically for text processing. You can pipeline (`|`) output to these.

## 1. Grep (Searching text)
`grep` extracts lines that match a specific pattern or word.
* `grep "Error" log.txt` - Finds all lines with "Error"
* `grep -i "error" log.txt` - Case insensitive search
* `grep -v "Warning" log.txt` - Finds lines that DO NOT have "Warning"

## 2. Awk (Column processing)
`awk` is incredible for dealing with structured data like CSVs or log files separated by spaces.
* `awk '{print $1}' info.txt` - Prints only the 1st word/column of every line.
* `awk -F"," '{print $2}' info.csv` - Uses a comma as a separator and prints the 2nd column.

## 3. Sed (Stream editing)
`sed` is often used for Find and Replace operations on entirely files.
* `sed 's/apple/orange/g' fruits.txt` - Replaces every instance of "apple" with "orange".


---

## Author

> **Aakash Kushwah**

> **GitHub: [aakashsinghrajawat75](https://github.com/aakashsinghrajawat75)**

---
