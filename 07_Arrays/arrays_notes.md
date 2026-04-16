# Complete Notes on Shell Scripting Arrays

Arrays are like special storage boxes that can hold multiple items at once under a single name. Instead of creating five different variables to hold five names, you just create one array.

Here is your simple, human-friendly guide to working with Arrays in Shell Scripting:

## 1. Creating and Accessing a Basic Array
In Shell scripting, arrays can hold different types of data (numbers, strings, floats) right next to each other. Values are separated by spaces, NOT commas.

* **Creating an Array:**
  ```bash
  my_array=( 10 "Apple" 30.5 "Banana" 50 )
  ```

* **Accessing a single item:**
  Arrays are "zero-indexed", meaning the first item is at position 0.
  ```bash
  echo "${my_array[0]}"   # Output: 10
  echo "${my_array[1]}"   # Output: Apple
  ```

* **Accessing EVERY item at once:**
  Use the `@` or `*` symbol inside the brackets.
  ```bash
  echo "${my_array[@]}"   # Output: 10 Apple 30.5 Banana 50
  ```

## 2. Finding the Length of an Array
If you want to know how many total items are stored in your array, add the `#` symbol before the array's name.

```bash
echo "Total items: ${#my_array[@]}"   # Output: Total items: 5
```

## 3. Slicing an Array
Slicing means extracting a specific chunk of the array, rather than grabbing just one item or the whole thing.

* **Syntax:** `${array_name[@]:start_position:how_many_items}`
* **Examples:**
  ```bash
  # Give me 3 items, starting from position 1
  echo "${my_array[@]:1:3}"    # Output: Apple 30.5 Banana
  
  # Give me everything from position 2 to the absolute end
  echo "${my_array[@]:2}"      # Output: 30.5 Banana 50
  ```

## 4. Updating an Array (Adding items)
You can easily tack on new items to the very end of an existing array by using the `+=` operator.

```bash
my_array+=( "Orange" 100 )
echo "${my_array[@]}"    
# New Output: 10 Apple 30.5 Banana 50 Orange 100
```

## 5. Key-Value Arrays (Associative Arrays)
Standard arrays use numbers (0, 1, 2) as positions. "Associative Arrays" allow you to use text labels (keys) instead of numbers! These are like 'Dictionaries' in Python or 'Objects' in JavaScript.

* **Important:** You *must* formally declare associative arrays first using `declare -A` before using them.
* **Creating and Accessing:**
  ```bash
  # 1. Declare it
  declare -A person
  
  # 2. Add the key-value pairs
  person=( ["name"]="Aakash" ["age"]=21 ["city"]="Jaipur" )
  
  # 3. Access data using the text key!
  echo "Name is: ${person[name]}"  # Output: Name is: Aakash
  echo "Age is: ${person[age]}"    # Output: Age is: 21
  ```

---
Arrays are incredibly useful when dealing with lists of folders, lines from files, or complex grouped data!

---

## Author

> **Aakash Kushwah**

> **GitHub: [aakashsinghrajawat75](https://github.com/aakashsinghrajawat75)**

---
