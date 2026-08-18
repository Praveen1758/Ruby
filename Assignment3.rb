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
    puts "-----------------------------"
    i += 1
end

puts()
puts()
puts("-------Topper Details-------")
puts("\n")

topper = students.max_by { |student| student[:marks] }
puts "Name: #{topper[:name]}"
puts "Marks: #{topper[:marks]}"
puts()
puts "-----------------------------"

puts()
puts("-------Average Score-------")
puts()
average = students.sum { |student| student[:marks] } / students.length.to_f
puts "Average Marks: #{average.round(2)}"
puts()
puts "-----------------------------"

puts
puts("-------Passed Students-------")
for student in students
    if student[:marks] >= 35
        puts "Name: #{student[:name]}"
        puts "Marks: #{student[:marks]}"
        puts "-------------"
    end
end

puts
puts("-------Failed Students-------")
for student in students
    if student[:marks] < 35
        puts "Name: #{student[:name]}"
        puts "Marks: #{student[:marks]}"
        puts "------------------------------"
    end
end
