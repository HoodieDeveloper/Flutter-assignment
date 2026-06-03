import 'dart:io';

void main() {
  print("<=== Please Enter Your name and password to login ===>");
  stdout.write('Enter your name: ');
  String? name = stdin.readLineSync();
 
  stdout.write('Enter your password: ');
  String? password = stdin.readLineSync();

  if (name == "Sak" && password == "123456") {
    stdout.write('Login successful');
  } else {
    stdout.write('Invalid credentials');
  }
}

