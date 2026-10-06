import 'dart:io';

void main() {
  print('''
Welcome To CLI Notes App!
Press H for help or Q to quit.
''');

  while (true) {
    stdout.write('>> ');
    String? command = stdin.readLineSync();
    if(command != null) {
      command = command.toUpperCase();
      switch(command) {
        case 'H':
          print('''
Help: This is a simple CLI Notes App. You can add, view, and delete notes.
Commands:-
A - Add a new note
V - View all notes
D - Delete a note
''');
        
          break;
          case 'Q':
            print('Quitting the app. Goodbye!');
            exit(0);
          default:
            print('Invalid command. Please try again.');
        }
      }
    }
  }
