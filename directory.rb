
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each_with_index { |student, index| 
  puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
  }
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, hit return twice"
  
  students = []
  name = gets.chomp
  
  while !name.empty? do

    students << {name: name, cohort: :april}
    puts "Now we have #{students.count} students"

    name = gets.chomp
  end

  students
end

students = input_students

print_header
print(students)
print_footer(students)
