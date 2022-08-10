class Employee
    attr_reader :employees, :name, :salary
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

    def add_sub #subordinate
        @boss.employees << self
    end
end

