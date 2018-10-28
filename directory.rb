@months = ["january",
    "february",
    "march",
    "april",
    "may",
    "june",
    "july",
    "august",
    "september",
    "october",
    "november",
    "december"]

def interactive_menu
  students = []
  loop do
    # 1. print the menu and ask the user what to do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit" # 9 because we'll be adding more items
    # 2. read the input and save it into a variable
    selection = gets.chomp
    # 3. do what the user has asked
    case selection
    when "1"
      students = input_students
    when "2"
      print_header
      print(students)
      print_footer(students)
    when "9"
      exit # this will cause the program to terminate
    else
      puts "I don't know what you meant, try again"
    end
  end
end

def input_students
  puts "Please enter the name of the student"
  puts "To finish, just hit return twice"
  students = []
  s = ""
  name = gets.chomp
  puts "Please enter the student's cohort"
  cohort = gets.chomp.downcase
  if @months.include?(cohort)
    cohort = cohort.to_sym
  else
    cohort = :november
  end
  puts "Please enter the student's hobbies"
  hobbies = gets.chomp
  puts "Please enter the student's height"
  height = gets.chomp
  while !name.empty? do
    students << {name: name, cohort: cohort, hobbies: hobbies, height: height}
    puts "Now we have #{students.count} student" + s
    s = "s"
    puts "Please enter the name of the student"
    name = gets.chomp
    if name.empty?
      break
    end
    puts "Please enter the student's cohort"
    cohort = gets.chomp.downcase
    if @months.include?(cohort)
      cohort = cohort.to_sym
    else
      cohort = :november
    end
    puts "Please enter the student's hobbies"
    hobbies = gets.chomp
    puts "Please enter the student's height"
    height = gets.chomp
  end
  students
end

def print_header
  puts "The students of Villains Academy\n-------------"
end

def print(students)
  @months.each do |month|
    students.each do |student|
      if student[:cohort].to_s == month
        puts "#{student[:cohort].capitalize} cohort: #{student[:name]} | Hobbies: #{student[:hobbies]} | Height: #{student[:height]}"
      end
    end
  end
end

def print_footer(names)
  puts "Overall we have #{names.count} great students"
end

interactive_menu
#students = input_students
#if students.empty?
#  puts "There are no students!"
#else
#  print_header
#  print(students)
#  print_footer(students)
#end