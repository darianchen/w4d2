require "byebug"
require_relative "employee"
class Manager < Employee
    attr_reader :employees, :name, :salary

    def initialize(name,title,salary,boss)
        super
        @employees = []
        
    end

    def bonus(multipler)
        sum = 0
        queue = [self]
        until queue.empty?
            current = queue.pop
            if !current.employees.nil?
                current.employees.each do |employee|
                    sum += employee.salary
                    queue.unshift(employee)
                end
            end
        end
        sum *= multipler
    end

end

ned = Manager.new("Ned", "Founder", 1000000, nil)
darren = Manager.new("Darren", "TA Manager", 78000, ned)
shawna = Employee.new("Shawna", "TA", 12000, darren)
david = Employee.new("David", "TA", 10000, darren)



p ned.bonus(5)
p darren.bonus(4)
p david.bonus(3)


