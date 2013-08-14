require_relative "../lib/account_info"
account1 = Account.new("Divya", 2000);
account1.deposit(500);
account1.withdraw(250);
puts account1.inspect
account2 = Account.new("abc");
account2.deposit(500);
puts account2.inspect
