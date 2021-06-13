class Manager

    attr_reader :name, :department, :age

    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end

    def hire_employee(emp_name, emp_salary)
        Employee.new(emp_name, emp_salary, self.name)
    end

    def self.all_departments
        self.all.map{ |manager| manager.department}.uniq
    end

    def self.average_age 
        ages = self.all.map { |manager| manager.age}

        ages.sum(0.0) / ages.size
    end

    


end
