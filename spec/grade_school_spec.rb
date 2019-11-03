require_relative '../lib/grade_school'

describe School do
    it "test empty grade" do
        school=School.new
        expected=[]
        expect(expected).to eq school.students(1)
    end

    it "test add student" do
        school = School.new
        school.add('Aimee', 2)
        expected = ['Aimee']
        expect(expected).to eq school.students(2)
    end

    it "test add students to different grade" do
        school = School.new
        school.add('Aimee', 3)
        school.add('Beemee', 7)
        expect(['Aimee']).to eq school.students(3)
        expect(['Beemee']).to eq school.students(7)
    end

    it "test grade with multiple students" do
        school = School.new
        grade    = 6
        students = %w(Aimee Beemee Ceemee)
        students.each { |student| school.add(student, grade) }
        expect(students).to eq school.students(grade)
    end

    it "test grade with multiple students sorts correctly" do
        school = School.new
        grade    = 6
        students = %w(Beemee Aimee Ceemee)
        students.each { |student| school.add(student, grade) }
        expected = students.sort
        expect(expected).to eq school.students(grade)
    end

    it "test empty students by grade" do
        school = School.new
        expected = []
        expect(expected).to eq school.students_by_grade
    end

    it "test students by grade" do
        school = School.new
        grade    = 6
        students = %w(Beemee Aimee Ceemee)
        students.each { |student| school.add(student, grade) }
        expected = [{ grade: grade, students: students.sort }]
        expect(expected).to eq school.students_by_grade
    end

    it "test grade with multiple students sorts correctly" do
        school = School.new
        everyone.each do |grade|
            grade[:students].each { |student| school.add(student, grade[:grade]) }
        end
        expected = everyone_sorted
        expect(expected).to eq school.students_by_grade
    end

    def everyone
        [
          { grade: 3, students: %w(Deemee Eeemee) },
          { grade: 1, students: %w(Effmee Geemee) },
          { grade: 2, students: %w(Aimee Beemee Ceemee) }
        ]
      end
    
      def everyone_sorted
        [
          { grade: 1, students: %w(Effmee Geemee) },
          { grade: 2, students: %w(Aimee Beemee Ceemee) },
          { grade: 3, students: %w(Deemee Eeemee) }
        ]
      end
end