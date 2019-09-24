require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
s1 = Student.new("Sean")
s2 = Student.new("Jon")
s3 = Student.new("Spongebob")
s4 = Student.new("Pat")
s5 = Student.new("Squid")

i1 = Instructor.new("Mr. Krabs")
i2 = Instructor.new("Sandy")
i3 = Instructor.new("Plankton")
i4 = Instructor.new("Max")
i5 = Instructor.new("Mikey")

bt1 = BoatingTest.new(s1, "Test 1", "Passed", i2)
bt2 = BoatingTest.new(s2, "Test 2", "Passed", i1)
bt3 = BoatingTest.new(s3, "Test 3", "Passed", i2)
bt4 = BoatingTest.new(s4, "Test 4", "Passed", i3)
bt5 = BoatingTest.new(s5, "Test 5", "Passed", i4)
bt6 = BoatingTest.new(s4, "Test 6", "Passed", i5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
