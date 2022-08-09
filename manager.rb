class Manager < Employee

    def initialize(name,title,salary,boss)
        super(name,title,salary,boss)
        @employees = []
    end

    def bonus(multipler)
        @employees.inject(0) { |sum ,employee| sum.salary + employee.salary }
    end

end