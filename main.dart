import 'dart:io';

class Note {
  String title;
  String content;

  Note({
    required this.title,
    required this.content,
  });

  @override
  String toString() => 'Title: $title\nContent:\n$content';
}

final List<Note> notes = [];

void clearConsole() {
  if (Platform.isWindows) {
    stdout.write('\x1B[2J\x1B[0;0H');
  } else {
    stdout.write('\x1B[2J\x1B[3J\x1B[H');
  }
}

void addNote() {
  print('\n--- New Note ---');
  stdout.write('Enter note title: ');
  final title = stdin.readLineSync()?.trim() ?? '';
  
  if (title.isEmpty) {
    print('Title cannot be empty. Note creation cancelled.');
    return;
  }

  stdout.write('Enter note content: ');
  final content = stdin.readLineSync()?.trim() ?? '';

  final note = Note(title: title, content: content);
  notes.add(note);
  print('✓ Note added successfully!\n');
}

void viewNotes(List<Note> list) {
  print('\n--- All Notes (${list.length}) ---');
  if (list.isEmpty) {
    print('No notes found. Press "A" to add one.\n');
    return;
  }

  for (var i = 0; i < list.length; i++) {
    print('[${i + 1}] ${list[i].title}');
    print('    ${list[i].content}');
    if (i < list.length - 1) print('---');
  }
  print('');
}

void deleteNote() {
  print('\n--- Delete Note ---');
  if (notes.isEmpty) {
    print('No notes to delete.\n');
    return;
  }

  for (var i = 0; i < notes.length; i++) {
    print('[${i + 1}] ${notes[i].title}');
  }

  stdout.write('Enter the number of the note to delete (or press Enter to cancel): ');
  final input = stdin.readLineSync()?.trim();

  if (input == null || input.isEmpty) {
    print('Deletion cancelled.\n');
    return;
  }

  final index = int.tryParse(input);
  if (index == null || index < 1 || index > notes.length) {
    print('Invalid selection. Deletion cancelled.\n');
    return;
  }

  final removed = notes.removeAt(index - 1);
  print('✓ Deleted note: "${removed.title}"\n');
}

void main() {
  clearConsole();
  print('''
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
''');

  while (true) {
    stdout.write('>> ');
    final command = stdin.readLineSync()?.trim().toUpperCase();

    switch (command) {
      case 'A':
        addNote();
        break;
      case 'V':
        viewNotes(notes);
        break;
      case 'D':
        deleteNote();
        break;
      case 'C':
        clearConsole();
        break;
      case 'H':
        print('''
Available Commands:
  A : Add a new note
  V : View all notes
  D : Delete a note by number
  C : Clear the console screen
  Q : Exit the program
''');
        break;
      case 'Q':
        print('Quitting the app. Goodbye!');
        exit(0);
      default:
        print('Invalid command. Press H for help.');
    }
  }
}