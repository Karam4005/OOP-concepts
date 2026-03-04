class Employee
  attr_reader :name, :salary

  def initialize(name, salary)
    @name = name
    @salary = salary
  end

  def annual_salary
    @salary * 12
  end

  def give_raise(percent)
    @salary += @salary * percent / 100.0
  end
end

class Manager < Employee
  attr_reader :bonus

  def initialize(name, salary, bonus)
    super(name, salary)
    @bonus = bonus
  end

  def annual_salary
    super + @bonus
  end
end
