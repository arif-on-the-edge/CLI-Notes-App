# CLI Notes App

A lightweight, interactive command-line interface (CLI) notes manager built with Dart. It provides a clean terminal interface to quickly capture, list, and delete notes during your workflow.

---

## Features

- **Interactive Command Loop**: Quick single-character commands (`A`, `V`, `D`, etc.) for seamless interaction.
- **Add Notes**: Create notes with custom titles and body content with built-in empty title validation.
- **View Notes**: Displays all stored notes indexed for easy reference.
- **Delete Notes**: Select notes by index number with cancellation and boundary checking.
- **Cross-Platform Screen Clearing**: Uses ANSI escape sequences compatible with Windows, macOS, and Linux terminals.

---

## Prerequisites

Ensure you have the Dart SDK installed:

- Check your Dart installation:
  ```bash
  dart --version
  ```
- If you don't have Dart installed, download it from [dart.dev](https://dart.dev/get-dart).

---

## Project Structure

```text
cli-notes-app/
├── bin/
│   └── notes.dart    # Main application logic
├── pubspec.yaml      # Dart package configuration
└── README.md         # Project documentation
```

---

## Getting Started

### 1. Clone or Download the Repository

```bash
git clone https://github.com/your-username/cli-notes-app.git
cd cli-notes-app
```

### 2. Run the App

Execute the app directly using the Dart runtime:

```bash
dart main.dart
```

---

## Usage & Commands

Once launched, the interactive prompt (`>>`) accepts the following commands:

| Command | Action | Description |
| :---: | :--- | :--- |
| `A` | **Add** | Prompts for a title and content to create a new note. |
| `V` | **View** | Displays all currently saved notes. |
| `D` | **Delete** | Lists notes with indices and prompts for a note number to delete. |
| `C` | **Clear** | Clears the terminal screen. |
| `H` | **Help** | Prints the list of available commands. |
| `Q` | **Quit** | Exits the application. |

---

## Example Session

```text
=============================
   Welcome To CLI Notes!   
=============================
Commands:
  A - Add a new note
  V - View all notes
  D - Delete a note
  H - Help
  C - Clear screen
  Q - Quit

>> A

--- New Note ---
Enter note title: Meeting Notes
Enter note content: Discuss project roadmap at 2 PM.
✓ Note added successfully!

>> V

--- All Notes (1) ---
[1] Meeting Notes
    Discuss project roadmap at 2 PM.

>> Q
Quitting the app. Goodbye!
```

---
