require_relative "employee"
class Manager < Employee
    attr_reader :employees, :name

    def initialize(name,title,salary,boss)
        super
        @employees = []
        add_sub if !boss.nil?
    end

    def bonus(multipler)
        #@employees.inject(0) { |sum ,employee| sum.salary + employee.salary }
    end

end

ned = Manager.new("Ned", "Founder", 1000000, nil)
darren = Manager.new("Darren", "TA Manager", 78000, ned)
shawna = Employee.new("Shawna", "TA", 12000, darren)
david = Employee.new("David", "TA", 10000, darren)



# p ned.bonus(5)
# p darren.bonus(4)
# p david.bonus(3)


