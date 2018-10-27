def input_students
  puts "Please enter the name of the student"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chomp
  puts "Please enter the student's hobbies"
  hobby = gets.chomp
  puts "Please enter the student's height"
  hght = gets.chomp
  while !name.empty? do
    students << {name: name, cohort: :november, hobbies: hobby, height: hght}
    puts "Now we have #{students.count} students"
    puts "Please enter the name of the student"
    name = gets.chomp
    if name.empty?
      break
    end
    puts "Please enter the student's hobbies"
    hobby = gets.chomp
    puts "Please enter the student's height"
    hght = gets.chomp
  end
  students
end

def print_header
  puts "The students of Villains Academy\n-------------"
end

def print(students)
  i = 0
  while i < students.count do
    puts "#{students[i][:name]} | #{students[i][:cohort]} cohort | Hobbies: #{students[i][:hobbies]} | Height: #{students[i][:height]}"
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