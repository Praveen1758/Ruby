#Assignment -> 1
#Student Marks Details

puts("Enter Your Name: ")
name=gets.chomp()
puts()
puts("Enter Your Age: ")
age=gets.chomp()
puts()
puts("Enter Your College: ")
college=gets.chomp()
puts()
puts("Enter Your Course: ")
course=gets.chomp()
puts()
puts("Enter Your Marks: ")
marks=gets.chomp()
puts()

puts("--------------- Marks Card ---------------")
puts("Name: #{name}")
puts("Age: #{age}")
puts("College: #{college}")
puts("Course: #{course}")
puts("Marks: #{marks}")

puts()
puts("-----------------Result ------------------")
puts()
if marks.to_i >= 35
    puts("Result: Congo You are Pass!")
else
    puts("Result: Try again You are Fail!")
end

if marks.to_i >= 85
    puts("Your Grade is A")
elsif marks.to_i >= 60
    puts("Your Grade is B")
elsif marks.to_i >= 35
    puts("Your Grade is C")
else
    puts("Your Grade is F")
end
puts()