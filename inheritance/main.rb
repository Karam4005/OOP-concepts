require_relative 'employees'

employees = [
  Employee.new("Neno", 5000),
  Manager.new("Pedro", 10000, 20000)
]

employees.each do |emp|
  puts emp.annual_salary
end
