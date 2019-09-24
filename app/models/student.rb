class Student

    attr_accessor :first_name

    @@all = []

    def initialize(first_name)
        @first_name = first_name
        @@all << self 
    end
    
    def self.all 
        @@all 
    end

    def add_boating_test(test_name, test_status, instructor)
        BoatingTest.new(self, test_name, test_status, instructor)
    end

    def self.find_student(name)
        self.all.find do |student|
            student.first_name == name 
        end 
    end

    def grade_percentage
        studentTests= BoatingTest.all.find_all{|test| test.student.first_name == self.first_name}
        totalTests= studentTests.length.to_f
        totalPassed= studentTests.find_all{|test| test.test_status == "Passed"}
        numPassed= totalPassed.length.to_f
        percent= (numPassed/totalTests)*100
      end




end