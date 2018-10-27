def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repear this code
  while !name.empty? do
    # add the students hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  students
end

def print_header
  puts "The students of Villains Academy\n-------------"
end

def print(students)
  i = 0
  while i < students.count do
    puts "#{students[i][:name]} (#{students[i][:cohort]} cohort)"
    i += 1
  end
end

def print_footer(names)
  puts "Overall we have #{names.count} great students"
end

# nothing happens until we call the method
students = input_students
print_header
print(students)
print_footer(students)