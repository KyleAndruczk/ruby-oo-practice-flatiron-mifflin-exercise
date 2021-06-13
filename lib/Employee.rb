class Employee
    attr_reader :name, :salary, :manager_name

    @@all = []

    def initialize(name, salary, manager_name)
        @name = name
        @salary = salary
        @manager_name = manager_name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.paid_over(pay_amount)

        self.all.select { |emp| emp.salary > pay_amount }

    end

    def self.find_by_department(dep)
        manager_in_dep = Manager.all.find { |manager| manager.department == dep } 

        self.all.find { |emp| emp.manager_name == manager_in_dep.name}
    end

    def tax_bracket

        Employee.all.select{ |emp| (emp.salary >= (self.salary - 1000) && emp.salary <= (self.salary + 1000) && emp != self)}

    end



end
