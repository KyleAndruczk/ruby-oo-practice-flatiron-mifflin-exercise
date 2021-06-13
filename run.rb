require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
m1 = Manager.new("Bob", "Accounting", 27)
m2 = Manager.new("Kate", "IT", 30)

e1 = Employee.new("Jake", 1000, "Kate")
e2 = Employee.new("Jessica", 2000, "Bob")
e3 = Employee.new("John", 3000, "Kate")
e4 = Employee.new("James", 4000, "Bob")

m1.hire_employee("Jerome", 5000)

binding.pry
puts "done"
