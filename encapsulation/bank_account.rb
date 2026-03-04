class BankAccount
  attr_reader :owner, :balance

  def initialize(owner, initial_balance)
    @owner = owner
    @balance = initial_balance
  end

  def deposit(amount)
    return puts "Invalid amount" if amount <= 0

    @balance += amount
  end

  def withdraw(amount)
    return puts "Invalid amount" if amount <= 0
    return puts "Insufficient balance" if amount > @balance

    @balance -= amount
  end
end
