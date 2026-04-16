# Shell Scripting - Complete Learning Guide

A well-structured collection of Shell Scripting scripts — from basics to advanced topics — with hands-on examples and detailed notes.

** Note:** *Every single folder contains a dedicated `_notes.txt` file which explains the core concepts found in that folder using simple, easy-to-understand human language!*

---

## Folder Structure

```text
Shell-Scripting/
├── 01_Basics/              # echo, comments, input/output
├── 02_Variables/           # variables, constants, unset
├── 03_Operators/           # arithmetic, logical, expr
├── 04_Strings/             # string operations
├── 05_Conditionals/        # if, if-else, elif, switch-case
├── 06_Loops/               # for, while, until, infinite
├── 07_Arrays/              # indexed & key-value arrays
├── 08_Functions/           # function creation, passing arguments
├── 09_File_Handling/       # writing, appending, reading line-by-line
├── 10_CLI_Arguments/       # positional params, script inputs
├── 11_Regex_and_Filters/   # grep, awk for text processing
├── 12_Error_Handling/      # exit statuses, checking condition success
└── 13_Process_Management/  # background jobs, pids, wait
```

---

## Topics Covered

### 01 - Basics
*Contains `basics_notes.txt` guide.*
| File | Description |
|------|-------------|
| `01_echo.sh` | Hello World & basic output |
| `02_read_input.sh` | Reading user input |
| `03_comments.sh` | Single-line comments |
| `04_comments_advanced.sh` | Multi-line comments |
| `05_taking_input.sh` | Input from user (advanced) |
| `06_newline_char.sh` | Newline characters |

### 02 - Variables
*Contains `variables_notes.txt` guide.*
| File | Description |
|------|-------------|
| `01_variables_basics.sh` | Variable declaration & usage |
| `02_unset_variable.sh` | Unsetting variables |
| `03_assign_command.sh` | Assign command output to variable |
| `04_variables_advanced.sh` | Command substitution |
| `05_constant_variable.sh` | Readonly / constant variables |

### 03 - Operators
*Contains `operators_notes.txt` guide.*
| File | Description |
|------|-------------|
| `01_expr_command.sh` | Arithmetic using `expr` |
| `02_operators_intro.sh` | Introduction to operators |
| `03_arithmetic_operations.sh` | +, -, *, /, % operations |
| `04_logical_operators.sh` | AND, OR, NOT |
| `05_shortcut_if.sh` | Ternary-style conditions |

### 04 - Strings
*Contains `string_notes.txt` guide.*
| File | Description |
|------|-------------|
| `01_string_basics.sh` | String declaration & printing |
| `02_string_operations.sh` | Length, substring, concatenation |

### 05 - Conditionals
*Contains `conditional_notes.txt` guide.*
| File | Description |
|------|-------------|
| `01_if_statement.sh` | Basic if |
| `02_if_else.sh` | if-else |
| `03_if_elif_else.sh` | if-elif-else chain |
| `04_nested_if_else.sh` | Nested conditionals |
| `05_switch_case.sh` | case/esac statement |

### 06 - Loops
*Contains `loops_notes.txt` guide.*
| File | Description |
|------|-------------|
| `01_for_loop.sh` | for loop |
| `02_while_loop.sh` | while loop |
| `03_until_loop.sh` | until loop |
| `04_infinite_loop.sh` | infinite loop with break |

### 07 - Arrays
*Contains `arrays_notes.txt` guide.*
| File | Description |
|------|-------------|
| `01_arrays_basics.sh` | Indexed arrays |
| `02_key_value_array.sh` | Associative (key-value) arrays |

### 08 - Functions
*Contains `functions_notes.txt` guide.*
| File | Description |
|------|-------------|
| `01_basic_functions.sh` | Basic function declaration |
| `02_passing_arguments.sh` | Passing arguments correctly |

### 09 - File Handling
*Contains `file_handling_notes.txt` guide.*
| File | Description |
|------|-------------|
| `01_writing_to_file.sh` | Writing vs Appending (> vs >>) |
| `02_reading_a_file.sh` | While read line loop |

### 10 - CLI Arguments
*Contains `cli_arguments_notes.txt` guide.*
| File | Description |
|------|-------------|
| `01_positional_parameters.sh` | Handling $1, $2, $# parameters |

### 11 - Regex and Filters
*Contains `regex_filters_notes.txt` guide.*
| File | Description |
|------|-------------|
| `01_grep_and_awk.sh` | Text processing with grep & awk |

### 12 - Error Handling
*Contains `error_handling_notes.txt` guide.*
| File | Description |
|------|-------------|
| `01_exit_status.sh` | Managing $? exit statuses safely |

### 13 - Process Management
*Contains `process_management_notes.txt` guide.*
| File | Description |
|------|-------------|
| `01_background_jobs.sh` | & processes and retrieving PIDs |

---

## How to Run

```bash
# Give execute permission
chmod +x script_name.sh

# Run the script
./script_name.sh

# OR run directly with bash
bash script_name.sh
```

---

## Requirements

- Linux / macOS terminal
- Bash shell (`/bin/bash`)
- No external dependencies needed

---

## Author

> **Aakash Kushwah**

> **GitHub: [aakashsinghrajawat75](https://github.com/aakashsinghrajawat75)**

---
