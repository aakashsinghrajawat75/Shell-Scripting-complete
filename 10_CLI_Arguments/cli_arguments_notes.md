# Notes on Command Line Arguments

When you run a script, you can easily pass data to it right from the terminal (e.g., `./script.sh apple banana`).

Here's how you access that data inside the script:
* `$0` : The name of the script itself (e.g., `script.sh`)
* `$1`, `$2`, `$3` : The first, second, and third arguments passed.
* `$#` : The total number of arguments passed (useful for checking if the user provided enough info).
* `$@` : Gives you ALL the arguments combined as a single list.

## Scenario
If I run: `./deploy.sh production update`
* `$1` is `production`
* `$2` is `update`
* `$#` is `2`

---

## Author

> **Aakash Kushwah**

> **GitHub: [aakashsinghrajawat75](https://github.com/aakashsinghrajawat75)**

---
