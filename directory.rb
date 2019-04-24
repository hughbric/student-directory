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
    puts "Overall, we have #{students.length} great students"
  end
  
  def print_students
    if students.length > 0
      students.each_with_index do |student, index|
        print "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
        puts " | Age: #{student[:age]}, #{student[:place]}"
      end
    end
  end
  
  def input_students
    puts "Once finished, hit return twice"
    
    loop do
      puts "Please enter the name of a new student:"
      name = gets.chomp
      break if name.empty?
      
      puts "Please enter their cohort:"
      cohort = gets.chomp
      cohort = "April" if cohort.empty?
      
      puts "Their place of birth:"
      place = gets.chomp
      
      puts "Their age:"
      age = gets.chomp
      
      students << { name: name, cohort: cohort.to_s, place: place, age: age }

      if students.length <= 1
        puts "We now have #{students.length} student"
      else
        puts "Now we have #{students.length} students"
      end
    end
  end
end

students = Directory.new

students.input_students
students.print_header
students.print_students
students.print_footer
