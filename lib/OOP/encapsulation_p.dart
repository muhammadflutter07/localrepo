class Bankaccount {
  int _balance = 0;

  Bankaccount(this._balance);

  int get balance => _balance;

  void set balance(int value) {
    if (value < 0) {
      print('invalid amount: rejected');
    } else {
      _balance = value;
      print('balance updated: $_balance');
    }
  }

  void deposit(int amount) {
    if (amount > 0) {
      _balance += amount;
      print('deposited: $amount, new balance: $_balance');
    } else {
      print('error!: Deposit amount must be greather than 0');
    }
  }

  void withdraw(int amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print('withdrawn: $amount, new balance: $_balance');
    } else {
      print('error!: Invalid Withdraw ');
    }
  }
}

void main() {
  Bankaccount account = Bankaccount(1000);
  print('initial balance: ${account.balance}');

  account.balance = 76282;
  account.balance = -67;
  print('final balance: ${account.balance}');

  account.deposit(675);
  account.deposit(826);

  account.withdraw(77783);
}
