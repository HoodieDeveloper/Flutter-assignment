import 'dart:io';

void main() {
  bool ch = true;
  List<String> f1 = ['Mercedes', 'RedBull', 'Ferrari'];

  void addItem(List<String> f1) {
    stdout.write("Please enter name to add item : ");
    String? item = stdin.readLineSync();

    if (item != null && item.isNotEmpty){
      f1.add(item);
    }
  }

  void removeItem(List<String> f1) {
    stdout.write("Please enter name to remove item : ");
    String? item = stdin.readLineSync();
    if (item != null && f1.contains(item)){
      f1.remove(item);
    }
  }

  void showItem(List<String> f1){
    stdout.write("\nYour items:\n");

    for (int i = 0; i < f1.length; i++) {
      stdout.write("[${i + 1}] ${f1[i]}\n");
    }
    print("");
  }
  do {
    stdout.write("Please chose number to make action\n");
    stdout.write("1. Add items.\n");
    stdout.write("2. Remove items.\n");
    stdout.write("3. Show items.\n");
    stdout.write("4. Exit \n");
    stdout.write("Enter your choice : ");
    String? choice = stdin.readLineSync();


    if (choice == '1') {
        addItem(f1);
    }
    else if (choice == '2') {
        removeItem(f1);
    }
    else if (choice == '3') {
      showItem(f1);
    }
    else {
      ch =false;
    }
  }while (ch);
}