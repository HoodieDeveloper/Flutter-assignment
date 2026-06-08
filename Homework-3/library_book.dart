import 'dart:io';

void main() {
  bool ch = true;
  List<String> books= ['The last of us part 2',"Forza 6","Valorant"];
  
  //Add item 
  void addItem( List<String>books){
    stdout.write("Please enter book name : ");
    String? item = stdin.readLineSync();

    if(item !=null){
      books.add(item);
      print("Book add successfully\n");
    }
    else{
      print("Book add fail.\n");
    }
  }
  //Remove item
  void removeItem( List<String>books){
    stdout.write("Please enter book name : ");
    String? item = stdin.readLineSync();

    if(item !=null ){
      books.remove(item);
       print("Book remove successfully\n");
    }
      else{
      print("Book remove fail.\n");
    }

  }
  //View item
  void showItem(List<String>books){
    print("All book in library : \n");
   for (int i =0 ; i < books.length ; i++){
     stdout.write("[${i + 1}] ${books[i]}\n");
   }
   print("");
  }
//Search Item
  void searchItem(List<String>books){
    stdout.write("Please enter book name to search : ");
    String? item = stdin.readLineSync();

     if(item !=null){
      if(books.contains(item)){
        print("$item found in our library.\n");
      }
      else {
        print("$item is not found in our library.\n");
      }
    }

  }
//Count Item
  void countItem(List<String>books){
      print("So book that are in our library is ${books.length} books\n");

  }
//Main run program
  do {
    print("<<<<<<<<<< Welcome to our library system management system >>>>>>>>>");
    stdout.write("Please chose one to manage : \n");
    stdout.write("1. Add Book \n");
    stdout.write("2. Remove Book\n");
    stdout.write("3. View All Book\n");
    stdout.write("4. Search Book\n");
    stdout.write("5. Count Book\n");
    stdout.write("6. Exit\n");
    stdout.write("Please chose one : ");
    String? choice = stdin.readLineSync();
                    
    if(choice=="1"){
      addItem(books);
    }
    else if (choice=="2"){
      removeItem(books);
    }
    else if (choice=="3"){
      showItem(books);
    }
    else if (choice=="4"){
      searchItem(books);
    }
    else if (choice=="5"){
      countItem(books);
    }
    else {
      ch=false;
    }
  } while(ch);
}

 