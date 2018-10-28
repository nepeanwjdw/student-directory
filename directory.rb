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

def input_students
  puts "Please enter the name of the student"
  puts "To finish, just hit return twice"
  students = []
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
    puts "Now we have #{students.count} students"
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

students = input_students
print_header
print(students)
print_footer(students)