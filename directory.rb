class Directory
  attr_reader :students
  
  def initialize
    @students = []
  end
  
  def print_header
    puts "The students of Villains Academy".center(50)
    puts "-------------".center(50)
  end
  
  def print_footer
    puts "-------------".center(50)
    puts "Overall, we have #{students.length} great students".center(50)
  end
  
  def print_students
    if students.length > 0
      students.each_with_index do |student, index|
        puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort) | Age: #{student[:age]}, #{student[:place]}".center(50)
      end
    end
  end
  
  def input_students
    puts "Enter a students credentials; once finished, hit return"
    
    loop do
      puts "Please enter the name of a new student:"
      name = gets.chomp
      break if name.empty?
      
      puts "Please enter their cohort:"
      cohort = gets.chomp
      
      puts "Their place of birth:"
      place = gets.chomp
      
      puts "Their age:"
      age = gets.chomp
      
      assign_values(name, cohort, place, age)
      
      if students.length <= 1
        puts "We now have #{students.length} student"
      else
        puts "Now we have #{students.length} students"  
      end
    end
  end
  
  def assign_values(name, cohort, place, age)
    cohort = "April"    if cohort.empty?
    place = "La Mancha" if place.empty?
    age = "48"          if age.empty?
    
    students << { name: name, cohort: cohort.intern, place: place, age: age }
  end
  
  def interactive_menu
    loop do
      print_menu
      process(gets.chomp)
    end
  end
  
  def print_menu
    puts "1. Input new students"
    puts "2. Show our current students"
    puts "9. Exit"
  end
  
  def process(selection)
    case selection
    when "1"
      input_students
    when "2"
      show_students
    when "9"
      exit
    else
      puts "I don't know what you meant, try again"
    end
  end
  
  def show_students
    print_header
    print_students
    print_footer
  end
end

students = Directory.new
students.interactive_menu
