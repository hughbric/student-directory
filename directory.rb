class Directory
  attr_reader :students
  
  def initialize
    @students = []
  end
  
  def print_header
    puts "The students of Villains Academy"
    puts "-------------"
  end
  
  def print_footer
    puts "Overall, we have #{students.count} great students"
  end
  
  def print
    students.each_with_index { |student, index| 
    puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
    }
  end
  
  def input_students
    puts "Please enter the names of the students"
    puts "To finish, hit return twice"
    

    name = gets.chomp
    
    while !name.empty? do
  
      students << {name: name, cohort: :april}
      puts "Now we have #{students.count} students"
  
      name = gets.chomp
    end
  
    students
  end
end

students = Directory.new

students.input_students
students.print_header
students.print
students.print_footer
