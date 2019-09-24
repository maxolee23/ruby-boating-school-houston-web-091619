class Instructor

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def pass_student(student, test_name)
        testtopass= BoatingTest.all.find{|test| test.student.first_name == student.first_name && test.name == test_name}
        if testtopass
          testtopass.status= "Passed"
        else
          BoatingTest.new(student, test_name, "Passed", self)
        end
      end

      def fail_student(student, test_name)
        testtofail = BoatingTest.all.find{|test| test.student.first_name == student.first_name && test.name == test_name}
        if testtofail
          testtofail.status= "Failed"
        else
          BoatingTest.new(student, test_name, "Failed", self)
        end
      end




end
