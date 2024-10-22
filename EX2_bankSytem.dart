class BankAccount {
  final int accountId;
  final String accountOwner;
  double _balance;

  BankAccount(this.accountId, this.accountOwner, [this._balance = 0.0]);

  double get balance => _balance;

  void withdraw(double amount) {
    if (amount > _balance) {
      print('Insufficient funds');
      return;
    }
    _balance -= amount;
  }

  void deposit(double amount) {
    _balance += amount;
  }
}

class Bank {
  final List<BankAccount> _accounts = []; // for store bankacc in bank

  void createAccount(int accountId, String accountOwner) {
    if (_accounts.any((account) => account.accountId == accountId)) {
      print('Account ID already exists');
      return;
    }
    final newAccount = BankAccount(accountId, accountOwner);
    _accounts.add(newAccount);
  }

  BankAccount? getAccount(int accountId) {
    for (var account in _accounts) {
      if (account.accountId == accountId) {
        return account;
      }
    }
    print('Account not found');
    return null;
  }
}

void main() {
  final bank = Bank();

  // create 1st account
  bank.createAccount(1234, 'Oppi');
  var account1 = bank.getAccount(1234);
  account1?.deposit(100.0);
  account1?.withdraw(50.0);
  print('Account 1 balance: ${account1?.balance}');

  // 2nd account
  bank.createAccount(5678, 'Donut');
  var account2 = bank.getAccount(5678);
  account2?.deposit(450.0);
  print('Account 2 balance: ${account2?.balance}');

  bank.createAccount(1234, 'Harada Miki');
}
