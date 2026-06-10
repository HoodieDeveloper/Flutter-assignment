// Assignment 4: Banking Upgrade

import 'dart:io';

class BankAccount {
  int accountNumber = 222;
  double balance = 100;
  String? userName;
  String? password;

  BankAccount(this.userName,this.password);
  List<String> history = [];

  void depositMoney() {
    stdout.write("Please enter money you want to add: ");
    String? input = stdin.readLineSync();

    int? add = int.tryParse(input ?? "");

    if (add != null && add > 0) {
      balance = balance + add;
      history.add("Deposit: \$${add}");
      print("Deposit successful!");
      print("Your deposit money is \$${add}");
    } else {
      print("Invalid amount");
    }
  }

  void withdrawMoney() {
    stdout.write("Please enter money you want to withdraw: ");
    String? input = stdin.readLineSync();

    int? remove = int.tryParse(input ?? "");

    if (remove != null && remove > 0) {
      if (remove <= balance) {
        balance = balance - remove;
        history.add("Withdraw: \$${remove}");
        print("Withdraw successful!");
        print("Your withdraw money is \$${remove}");
      } else {
        print("Not enough balance");
      }
    } else {
      print("Invalid amount");
    }
  }
}

class BankingUpgrade extends BankAccount {
  
  BankingUpgrade( String userName, String password):super(userName,password);

  void calculateInterest() {
    stdout.write("Enter interest rate (%): ");
    String? input = stdin.readLineSync();

    int? rate = int.tryParse(input ?? "");

    if (rate != null && rate > 0) {
      double interest = balance * rate / 100;
      balance = balance + interest;

      history.add("Interest added: \$${interest}");
      print("Interest added successfully!");
      print("Interest amount is \$${interest}");
    } 
    else {
      print("Invalid interest rate");
    }
  }

  void showTransactionHistory() {
    print("<<<<<< Transaction History >>>>>>");

    if (history.isEmpty) {
      print("No transaction yet");
    } 
    else {
      for (int i = 0; i < history.length; i++) {
        print("[${i + 1}] ${history[i]}");
      }
    }
  }

  void login() {
    bool choice = true;

    print("<<<<<< Welcome to Wife bank >>>>>>");
    print("Please enter user name and password to login");

    stdout.write("Username : ");
    String? name = stdin.readLineSync();

    stdout.write("Password : ");
    String? pass = stdin.readLineSync();

    if (name == userName && pass == password) {
      do {
        print("");
        print("<<<<<< Welcome back $userName >>>>>>");
        print("Your account number is $accountNumber");
        print("Your balance is \$$balance");
        print("Please choose one below to make transaction:");
        print("1. Deposit");
        print("2. Withdraw");
        print("3. Calculate Interest");
        print("4. Transaction History");
        print("5. Exit");

        stdout.write("Enter here : ");
        String? ch = stdin.readLineSync();

        if (ch == "1") {
          depositMoney();
        } else if (ch == "2") {
          withdrawMoney();
        } else if (ch == "3") {
          calculateInterest();
        } else if (ch == "4") {
          showTransactionHistory();
        } else if (ch == "5") {
          print("Thank you for using Wife bank");
          choice = false;
        } else {
          print("Invalid choice");
        }
      } while (choice);
    } else {
      print("Wrong username or password");
    }
  }
}

void main() {
  BankingUpgrade bank = BankingUpgrade("Sak","123");
  bank.login();
}