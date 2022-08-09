class Employee
    
    def initialize(name, title, salary, boss)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
    end

    def bonus(multiplier)
        bonus = (@salary) * multiplier
    end

end


ned = Employee.new("Ned", "Founder", 1000000, nil)
darren = Employee.new("Darren", "TA Manager", 78000, "Ned")
shawna = Employee.new("Shawna", "TA", 12000, "Darren")
david = Employee.new("David", "TA", 10000, "Darren")

p david.bonus(3)
p darren.bonus(4)