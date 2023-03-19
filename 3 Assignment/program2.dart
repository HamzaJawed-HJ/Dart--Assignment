// Create a BankAccount class with balance and accountNumber properties,
// and methods called deposit() and withdraw() that modify the balance property.
// Then create a CheckingAccount class that inherits from BankAccount and has a transactionLimit property.
// Override the withdraw() method in the CheckingAccount class to check
// if the withdrawal amount is within the transaction limit before modifying the balance property.

class BankAccount {
  late String accountNo;
  late double balance;

  BankAccount(this.accountNo, this.balance);

  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print("Deposit Amount : $amount \nTotal balance:$balance");
    } else {
      throw Exception("Amont Cant be Negative OR Zero");
    }
  }

  void withdraw(double amount) {
    if (amount > 0) {
      balance -= amount;
    } else {
      throw Exception("Amont Cant be Negative OR Zero");
    }
  }
}

class CheckingAccount extends BankAccount {
  final double transactionLimit = 40000;
  CheckingAccount(
    String accountNo,
    double balance,
  ) : super(accountNo, balance);

  @override
  void withdraw(double amount) {
    if (amount > 0) {
      if (transactionLimit >= amount) {
        if (balance > amount) {
          balance -= amount;
          print("Amount withdrawal: $amount \nRemaning balance:$balance ");
        } else {
          throw Exception("Insufficient balance");
        }
      } else {
        throw Exception("you Cannot Exceed limit");
      }
    } else {
      throw Exception("Amont Cant be Negative OR Zero");
    }
  }
}

void main() {
  CheckingAccount account = new CheckingAccount("ME20986431", 200000);
  account.deposit(10000);
  print("\n");
  account.withdraw(40000);
}
