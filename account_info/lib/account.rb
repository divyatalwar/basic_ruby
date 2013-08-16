class Account
  @@account_no = 0
  def initialize(name, balance = 1000)
    @name = name
    @@account_no += 1
    @current_account_number = @@account_no
    @balance = balance
  end
  def deposit(amount)
    @balance += amount
    print "deposited ", amount ," in account no. ", @current_account_number, "\n"
  end
  def withdraw(amount)
    if amount <= @balance
      @balance -= amount
      print "withdrawn ", amount , " from account no. ", @current_account_number, "\n"
    else
      print "You cannot withdraw . Your account balance is insufficient.\n"
    end
  end
  def inspect
    " #@name with account number #@current_account_number has  balance #@balance"
  end
end
