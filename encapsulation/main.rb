require_relative 'bank_account'

puts "Create your user: "
puts "Account name: "
account_name = gets.chomp.to_s

puts "Enter your initial balance: "
account_balance = gets.chomp.to_i

account = BankAccount.new(account_name, account_balance)

while true
  puts "Choose the operation"
  puts "[1] - Deposit"
  puts "[2] - Withdraw"
  puts "[3] - Show balance"
  puts "[0] - Exit"
  choice = gets.chomp.to_i

  if choice == 1
    puts "Amount: "
    deposit_amount = gets.chomp.to_f
    account.deposit(deposit_amount)
  
  elsif choice == 2
    puts "Amount: "
    withdraw_amount = gets.chomp.to_f
    account.withdraw(withdraw_amount)

  elsif choice == 3
    puts account.balance.round(2)

  elsif choice == 0
    break
  end
end
