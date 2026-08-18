def calculate_grade(marks)
    case marks
    when 85..100 then "A"
    when 60..84 then "B"
    when 35..59 then "C"
    else "F"
    end
end

def calculate_average(students)
    avg = students.sum { |student| student[:marks]} / students.length.to_f
    puts "Average Marks: #{avg.round(2)}"
end

def find_top_student(students)
    top = students.max_by { |student| student[:marks] }
    puts "Name: #{top[:name]}"
    puts "Age: #{top[:age]}"
    puts "College: #{top[:college]}"
    puts "Marks: #{top[:marks]}"
end

def passed_students(students)
    for student in students
        if student[:marks] >= 35
            puts "Name: #{student[:name]}"
            puts "Marks: #{student[:marks]}"
            puts "-------------"
        end
    end
end

def failed_students(students)
    for student in students
        if student[:marks] < 35
            puts "Name: #{student[:name]}"
            puts "Marks: #{student[:marks]}"
            puts "-------------"
        end
    end
end

students = [
    {name: "Praveen", age: 22, college: "Srinivas University", course: "Computer Science", marks: 86},
    {name: "Aarav", age: 23, college: "East West College", course: "Computer Science", marks: 75},
    {name: "Ananya", age: 21, college: "Ramaiya University", course: "Computer Science", marks: 90},
    {name: "Rohan", age: 24, college: "Sridevi College", course: "Computer Science", marks: 29},
    {name: "Aditya", age: 22, college: "MVJ College", course: "Computer Science", marks: 80},
    {name: "Dhruv", age: 23, college: "JMS University", course: "Computer Science", marks: 70},
    {name: "Priya", age: 21, college: "JSS College", course: "Computer Science", marks: 94},
    {name: "Kavya", age: 21, college: "Tontadarya College", course: "Computer Science", marks: 79},
    {name: "Rahul", age: 21, college: "IEM Institute", course: "Computer Science", marks: 82},
    {name: "Diya", age: 21, college: "SDM College", course: "Computer Science", marks: 95}
]

i=1
puts("\n")
puts("-------Student Details-------")
puts("\n")
for student in students
    puts "Student #{i}:"
    puts "-----------------------------"
    puts "Name: #{student[:name]}"
    puts "Age: #{student[:age]}"
    puts "College: #{student[:college]}"
    puts "Course: #{student[:course]}"
    puts "Marks: #{student[:marks]}"
    puts "Grade: #{calculate_grade(student[:marks])}"
    puts "-----------------------------"
    i += 1
end

puts("\n\n")
puts("-------Topper Details-------")
puts("\n")

find_top_student(students)
puts "-----------------------------"

puts("\n")
puts("-------Average Score-------")
calculate_average(students)
puts "-----------------------------"

puts("\n")
puts("-------Passed Students-------")
passed_students(students)

puts("\n")
puts("-------Failed Students-------")
failed_students(students)
