// Task 6 + 7 : Bank account System

import 'dart:io';

class bankAccount{
  int accountNumber =222;
  int balance=100;
  String userName="Sak";
  String password="123";

   void depositMoney() {
    stdout.write("Please enter money you want to add: ");
    String? input = stdin.readLineSync();

    int? add = int.tryParse(input ?? "");

    if (add != null) {
      balance = balance + add;
      print("Deposit successful!");
      print("Your Deposit money is $add \$");
    } 
  }

  void withdrawMoney() {
    stdout.write("Please enter money you want to withdraw: ");
    String? input = stdin.readLineSync();

    int? remove = int.tryParse(input ?? "");

    if (remove != null) {
      if (remove <= balance) {
        balance = balance - remove;
        print("Withdraw successful!");
        print("So your Withdraw money is $remove \$");
      }
    }
}
}
class trancitonBank extends bankAccount{

    void login(){
    bool choice=true;
   
      print("<<<<<< Welcome to Wife bank  >>>>>>");
      print("Please enter user name and password to login");

      stdout.write("Username : ");
      String? Name = stdin.readLineSync();
      stdout.write("Password : ");
      String? pass = stdin.readLineSync();

      if(Name==userName && pass == password){
        do{
          print("");
          print("<<<<<< Welcome back ${userName} >>>>>>");
          print("Your account number is ${accountNumber}");
          print("Your balance is ${balance} \$");
          print("Please chose one belowe to make trancition : ");
          print("1. Deposit  ");
          print("2. Withdraw ");
          print("3. Exit ");
          stdout.write("Enter here : ");
          String? ch = stdin.readLineSync();
            if(ch=="1"){
            depositMoney();
            }
            else if(ch=="2"){
              withdrawMoney();
            }
            else {
              choice == false;
              break;
            }
    } while(choice);
  }
}
}

//Main Program
void main(){
  trancitonBank bank =trancitonBank();
  bank.login();
}