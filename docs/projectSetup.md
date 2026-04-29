# Project Setup for Free Pascal and Lazarus

While Free Pascal and Lazarus don't have a built-in "one-shot" scaffolding tool like npm init or cargo new natively in the base compiler, you have two excellent options to achieve this in VS Code.

## 1. FreePascal Toolkit Extension (Recommended) [1]

Since you are already using the FreePascal Toolkit, you have access to a built-in project generator that handles variable substitution (like project name and date). [2]

* How to use it: Press Ctrl+Shift+P and type "FpcToolkit: Create New Project".
* What it does: It allows you to select from templates (Console, GUI, etc.) and automatically creates the folder structure, including pre-configured tasks.json and launch.json files. [2]

## 2. lazcli (The CLI Way)

If you prefer a true command-line "scaffolder" similar to other modern languages, you can use lazcli. This is a third-party tool designed specifically for this purpose. [3]

* Create Console App: lazcli -n MyProject -C -d C:\Projects\MyProject.
* Create GUI App: lazcli -n MyProject -A -d C:\Projects\MyProject.
* Why it's useful: It creates the directory, the .lpi project file, the .lpr source, and even a default form if you ask for it. [3, 4]

## 3. Custom "Project Prep" Task

You can also add a specialized task to your tasks.json that manually creates your preferred directory structure (bin/, lib/, etc.) using standard shell commands. This is essentially your own "scaffolding" script.

{
    "label": "Initialize Project Folders",
    "type": "shell",
    "command": "mkdir",
    "args": [
        "bin", "lib", "src" // Creates these folders in one go
    ],
    "presentation": {
        "reveal": "silent", // Don't pop up the terminal if it works
        "close": true
    }

Summary of your "Toolkit":

* VS Code Command: Best for a GUI-driven setup with pre-made templates.
* lazcli: Best for a command-line experience that mirrors tools like npm.
* Custom Task: Best for quickly preparing those bin/ and lib/ folders in existing projects. [2, 3]

Do you want to try setting up lazcli to manage your chapter projects for the "Modern Pascal" series?

[1] [https://marketplace.visualstudio.com](https://marketplace.visualstudio.com/items?itemName=coolchyni.fpctoolkit)
[2] [https://marketplace.visualstudio.com](https://marketplace.visualstudio.com/items?itemName=coolchyni.fpctoolkit)
[3] [https://wiki.pcw.de](https://wiki.pcw.de/tutorials/lazarus/lazcli)
[4] [https://www.youtube.com](https://www.youtube.com/watch?v=XgwV9HM0T54&t=10)
