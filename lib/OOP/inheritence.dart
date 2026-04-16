class BankAccount {
  int _accountnumber;
  int _balance;

  BankAccount(this._accountnumber, this._balance);

  int get accountnumber => _accountnumber;
  int get balance => _balance;

  void deposit(int amount) {
    if (amount > 0) {
      _balance = _balance + amount;
      print('New deposit: $amount, New balance: $balance');
    } else {
      print("Insufficient balance");
    }
  }

  void withdraw(int amount) {
    if (amount > 0 && amount <= balance) {
      _balance = _balance - amount;
      print('New withdraw: $amount, New balance: $balance');
    } else {
      print("Insufficient balance");
    }
  }

  void updateBalance(int amount) {
    _balance += amount;
  }
}

class SavingAccount extends BankAccount {
  double _interestRate;

  SavingAccount(int accountnumber, int balance, this._interestRate)
    : super(accountnumber, balance);

  void calculateInterest() {
    double interest = balance * _interestRate / 100;
    deposit(interest.toInt());
    print('Interest: $interest, New balance: $_balance');
  }
}

class CurrentAccount extends BankAccount {
  int overdraftLimit;

  CurrentAccount(int accNo, int balance, this.overdraftLimit)
    : super(accNo, balance);

  @override
  void withdraw(int amount) {
    if (amount <= balance) {
      super.withdraw(amount);
    } else if (amount <= balance + overdraftLimit) {
      double extraUsed = (amount - balance).toDouble();
      print('using overdraft: $extraUsed');

      _balance -= amount;
      print("Withdrawn with overdraft | New Balance: $balance");
    } else {
      print("Overdraft limit reached ");
    }
  }
}

void main() {
  print('\n=== Saving account ===');
  SavingAccount account = SavingAccount(17263987, 1000, 5.0);

  account.deposit(500);
  account.withdraw(300);
  account.calculateInterest();

  print("\n=== Current Account ===");
  CurrentAccount current = CurrentAccount(202, 1000, 5000);

  current.deposit(1000);
  current.withdraw(2500);
  current.withdraw(6000);

  // current.checkBalance();
}
