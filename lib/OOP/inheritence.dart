class BankAccount {

  int _accountnumber;
  int _balance;

  BankAccount(this._accountnumber, this._balance);

  int get balance => _balance;

  void deposit(int amount) {
    if (amount > 0) {
      _balance = _balance + amount;
      print('New deposit: $amount, New balance: $_balance');
    }
  }
  
  void withdraw(int amount) {
    if (amount > 0 && amount <= _balance) {
      _balance = _balance - amount;
      print('New withdraw: $amount, New balance: $_balance');
    }
  }
}


class SavingAccount extends BankAccount {
  double _interestRate;

  SavingAccount(int accountnumber, int balance, this._interestRate)
    : super(accountnumber, balance);

  void calculateInterest() {
    double interest = balance * _interestRate / 100;
    _balance += interest.toInt();
    print('Interest: $interest, New balance: $_balance');
  }
}


void main() {
  SavingAccount account = SavingAccount(12345, 1000, 5.0);
  print('Initial balance: ${account.balance}');

  account.deposit(500);
  account.withdraw(200);
  account.calculateInterest();
}
