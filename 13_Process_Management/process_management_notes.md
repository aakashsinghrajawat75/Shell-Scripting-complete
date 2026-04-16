# Notes on Process Management

Sometimes your scripts need to kick off long-running tasks but shouldn't be blocked waiting for them to finish.

## 1. Running in the Background (`&`)
Just put an ampersand (`&`) at the end of a command to spawn it in the background. Your script will instantly move to the next line.

## 2. Getting the Process ID (`$!`)
To keep track of that background task (maybe you need to kill it later), you can capture its ID right after launching it.
`PID=$!`

## 3. Waiting for tasks (`wait`)
If you spawned multiple background tasks (like background downloads) and want to wait until they are ALL finished before proceeding, simply use the `wait` command.

---

## Author

> **Aakash Kushwah**

> **GitHub: [aakashsinghrajawat75](https://github.com/aakashsinghrajawat75)**

---
