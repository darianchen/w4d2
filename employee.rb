
class Employee
    attr_reader :employees, :name
    def initialize(name, title, salary, boss)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
        add_sub if !boss.nil?
    end

    def bonus(multiplier)
        bonus = (@salary) * multiplier
    end

    def add_sub
        @boss.employees << self
    end



end

