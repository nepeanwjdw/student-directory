def input_students
  months = ["january",
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
  puts "Please enter the name of the student"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chomp
  puts "Please enter the student's cohort"
  cohort = gets.chomp.downcase
  if months.include?(cohort)
    cohort = cohort.to_s
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
    puts "Please enter the student's hobbies"
    hobbies = gets.chomp.to_s
    puts "Please enter the student's height"
    height = gets.chomp
  end
  students
end

def print_header
  puts "The students of Villains Academy\n-------------"
end

def print(students)
  i = 0
  while i < students.count do
    puts "#{students[i][:name]} | #{students[i][:cohort]} cohort | Hobbies: #{students[i][:hobbies]} | Height: #{students[i][:height]}".center(80, "-")
    i += 1
  end
end

def print_footer(names)
  puts "Overall we have #{names.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)