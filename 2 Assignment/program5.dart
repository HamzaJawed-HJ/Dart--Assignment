//Create a class named “Bank” with a list of BankAccount objects as a property.
// Add a method to add a new bank account to the list,
// and another method to remove a bank account from the list.
// Also, add a method to find the bank account with the highest balance.

import 'dart:io';

class Bank {
  late String _bankName;
  late String _bankCode;
  late double _balance;

  Bank(String bankName, String bankCode, double balance) {
    setBankName(bankName);
    setBankCode(bankCode);
    setBalance(balance);
  }

  Bank.fromBank();

  void setBankName(String bankName) {
    this._bankName = bankName;
  }

  void setBankCode(String bankCode) {
    this._bankCode = bankCode;
  }

  void setBalance(double balance) {
    this._balance = balance;
  }

  String getBankName() {
    return _bankName;
  }

  String getBankCode() {
    return _bankCode;
  }

  double getBalance() {
    return _balance;
  }
}

void addBanks(List list) {
  bool flag = true;
  while (flag) {
    print("Enter Bank Name: ");
    String bankName = stdin.readLineSync() as String;

    String bankCode = bankName.substring(0, 2) +
        "01" +
        bankName.substring(bankName.length - 1);

    print("Enter Balance: ");
    double balance = double.parse(stdin.readLineSync() as String);
    Bank b1 = new Bank(bankName, bankCode, balance);
    list.add(b1);

    print("Do You want to Add more bank \n1-) YES  0-)NO");
    int choice = int.parse(stdin.readLineSync() as String);
    if (choice != 1) {
      flag = false;
    }
  }
}

void removeBank(List<Bank> list) {
  if (list.isNotEmpty) {
    //here diplay list detail
    for (int i = 0; i < list.length; i++) {
      print(
          "\nBank Name: ${list[i].getBankName()}\nBank Code: ${list[i].getBankCode()}\nBalance: ${list[i].getBalance()}\n");
    }

    print("Enter Bank Code: ");
    String code = stdin.readLineSync() as String;

    for (int i = 0; i < list.length; i++) {
      if (code == list[i].getBankCode()) {
        list.remove(list[i]);
        print("\nDELETED SUCESSFULLY!!!!!!!!!1\n\n");
      }
    }
  } else {
    print("List Empty!!!!!!\n\n");
  }
}

void searchBank(List<Bank> list) {
  if (list.isNotEmpty) {
    double maxBalance = 0;
    String bankName = "";
    String bankCode = "";
    for (int i = 0; i < list.length; i++) {
      if (maxBalance < list[i].getBalance()) {
        maxBalance = list[i].getBalance();
        bankName = list[i].getBankName();
        bankCode = list[i].getBankCode();
      }
    }
    print(
        "\nBank Name: $bankName\nBank Code: $bankCode\nBalance: $maxBalance\n");
  } else {
    print("List Empty!!!!!!\n\n");
  }
}

void main() {
  int choice1;
  List<Bank> list = [];
  do {
    print("1-)ADD BANK\n2-)Delete Bank\n3-)search Bank\n4-)Exit");
    print("\nEnter choice: ");
    int choice = int.parse(stdin.readLineSync() as String);
    choice1 = choice;

    switch (choice) {
      case 1:
        addBanks(list);
        break;
      case 2:
        removeBank(list);
        break;
      case 3:
        searchBank(list);
        break;
    }
  } while (choice1 <= 3);
}
