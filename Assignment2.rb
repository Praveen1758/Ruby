#Assignment -> 2
#Student Marks Details


def calculate_grade(marks)
    if marks >= 85
        "A"
    elsif marks >=60
        "B"
    elsif marks >=35
        "C"
    else
        "F"
    end
end

puts("Enter Your Name: ")
name=gets.chomp()
puts()

age=nil
loop do 
    puts("Enter Your Age")
    age_input = gets.chomp.to_i
    if age_input < 0
        puts("Enter a Valid Age.Age cant be Negative")
    elsif age_input > 100
        puts("Enter a Valid Age.Age cant be Greater than 100")
    else
        age = age_input
        break
    end
end
puts()

puts("Enter Your College: ")
college=gets.chomp()
puts()

puts("Enter Your Course: ")
course=gets.chomp()
puts()

marks=nil
loop do
    puts "Enter Your Marks"
    marks_input = gets.chomp.to_i
    if marks_input < 0
        puts("Enter a Valid Marks. Marks cant be Negative")
    elsif marks_input > 100
        puts("Enter a Valid Marks. Marks cant be Greater than 100")
    else
        marks = marks_input
        break
    end
end
puts()

grade = calculate_grade(marks)

puts("--------------- Marks Card ---------------")
puts("Name: #{name}")
puts("Age: #{age}")
puts("College: #{college}")
puts("Course: #{course}")
puts("Marks: #{marks}")
puts "Grade: #{grade}"


puts()
puts("-----------------Result ------------------")
puts()
if marks.to_i >= 35
    puts("Result: Congratulations! You are Pass!\nYour Grade is #{grade}")
else
    puts("Result: Try again! You are Fail!\nYour Grade is #{grade}")
end

puts()
puts("-----------------------------------------------------")
puts "Thank you for using the Student Marks Details program!"
puts("-----------------------------------------------------")
puts()
