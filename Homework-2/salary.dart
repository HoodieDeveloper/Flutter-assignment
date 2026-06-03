import 'dart:io';

void main() {
  print("===== Employee Management System =====");

  double exchangeRate = 4021; // 1 USD = 4021 Riel

  stdout.write("Enter number of employees: ");
  int numberOfEmployees = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= numberOfEmployees; i++) {
    print("\nEmployee $i");

    stdout.write("Enter Employee ID: ");
    String empId = stdin.readLineSync()!;

    stdout.write("Enter Employee Name: ");
    String empName = stdin.readLineSync()!;

    print("\nChoose Currency:");
    print("1. Riel");
    print("2. Dollar");
    stdout.write("Enter your choice: ");
    int currencyChoice = int.parse(stdin.readLineSync()!);

    stdout.write("Enter Hours: ");
    double hours = double.parse(stdin.readLineSync()!);

    stdout.write("Enter Rate per Hour: ");
    double ratePerHour = double.parse(stdin.readLineSync()!);

    double total = hours * ratePerHour;
    double totalInRiel = 0;

    if (currencyChoice == 1) {
      totalInRiel = total;
    } else if (currencyChoice == 2) {
      totalInRiel = total * exchangeRate;
    } else {
      print("Invalid currency choice. Program will use Riel.");
      totalInRiel = total;
      currencyChoice = 1;
    }

    double tax = 0;

    if (totalInRiel <= 1500000) {
      tax = 0;
    } else if (totalInRiel <= 2000000) {
      tax = (totalInRiel * 0.05) - 75000;
    } else if (totalInRiel <= 8500000) {
      tax = (totalInRiel * 0.10) - 175000;
    } else if (totalInRiel <= 12500000) {
      tax = (totalInRiel * 0.15) - 600000;
    } else {
      tax = (totalInRiel * 0.20) - 1225000;
    }

    double netTotalInRiel = totalInRiel - tax;

    print("\n----- Employee Salary Result -----");
    print("Employee ID   : $empId");
    print("Employee Name : $empName");
    print("Hours         : $hours");

    if (currencyChoice == 1) {
      print("Rate/Hour     : ${ratePerHour.toStringAsFixed(2)} Riel");
      print("Total Salary  : ${totalInRiel.toStringAsFixed(2)} Riel");
      print("Tax           : ${tax.toStringAsFixed(2)} Riel");
      print("Net Total     : ${netTotalInRiel.toStringAsFixed(2)} Riel");
    } else {
      double taxInDollar = tax / exchangeRate;
      double netTotalInDollar = netTotalInRiel / exchangeRate;

      print("Rate/Hour     : \$${ratePerHour.toStringAsFixed(2)}");
      print("Total Salary  : \$${total.toStringAsFixed(2)}");
      print("Total in Riel : ${totalInRiel.toStringAsFixed(2)} Riel");
      print("Tax           : ${tax.toStringAsFixed(2)} Riel");
      print("Tax in Dollar : \$${taxInDollar.toStringAsFixed(2)}");
      print("Net Total     : ${netTotalInRiel.toStringAsFixed(2)} Riel");
      print("Net in Dollar : \$${netTotalInDollar.toStringAsFixed(2)}");
    }
  }

  print("\n===== Program Finished =====");
}