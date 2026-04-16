# Complete Notes on Shell Scripting Variables

Variables are like containers or storage boxes that hold data for your script to use later. Instead of repeating a value multiple times, you save it in a variable and just use the variable's name.

Here is a simple, human-friendly guide to working with variables in a shell script:

## 1. Creating and Using Variables (The Basics)
In shell scripting, you don't need to specify if a variable will hold a number, text, or a boolean (true/false); the shell figures it out automatically!

*How to create them:*
```bash
int_var=1           # Integer
str_var="Aakash"    # String (Text)
float_var=7.7       # Float (Decimal)
bool_var=true       # Boolean
```
*(Important: Do NOT put spaces around the `=` sign. `name="John"` is correct; `name = "John"` will cause an error.)*

*How to use them:*
To read the value stored inside a variable, you place a dollar sign (`$`) in front of its name.
```bash
echo "My name is $str_var"
```

## 2. Double Quotes vs. Single Quotes
When you want to print a string with a variable inside, the type of quotes you use matters!

* **Double Quotes (`" "`):** The shell looks inside and replaces the variable name with its actual value.
  `echo "Name: $name"`  -> Prints: `Name: Aakash`
* **Single Quotes (`' '`):** The shell treats everything literally. It will ignore the dollar sign and NOT replace the variable.
  `echo 'Name: $name'`  -> Prints: `Name: $name`

## 3. Changing a Variable's Value
Variables are "variable"—meaning their contents can change! You can just assign a new value to an existing variable name whenever you want.
```bash
age=20
echo "Age is $age"   # Output: Age is 20
age=21               # Value is updated
echo "Age is $age"   # Output: Age is 21
```

## 4. Storing the Output of a Command
Sometimes you want a variable to hold the result of a system command (like the current date, or the machine's name). You do this using `$( ... )`.
```bash
current_date=$(date)
machine_name=$(hostname)

echo "Today's date is: $current_date"
echo "My computer is named: $machine_name"
```
*(This is called Command Substitution. The shell runs the command inside the parentheses first, then saves its output into the variable.)*

## 5. Deleting a Variable (Unset)
If you no longer need a variable and want to completely wipe it from memory, you use the `unset` keyword.
```bash
name="Aakash"
unset name
# Now 'name' is empty! You can also unset multiple at once:
unset name age
```

## 6. Constant / Read-Only Variables
If there is a value that absolutely should NOT change during the execution of your script (like a configuration path or a city name), you can lock it making it "Read-Only".
```bash
readonly city="Jaipur"
```
If anyone (including yourself) tries to change `city` later in the script (e.g., `city="Delhi"`), the script will throw an explicit error because the variable is completely locked!

---
Variables are the foundation of making your scripts dynamic and reusable!
